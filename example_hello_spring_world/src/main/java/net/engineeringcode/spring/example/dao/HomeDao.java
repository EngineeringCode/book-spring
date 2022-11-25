package net.engineeringcode.spring.example.dao;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Mapper;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

public interface HomeDao {
	public List<HashMap> getData(HashMap searchMap);
	public int addData(HashMap dataMap);
}
