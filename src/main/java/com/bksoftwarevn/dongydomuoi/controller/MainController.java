package com.bksoftwarevn.dongydomuoi.controller;

import com.bksoftwarevn.dongydomuoi.json.RestBuilder;
import com.bksoftwarevn.dongydomuoi.json.UrlAlias;
import com.bksoftwarevn.dongydomuoi.service_impl.RestService;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@Controller
public class MainController {

    @Value("${urlCDN}")
    private String urlCDN;

    @Autowired
    private RestService restService;

    @GetMapping(value= {"/404"})
    public String page404() {return "404";}

    @GetMapping(value = {"/", "/trang-chu"})
    public String trangChu() {return "trang-chu";}

    @GetMapping(value = {"/tin-tuc"})
    public String tinTuc() {return "tin-tuc";}

    @GetMapping(value = {"/chi-tiet-tin-tuc"})
    public String chiTietTinTuc() {return "chi-tiet-tin-tuc";}

    @GetMapping(value = {"/cong-trinh"})
    public String congTrinh() {return "cong-trinh";}

    @GetMapping(value = {"/chi-tiet-cong-trinh"})
    public String chiTietCongTrinh() {return "chi-tiet-cong-trinh";}

    @GetMapping(value = {"/gioi-thieu"})
    public String gioiThieu() {return "gioi-thieu";}

    @GetMapping(value = {"/chi-tiet-gioi-thieu"})
    public String chiTietGioiThieu() {return "chi-tiet-gioi-thieu";}

    @GetMapping(value = {"/lien-he"})
    public String lienHe() {return "lien-he";}

    @GetMapping(value = {"/gio-hang"})
    public String gioHang() {return "gio-hang";}

    @GetMapping(value = {"/thanh-toan"})
    public String thanhToan() {return "thanh-toan";}

    @GetMapping(value = {"/san-pham"})
    public String sanPham() {return "san-pham";}

    @GetMapping(value = {"/danh-muc"})
    public String danhMuc() {return "danh-muc";}

    @GetMapping(value = {"/robots.txt"})
    private void robot(HttpServletResponse response) throws IOException {
        try {
            response.getWriter().println("# we use BKSoftwarevn as our ecommerce platform");
            response.getWriter().println();
            response.getWriter().println(restService.callGetFile("robot.txt"));
        } catch (Exception ex) {
            ex.printStackTrace();
            response.sendRedirect("404");
        }
    }

    @GetMapping(value = {"/sitemap*.xml"})
    private void sitemap(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            String fileName = request.getServletPath();
            if(fileName.indexOf("sitemap_page.xml") > -1) {
                response.sendRedirect("trang-chu");
            } else {
                response.setContentType("application/xml");
                response.getWriter().println(restService.callGetFile(fileName));
            }
        } catch (Exception ex) {
            response.sendRedirect("404");
        }
    }

    @GetMapping(value = {"/*"})
    public void aliasPage(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String servletPath = request.getServletPath();
        servletPath = servletPath.substring(1);
        String uriAlias = "404";
        ModelMapper modelMapper = new ModelMapper();
        try {
            Object o =  restService.callGet(RestBuilder.build()
                    .service("infor-system-service")
                    .uri("api/v1/public/url-alias/alias/"+servletPath+"/company-id/2"));
            if(o != null) {
                List<UrlAlias> urlAliasList = Arrays.asList(modelMapper.map(o, UrlAlias[].class));
                if(urlAliasList != null && urlAliasList.size() > 0) {
                    UrlAlias urlAlias = urlAliasList.get(0);
                    uriAlias = urlAlias.getUrl();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        RequestDispatcher requestDispatcher = request.getRequestDispatcher(uriAlias);
        requestDispatcher.forward(request, response);
    }
}
