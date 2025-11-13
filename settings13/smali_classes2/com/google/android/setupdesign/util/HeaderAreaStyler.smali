.class public final Lcom/google/android/setupdesign/util/HeaderAreaStyler;
.super Ljava/lang/Object;
.source "HeaderAreaStyler.java"


# static fields
.field static final WARN_TO_USE_DRAWABLE:Ljava/lang/String; = "To achieve scaling icon in SetupDesign lib, should use vector drawable icon from "


# direct methods
.method public static applyPartnerCustomizationDescriptionHeavyStyle(Landroid/widget/TextView;)V
    .locals 10

    if-nez p0, :cond_0

    return-void

    .line 90
    :cond_0
    new-instance v9, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_DESCRIPTION_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_DESCRIPTION_LINK_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_DESCRIPTION_TEXT_SIZE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v4, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_DESCRIPTION_FONT_FAMILY:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v5, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_DESCRIPTION_LINK_FONT_FAMILY:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v6, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_DESCRIPTION_TEXT_MARGIN_TOP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v7, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_DESCRIPTION_TEXT_MARGIN_BOTTOM:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 100
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->getLayoutGravity(Landroid/content/Context;)I

    move-result v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;-><init>(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;I)V

    .line 90
    invoke-static {p0, v9}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler;->applyPartnerCustomizationStyle(Landroid/widget/TextView;Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;)V

    return-void
.end method

.method public static applyPartnerCustomizationHeaderAreaStyle(Landroid/view/ViewGroup;)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    .line 116
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 118
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_HEADER_AREA_BACKGROUND_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 119
    invoke-virtual {v1, v0, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result v1

    .line 120
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 122
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_HEADER_CONTAINER_MARGIN_BOTTOM:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 123
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 125
    instance-of v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_1

    .line 126
    move-object v3, v1

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 130
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v4

    .line 131
    invoke-virtual {v4, v0, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result v0

    float-to-int v0, v0

    .line 132
    iget v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v3, v2, v4, v5, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 133
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public static applyPartnerCustomizationHeaderStyle(Landroid/widget/TextView;)V
    .locals 10

    if-nez p0, :cond_0

    return-void

    .line 66
    :cond_0
    new-instance v9, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_HEADER_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_HEADER_TEXT_SIZE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v4, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_HEADER_FONT_FAMILY:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    const/4 v5, 0x0

    sget-object v6, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_HEADER_TEXT_MARGIN_TOP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v7, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_HEADER_TEXT_MARGIN_BOTTOM:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 76
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->getLayoutGravity(Landroid/content/Context;)I

    move-result v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;-><init>(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;I)V

    .line 66
    invoke-static {p0, v9}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler;->applyPartnerCustomizationStyle(Landroid/widget/TextView;Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;)V

    return-void
.end method

.method public static applyPartnerCustomizationIconStyle(Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V
    .locals 5

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 191
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 193
    invoke-static {v0}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->getLayoutGravity(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    invoke-static {p0, v2}, Lcom/google/android/setupdesign/util/HeaderAreaStyler;->setGravity(Landroid/widget/ImageView;I)V

    .line 198
    :cond_1
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v2

    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_ICON_SIZE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 199
    invoke-static {p0}, Lcom/google/android/setupdesign/util/HeaderAreaStyler;->checkImageType(Landroid/widget/ImageView;)V

    .line 201
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 205
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v4

    .line 206
    invoke-virtual {v4, v0, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x2

    .line 208
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 209
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 211
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 212
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    if-le v3, p0, :cond_2

    .line 214
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v3, Lcom/google/android/setupdesign/R$dimen;->sud_horizontal_icon_height:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    .line 215
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-le v3, p0, :cond_2

    sub-int v1, v3, p0

    .line 217
    iput p0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 222
    :cond_2
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 224
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object p1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_ICON_MARGIN_TOP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 225
    invoke-virtual {p1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 226
    instance-of p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_3

    .line 227
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 230
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object p1

    .line 231
    invoke-virtual {p1, v0, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result p1

    float-to-int p1, p1

    add-int/2addr p1, v1

    .line 233
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static applyPartnerCustomizationProgressBarStyle(Landroid/widget/ProgressBar;)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    .line 142
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 143
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 145
    instance-of v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_4

    .line 146
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 147
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 148
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v2

    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_PROGRESS_BAR_MARGIN_TOP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 149
    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    .line 156
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/google/android/setupdesign/R$dimen;->sud_progress_bar_margin_top:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 153
    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    move-result v1

    float-to-int v1, v1

    .line 158
    :cond_1
    iget v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 159
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v3

    sget-object v4, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_PROGRESS_BAR_MARGIN_BOTTOM:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 160
    invoke-virtual {v3, v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 163
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v2

    .line 168
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/google/android/setupdesign/R$dimen;->sud_progress_bar_margin_bottom:I

    .line 169
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 164
    invoke-virtual {v2, v0, v4, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    move-result v0

    float-to-int v2, v0

    .line 172
    :cond_2
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v1, v0, :cond_3

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v2, v0, :cond_4

    .line 173
    :cond_3
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p0, v0, v1, v3, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_4
    return-void
.end method

.method private static checkImageType(Landroid/widget/ImageView;)V
    .locals 2

    .line 238
    invoke-virtual {p0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 239
    new-instance v1, Lcom/google/android/setupdesign/util/HeaderAreaStyler$1;

    invoke-direct {v1, p0}, Lcom/google/android/setupdesign/util/HeaderAreaStyler$1;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private static setGravity(Landroid/widget/ImageView;I)V
    .locals 1

    .line 259
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 261
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 262
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
