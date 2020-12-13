package com.gitee.weiyuanstudio.news.util;

import com.gitee.weiyuanstudio.news.domain.bo.JwtUser;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;

import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Component
public class JwtTokenUtils {

    //角色的key
    public static final String ROLE_CLAIMS = "rol";

    //rememberMe 为 false 的时候过期时间是1个小时
    public static final long EXPIRATION = 60 * 60L;
    //rememberMe 为 true 的时候过期时间是7天
    public static final long EXPIRATION_REMEMBER = 60 * 60 * 24 * 7L;


    //JWT签名密钥硬编码到应用程序代码中，应该存放在环境变量或.properties文件中。
    public static final String SECRET_KEY = "secretKey";

    // JWT token defaults
    public static final String TOKEN_HEADER = "Authorization";
    public static final String TOKEN_PREFIX = "Bearer ";
    public static final String TOKEN_TYPE = "JWT";

    public static String createToken(String username, List<String> roles, boolean isRememberMe) {
        long expiration = isRememberMe ? EXPIRATION_REMEMBER : EXPIRATION;
        final Date createdDate = new Date();
        final Date expirationDate = genExpirationDate(isRememberMe);
        String tokenPrefix = Jwts.builder()
                .setHeaderParam("type", TOKEN_TYPE)
                .signWith(SignatureAlgorithm.HS512, SECRET_KEY)
                .claim(ROLE_CLAIMS, String.join(",", roles))
                .setSubject(username)
                .setIssuedAt(createdDate)
                .setExpiration(expirationDate)
                .compact();
        return TOKEN_PREFIX + tokenPrefix; // 添加 token 前缀 "Bearer ";
    }

    public static String createToken(Map<String, Object> claims, boolean isRememberMe) {
        return Jwts.builder()
                .setClaims(claims)
                .setExpiration(genExpirationDate(isRememberMe))
                .signWith(SignatureAlgorithm.HS512, SECRET_KEY)
                .compact();
    }

    public static Date genExpirationDate(boolean isRememberMe){
        long expiration = isRememberMe ? EXPIRATION_REMEMBER : EXPIRATION;
        final Date createdDate = new Date();
        return new Date(createdDate.getTime() + expiration * 1000);
    }

    public static String getUsername(String token) {
        Claims claims = getClaims(token);
        return claims.getSubject();
    }

    public static Date getExpirationDate(String token) {
        Date expiration;
        final Claims claims = getClaims(token);
        expiration = claims.getExpiration();
        return expiration;
    }

    private static Boolean isTokenExpired(String token) {
        final Date expiration = getExpirationDate(token);
        return expiration.before(new Date());
    }

    public static Boolean validateToken(String token, UserDetails userDetails) {
        JwtUser user = (JwtUser) userDetails;
        final String username = getUsername(token);
        return (username.equals(user.getUsername()) && !isTokenExpired(token));
    }

    public static Boolean canTokenBeRefreshed(String token, Date lastPasswordReset) {
        return true;
    }

    public static String refreshToken(String token) {
        String refreshedToken;
        final Claims claims = getClaims(token);
        refreshedToken = createToken(claims, false);
        return refreshedToken;
    }

    public static UsernamePasswordAuthenticationToken getAuthentication(String token) {
        Claims claims = getClaims(token);
        List<SimpleGrantedAuthority> authorities = getAuthorities(claims);
        String userName = claims.getSubject();
        return new UsernamePasswordAuthenticationToken(userName, token, authorities);
    }

    private static List<SimpleGrantedAuthority> getAuthorities(Claims claims) {
        String role = (String) claims.get(ROLE_CLAIMS);
        return Arrays.stream(role.split(","))
                .map(SimpleGrantedAuthority::new)
                .collect(Collectors.toList());
    }

    private static Claims getClaims(String token) {
        return Jwts.parser()
                .setSigningKey(SECRET_KEY)
                .parseClaimsJws(token)
                .getBody();
    }

}
