package by.pvt.pojo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.persistence.*;
import java.io.Serializable;
import java.util.logging.Logger;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
@SequenceGenerator(name = "catalog_item_seq")
public class ProductCatalogItem implements Serializable {

    @Transient
    private static Logger log = Logger.getLogger("ProductCatalogItem");

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "catalog_item_seq")
    private Long id;

    @Column
    private String itemName;

    @Column
    private Double price;

    @Column
    @Lob
    private byte[] productImage;
}
