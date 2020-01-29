package by.pvt.service;

import by.pvt.pojo.ProductCatalogItem;
import by.pvt.repository.ProductCatalogRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class ProductCatalogService {

    @Autowired
    ProductCatalogRepository productCatalogRepository;

    @Transactional
    public List<ProductCatalogItem> getFirstTopTenProducts() {
        return productCatalogRepository.findAll(10);
    }

    @Transactional
    public ProductCatalogItem findItem(Long id) {
        return productCatalogRepository.findItemById(id);
    }

    @Transactional
    public List<ProductCatalogItem> searchByProductName(String str) {
        return productCatalogRepository.findByProductName(str, 5);
    }

    @Transactional
    public boolean addItem(ProductCatalogItem item) {
        if (item.getPrice() == null || item.getPrice() <= 0 ||
                item.getItemName() == null || item.getItemName().isEmpty()) {
            return false;
        }
        /*if (item.getId() == null) {
            item.setId(generateProductItemId());
        }*/
        return productCatalogRepository.add(item);
    }

    /*private Long generateProductItemId() {
        Long maxId = productCatalogRepository.getMaxId();
        return ++maxId;
    }*/
}
