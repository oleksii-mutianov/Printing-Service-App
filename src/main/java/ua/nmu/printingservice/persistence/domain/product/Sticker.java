package ua.nmu.printingservice.persistence.domain.product;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;
import ua.nmu.printingservice.persistence.domain.material.StickerMaterial;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToOne;

import static ua.nmu.printingservice.persistence.domain.enums.ProductType.Constants.STICKER_VALUE;

@Entity
@Data
@EqualsAndHashCode(callSuper = true)
@ToString(callSuper = true)
@DiscriminatorValue(STICKER_VALUE)
public class Sticker extends AbstractProduct {

    @ManyToOne(fetch = FetchType.LAZY)
    private StickerMaterial material;

}
