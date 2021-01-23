package com.gitee.weiyuanstudio.news.config;

import com.gitee.weiyuanstudio.news.service.UserDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.annotation.web.configurers.ExpressionUrlAuthorizationConfigurer;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.CorsFilter;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

    @Bean
    @Override
    protected AuthenticationManager authenticationManager() throws Exception {
        return super.authenticationManager();
    }


    @Bean
    public PasswordEncoder passwordEncoder(){
        return new BCryptPasswordEncoder(10);
    }

    @Bean
    public JwtAuthenticationTokenFilter authenticationTokenFilter(){
        return new JwtAuthenticationTokenFilter();
    }

    @Autowired
    private UserDetailsService userDetailsService;

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.csrf().disable()
                .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS).and()

                .authorizeRequests()
                .antMatchers("/api/admin/**").hasRole("ADMIN")
                .antMatchers("/api/user/**").hasRole("USER")
                .antMatchers("/api/register").permitAll()
                .antMatchers("/api/login").permitAll()
                .antMatchers("/api/refresh").permitAll()
                .antMatchers("/api/public/**").permitAll().anyRequest().authenticated();

        http.addFilterBefore(authenticationTokenFilter(), UsernamePasswordAuthenticationFilter.class);
        http.headers().cacheControl();
    }
    @Bean
    public CorsFilter corsFilter(){
        UrlBasedCorsConfigurationSource configurationSource = new UrlBasedCorsConfigurationSource();
        CorsConfiguration cors = new CorsConfiguration();
        cors.setAllowCredentials(true);
        cors.addAllowedOrigin("*");
        cors.addAllowedHeader("*");
        cors.addAllowedMethod("*");
        configurationSource.registerCorsConfiguration("/**", cors);
        return new CorsFilter(configurationSource);
    }
    //    @Override
//    protected void configure(HttpSecurity http) throws Exception {
//        http.authorizeRequests()
//                .antMatchers("/api/user/**").hasRole("USER")
//                .antMatchers("/api/admin/**").hasRole("ADMIN")
//                .antMatchers("/api/database/**").hasRole("DATABASE")
//                .antMatchers("/api/reviewer/**").hasRole("REVIEWER")
//                .antMatchers("/api/editor/**").hasRole("EDITOR")
//                .antMatchers("/api/public/**").permitAll().anyRequest().authenticated()
//                .and()
//                .csrf().disable()
//                .formLogin()
//                .loginProcessingUrl("/login")
//                .usernameParameter("name")
//                .passwordParameter("passwd")
//                .successHandler((httpServletRequest, httpServletResponse, authentication) -> {
//                    Object principal = authentication.getPrincipal();
//                    httpServletResponse.setContentType("application/json;charset=utf-8");
//                    PrintWriter out = httpServletResponse.getWriter();
//                    httpServletResponse.setStatus(200);
//                    Map<String,Object> map = new HashMap<>();
//                    map.put("status",200);
//                    map.put("msg",principal);
//                    ObjectMapper om = new ObjectMapper();
//                    out.write(om.writeValueAsString(map));
//                    out.flush();
//                    out.close();
//                })
//                .failureHandler((httpServletRequest, httpServletResponse, e) -> {
//                    httpServletResponse.setContentType("application/json;charset=utf-8");
//                    PrintWriter out = httpServletResponse.getWriter();
//                    httpServletResponse.setStatus(401);
//                    Map<String,Object> map = new HashMap<>();
//                    map.put("status",401);
//                    if (e instanceof LockedException){
//                        map.put("msg","账户锁定");
//                    } else if (e instanceof BadCredentialsException){
//                        map.put("msg","账户名或密码错误");
//                    } else if (e instanceof DisabledException){
//                        map.put("msg","账户禁用");
//                    } else if (e instanceof AccountExpiredException){
//                        map.put("msg","账户过期");
//                    } else if (e instanceof CredentialsExpiredException){
//                        map.put("msg","密码过期");
//                    } else {
//                        map.put("msg","登录失败原因未知");
//                    }
//                    ObjectMapper om = new ObjectMapper();
//                    out.write(om.writeValueAsString(map));
//                    out.flush();
//                    out.close();
//                }).permitAll()
//                .and()
//                .logout()
//                .logoutUrl("/logout")
//                .clearAuthentication(true)
//                .invalidateHttpSession(true)
//                .addLogoutHandler((request, response, authentication) -> {
//
//                }).logoutSuccessHandler((request, response, authentication) -> {
//                    response.sendRedirect("/login_page");
//                });
//    }
}
