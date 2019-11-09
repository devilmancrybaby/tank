package com.cherish.domain;

import java.util.Date;

/**
 * @author huangmingyang
 */
public class Education {
    private int id;
    private String school;
    private String enrollment_year;
    private String graduate_year;
    private String graduate;
    private String major;
    private Date gmt_create;
    private Date gmt_modified;

    public Education( String school, String enrollment_year, String graduate_year, String graduate, String major) {
        this.school = school;
        this.enrollment_year = enrollment_year;
        this.graduate_year = graduate_year;
        this.graduate = graduate;
        this.major = major;
    }

    public Education() {
    }

    @Override
    public String toString() {
        return "Education{" +
                "id=" + id +
                ", school='" + school + '\'' +
                ", enrollment_year='" + enrollment_year + '\'' +
                ", graduate_year='" + graduate_year + '\'' +
                ", graduate='" + graduate + '\'' +
                ", major='" + major + '\'' +
                ", gmt_create=" + gmt_create +
                ", gmt_modified=" + gmt_modified +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
    }

    public String getEnrollment_year() {
        return enrollment_year;
    }

    public void setEnrollment_year(String enrollment_year) {
        this.enrollment_year = enrollment_year;
    }

    public String getGraduate_year() {
        return graduate_year;
    }

    public void setGraduate_year(String graduate_year) {
        this.graduate_year = graduate_year;
    }

    public String getGraduate() {
        return graduate;
    }

    public void setGraduate(String graduate) {
        this.graduate = graduate;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public Date getGmt_create() {
        return gmt_create;
    }

    public void setGmt_create(Date gmt_create) {
        this.gmt_create = gmt_create;
    }

    public Date getGmt_modified() {
        return gmt_modified;
    }

    public void setGmt_modified(Date gmt_modified) {
        this.gmt_modified = gmt_modified;
    }
}