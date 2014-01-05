
package com.dlh.clpgx.modules.manager.repository;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springside.modules.persistence.DcoreJpaRepository;

import com.dlh.clpgx.modules.manager.entity.GasTank;
public interface GasTankDao extends PagingAndSortingRepository<GasTank, java.lang.Long> {

}
