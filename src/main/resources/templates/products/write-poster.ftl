<#include "../parts/main-template.ftl">
<#import "/spring.ftl" as spring />
<#if productType = 'POSTER'>
    <@main "Poster"/>
<#else>
    <@main "Sticker"/>
</#if>

<#macro content>

    <!-- Breadcrumb Section Begin -->
    <div class="breacrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text product-more">
                        <a href="/home"><i class="fa fa-home"></i> Home</a>
                        <a href="/posters/list">Shop</a>
                        <span>Edit</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Section Begin -->

    <section class="checkout-section spad">
        <div class="container">
            <@spring.bind "productWriteDto" />
            <form method="post" class="checkout-form"
                    <#if productType = 'POSTER'>
                        action="/posters/write"
                    <#else>
                        action="/stickers/write"
                    </#if>
            >
                <@spring.formHiddenInput "productWriteDto.id"/>
                <div class="row">
                    <div class="col-lg-6">
                        <h4>
                            <#if productType = 'POSTER'>
                                Poster Details
                            <#else>
                                Sticker Details
                            </#if>
                        </h4>
                        <div class="row">
                            <div class="col-lg-12">
                                <label for="prod-name">Product title<span>*</span></label>
                                <@spring.formInput "productWriteDto.description" "id='prod-name'"/>
                            </div>
                            <div class="col-lg-12">
                                <label for="width">Width (cm)<span>*</span></label>
                                <@spring.formInput "productWriteDto.width" "id='width' min='1' step='any'" "number"/>
                            </div>
                            <div class="col-lg-12">
                                <label for="height">Height (cm)<span>*</span></label>
                                <@spring.formInput "productWriteDto.height" "id='height' min='1' step='any'" "number"/>
                            </div>
                            <div class="col-lg-12">
                                <label for="base-price">Base price ($)<span>*</span></label>
                                <@spring.formInput "productWriteDto.basePrice" "id='base-price' min='1' step='any'" "number"/>
                            </div>
                            <div class="col-lg-12">
                                <label for="material">Material<span>*</span></label>
                                <@spring.formSingleSelect "productWriteDto.materialId" materials "id='material'"/>
                            </div>
                            <div class="col-lg-12">
                                <label for="base-price">Image<span>*</span></label>
                                <div class="input-group mb-3">
                                    <div class="custom-file">
                                        <input type="file" class="custom-file-input" id="fileInput"
                                               aria-describedby="inputGroupFileAddon01" onchange="encode()">
                                        <label class="custom-file-label shadow-none" for="fileInput">Choose file</label>
                                    </div>
                                </div>
                            </div>
                            <div class="order-btn">
                                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                                <button type="submit" class="site-btn place-btn">Save</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <img src="${productWriteDto.image!}" id="image-holder" alt="">
                        <@spring.formHiddenInput "productWriteDto.image"/>
                    </div>
                </div>
            </form>
        </div>
    </section>

    <script src="/scripts/posterWriteScripts.js"></script>
</#macro>