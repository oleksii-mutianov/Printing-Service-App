package ua.nmu.printingservice.converter;

import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;
import ua.nmu.printingservice.dto.ProductReadDto;
import ua.nmu.printingservice.persistence.domain.product.Poster;

import static org.apache.commons.text.WordUtils.capitalizeFully;

@Component
public class PosterToDtoConverter implements Converter<Poster, ProductReadDto> {
    @Override
    public ProductReadDto convert(Poster poster) {
        var material = poster.getMaterial();
        return ProductReadDto.builder()
                .id(poster.getId())
                .description(poster.getDescription())
                .height(poster.getHeight())
                .width(poster.getWidth())
                .totalPrice(poster.getTotalPrice())
                .materialName(material.getTypeName())
                .paperQuality(capitalizeFully(material.getPaperQuality().name()))
                .image(poster.getImage())
                .build();
    }
}
