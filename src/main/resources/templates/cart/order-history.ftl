<#include "../parts/main-template.ftl">
<@main "Order history"/>

<#macro content>

    <div>
        <#list carts as cart>
            <h4>Order #${carts?size - cart?index}</h4>
            <div>
                <#list cart.items as item>
                    <div><strong>${item.product.description}</strong></div>
                    <div>Material: ${item.product.materialName}</div>
                    <div>Paper quality: ${item.product.paperQuality}</div>
                    <#if item.product.orientation??>
                        <div>Orientation: ${item.product.orientation}</div>
                    </#if>
                    <div>Height: ${item.product.height}</div>
                    <div>Width: ${item.product.width}</div>
                    <div>Price: ${item.product.totalPrice}</div>
                    <div><img src="${item.product.image!}" alt="no image :("></div>
                    <div>Product count in cart: ${item.productCount}</div>
                    <br>
                </#list>
            </div>
            <div><strong>Total items: ${cart.totalItemsCount}</strong></div>
            <div><strong>Total price: ${cart.totalPrice}</strong></div>
        </#list>
    </div>

</#macro>