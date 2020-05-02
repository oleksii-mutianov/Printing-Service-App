<#include "../parts/main-template.ftl">
<@main "Indoor posters"/>

<#macro content>

    <a href="add">Add poster</a>
    <div>
        <#list indoorPosters as poster>
            <div><strong>${poster.description}</strong></div>
            <div>Material: ${poster.materialName}</div>
            <div>Paper quality: ${poster.paperQuality}</div>
            <div>Orientation: ${poster.orientation}</div>
            <div>Height: ${poster.height}</div>
            <div>Width: ${poster.width}</div>
            <div>Price: ${poster.totalPrice}</div>
            <div><img src="${poster.image!}" alt="no image :("></div>
            <div><a href="update?id=${poster.id}">Edit</a></div>
            <br>
        </#list>
    </div>

</#macro>