package com.dlh.clpgx.modules.sys.repository;
import org.springframework.data.repository.PagingAndSortingRepository;
import com.dlh.clpgx.modules.sys.entity.Company;
public interface CompanyDao extends PagingAndSortingRepository<Company, Long> {

}
