.class public Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;
.super Ljava/lang/Object;
.source "FooterButtonStyleUtils.java"


# static fields
.field private static final defaultTextColor:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->defaultTextColor:Ljava/util/HashMap;

    return-void
.end method

.method static applyButtonPartnerResources(Landroid/content/Context;Landroid/widget/Button;ZZLcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;)V
    .locals 3

    .line 125
    invoke-static {p1}, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->saveButtonDefaultTextColor(Landroid/widget/Button;)V

    if-nez p2, :cond_1

    .line 131
    invoke-virtual {p1}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p4}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->getButtonTextColorConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v0

    .line 132
    invoke-static {p0, p1, v0}, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->updateButtonTextEnabledColorWithPartnerConfig(Landroid/content/Context;Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p4}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->getButtonDisableTextColorConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v0

    .line 135
    invoke-static {p0, p1, v0}, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->updateButtonTextDisabledColorWithPartnerConfig(Landroid/content/Context;Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V

    .line 141
    :goto_0
    invoke-virtual {p4}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->getButtonBackgroundConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v0

    .line 142
    invoke-virtual {p4}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->getButtonDisableAlphaConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v1

    .line 143
    invoke-virtual {p4}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->getButtonDisableBackgroundConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v2

    .line 138
    invoke-static {p0, p1, v0, v1, v2}, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->updateButtonBackgroundWithPartnerConfig(Landroid/content/Context;Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V

    .line 149
    :cond_1
    invoke-virtual {p4}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->getButtonTextColorConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v0

    .line 150
    invoke-virtual {p4}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->getButtonRippleColorAlphaConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v1

    .line 145
    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->updateButtonRippleColorWithPartnerConfig(Landroid/content/Context;Landroid/widget/Button;ZLcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V

    .line 152
    invoke-virtual {p4}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->getButtonMarginStartConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object p2

    .line 151
    invoke-static {p0, p1, p2}, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->updateButtonMarginStartWithPartnerConfig(Landroid/content/Context;Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V

    .line 154
    invoke-virtual {p4}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->getButtonTextSizeConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object p2

    .line 153
    invoke-static {p0, p1, p2}, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->updateButtonTextSizeWithPartnerConfig(Landroid/content/Context;Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V

    .line 156
    invoke-virtual {p4}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->getButtonMinHeightConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object p2

    .line 155
    invoke-static {p0, p1, p2}, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->updateButtonMinHeightWithPartnerConfig(Landroid/content/Context;Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V

    .line 160
    invoke-virtual {p4}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->getButtonTextTypeFaceConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object p2

    .line 161
    invoke-virtual {p4}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->getButtonTextStyleConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v0

    .line 157
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->updateButtonTypeFaceWithPartnerConfig(Landroid/content/Context;Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V

    .line 163
    invoke-virtual {p4}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->getButtonRadiusConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object p2

    .line 162
    invoke-static {p0, p1, p2}, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->updateButtonRadiusWithPartnerConfig(Landroid/content/Context;Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V

    .line 165
    invoke-virtual {p4}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->getButtonIconConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object p2

    .line 164
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->updateButtonIconWithPartnerConfig(Landroid/content/Context;Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Z)V

    return-void
.end method

.method public static applyPrimaryButtonPartnerResource(Landroid/content/Context;Landroid/widget/Button;Z)V
    .locals 2

    .line 55
    new-instance v0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;-><init>(Lcom/google/android/setupcompat/template/FooterButton;)V

    sget v1, Lcom/google/android/setupcompat/R$style;->SucPartnerCustomizationButton_Primary:I

    .line 57
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setPartnerTheme(I)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_PRIMARY_BUTTON_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 58
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonBackgroundConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_DISABLED_ALPHA:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 59
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonDisableAlphaConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_DISABLED_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 60
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonDisableBackgroundConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_PRIMARY_BUTTON_DISABLED_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 61
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonDisableTextColorConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_RADIUS:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 63
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonRadiusConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_RIPPLE_COLOR_ALPHA:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 64
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonRippleColorAlphaConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_PRIMARY_BUTTON_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 65
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setTextColorConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_PRIMARY_BUTTON_MARGIN_START:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 66
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setMarginStartConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_TEXT_SIZE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 67
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setTextSizeConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_MIN_HEIGHT:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 68
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonMinHeight(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_FONT_FAMILY:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 69
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setTextTypeFaceConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_TEXT_STYLE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 70
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setTextStyleConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->build()Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;

    move-result-object v0

    const/4 v1, 0x1

    .line 72
    invoke-static {p0, p1, p2, v1, v0}, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->applyButtonPartnerResources(Landroid/content/Context;Landroid/widget/Button;ZZLcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;)V

    return-void
.end method

.method static clearSavedDefaultTextColor()V
    .locals 1

    .line 428
    sget-object v0, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->defaultTextColor:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private static convertRgbToArgb(IF)I
    .locals 2

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 469
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p1, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private static getButtonDefaultTextCorlor(Landroid/widget/Button;)Landroid/content/res/ColorStateList;
    .locals 2

    .line 421
    sget-object v0, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->defaultTextColor:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/widget/Button;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 424
    invoke-virtual {p0}, Landroid/widget/Button;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/ColorStateList;

    return-object p0

    .line 422
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "There is no saved default color for button"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getGradientDrawable(Landroid/widget/Button;)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    .line 437
    invoke-virtual {p0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 438
    instance-of v0, p0, Landroid/graphics/drawable/InsetDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 439
    check-cast p0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    .line 440
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    return-object p0

    .line 441
    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_2

    .line 442
    check-cast p0, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    .line 443
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    return-object p0

    .line 445
    :cond_1
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/InsetDrawable;

    .line 446
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method static getRippleDrawable(Landroid/widget/Button;)Landroid/graphics/drawable/RippleDrawable;
    .locals 1

    .line 457
    invoke-virtual {p0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 458
    instance-of v0, p0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_0

    .line 459
    check-cast p0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/RippleDrawable;

    return-object p0

    .line 460
    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_1

    .line 461
    check-cast p0, Landroid/graphics/drawable/RippleDrawable;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static saveButtonDefaultTextColor(Landroid/widget/Button;)V
    .locals 2

    .line 417
    sget-object v0, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->defaultTextColor:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/widget/Button;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static setButtonIcon(Landroid/widget/Button;Landroid/graphics/drawable/Drawable;Z)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 393
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 394
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    const/4 v2, 0x0

    .line 395
    invoke-virtual {p1, v2, v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    move-object p2, p1

    move-object p1, v0

    goto :goto_0

    :cond_2
    move-object p2, v0

    .line 406
    :goto_0
    invoke-virtual {p0, p1, v0, p2, v0}, Landroid/widget/Button;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static updateButtonBackground(Landroid/widget/Button;I)V
    .locals 1

    .line 413
    invoke-virtual {p0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method static updateButtonBackgroundTintList(Landroid/content/Context;Landroid/widget/Button;IFI)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, -0x101009e

    const/4 v3, 0x0

    aput v2, v1, v3

    new-array v2, v3, [I

    if-eqz p2, :cond_2

    const/4 v4, 0x0

    cmpg-float v4, p3, v4

    if-gtz v4, :cond_0

    new-array p3, v0, [I

    const v4, 0x1010033

    aput v4, p3, v3

    .line 236
    invoke-virtual {p0, p3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const p3, 0x3e851eb8    # 0.26f

    .line 237
    invoke-virtual {p0, v3, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    .line 238
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    if-nez p4, :cond_1

    move p4, p2

    .line 247
    :cond_1
    new-instance p0, Landroid/content/res/ColorStateList;

    const/4 v4, 0x2

    new-array v5, v4, [[I

    aput-object v1, v5, v3

    aput-object v2, v5, v0

    new-array v1, v4, [I

    .line 250
    invoke-static {p4, p3}, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->convertRgbToArgb(IF)I

    move-result p3

    aput p3, v1, v3

    aput p2, v1, v0

    invoke-direct {p0, v5, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 258
    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    new-array p3, v3, [I

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 259
    invoke-virtual {p1}, Landroid/widget/Button;->refreshDrawableState()V

    .line 260
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    return-void
.end method

.method static updateButtonBackgroundWithPartnerConfig(Landroid/content/Context;Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    const/4 v0, 0x1

    const-string v1, "Update button background only support on sdk Q or higher"

    .line 209
    invoke-static {v0, v1}, Lcom/google/android/setupcompat/internal/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 213
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result p2

    .line 215
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p3, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getFraction(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    move-result p3

    .line 218
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result p4

    .line 220
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->updateButtonBackgroundTintList(Landroid/content/Context;Landroid/widget/Button;IFI)V

    return-void
.end method

.method static updateButtonIconWithPartnerConfig(Landroid/content/Context;Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 381
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDrawable(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 383
    :cond_1
    invoke-static {p1, v0, p3}, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->setButtonIcon(Landroid/widget/Button;Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method static updateButtonMarginStartWithPartnerConfig(Landroid/content/Context;Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V
    .locals 2

    .line 314
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 316
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 318
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 320
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result p0

    float-to-int p0, p0

    .line 321
    iget p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p1, p0, p2, v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_0
    return-void
.end method

.method static updateButtonMinHeightWithPartnerConfig(Landroid/content/Context;Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V
    .locals 1

    .line 335
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result p0

    const/4 p2, 0x0

    cmpl-float p2, p0, p2

    if-lez p2, :cond_0

    float-to-int p0, p0

    .line 338
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setMinHeight(I)V

    :cond_0
    return-void
.end method

.method static updateButtonRadiusWithPartnerConfig(Landroid/content/Context;Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V
    .locals 1

    .line 366
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result p0

    .line 367
    invoke-static {p1}, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->getGradientDrawable(Landroid/widget/Button;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 369
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_0
    return-void
.end method

.method private static updateButtonRippleColor(Landroid/widget/Button;IF)V
    .locals 6

    .line 294
    invoke-static {p0}, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->getRippleDrawable(Landroid/widget/Button;)Landroid/graphics/drawable/RippleDrawable;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a7

    const/4 v3, 0x0

    aput v2, v1, v3

    new-array v2, v0, [I

    const v4, 0x101009c

    aput v4, v2, v3

    .line 301
    invoke-static {p1, p2}, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->convertRgbToArgb(IF)I

    move-result p1

    .line 304
    new-instance p2, Landroid/content/res/ColorStateList;

    const/4 v4, 0x3

    new-array v5, v4, [[I

    aput-object v1, v5, v3

    aput-object v2, v5, v0

    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    const/4 v2, 0x2

    aput-object v1, v5, v2

    new-array v1, v4, [I

    aput p1, v1, v3

    aput p1, v1, v0

    aput v3, v1, v2

    invoke-direct {p2, v5, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 308
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method static updateButtonRippleColorWithPartnerConfig(Landroid/content/Context;Landroid/widget/Button;ZLcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    if-eqz p2, :cond_0

    .line 276
    invoke-virtual {p1}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    goto :goto_0

    .line 280
    :cond_0
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object p2

    invoke-virtual {p2, p0, p3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result p2

    .line 283
    :goto_0
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object p3

    invoke-virtual {p3, p0, p4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getFraction(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result p0

    .line 284
    invoke-static {p1, p2, p0}, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->updateButtonRippleColor(Landroid/widget/Button;IF)V

    return-void
.end method

.method static updateButtonTextDisableDefaultColor(Landroid/widget/Button;Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 199
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method static updateButtonTextDisabledColor(Landroid/widget/Button;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 194
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method static updateButtonTextDisabledColorWithPartnerConfig(Landroid/content/Context;Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V
    .locals 1

    .line 183
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result p0

    .line 186
    invoke-static {p1, p0}, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->updateButtonTextDisabledColor(Landroid/widget/Button;I)V

    goto :goto_0

    .line 188
    :cond_0
    invoke-static {p1}, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->getButtonDefaultTextCorlor(Landroid/widget/Button;)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->updateButtonTextDisableDefaultColor(Landroid/widget/Button;Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method

.method static updateButtonTextEnabledColor(Landroid/widget/Button;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 177
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method static updateButtonTextEnabledColorWithPartnerConfig(Landroid/content/Context;Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V
    .locals 1

    .line 171
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result p0

    .line 172
    invoke-static {p1, p0}, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->updateButtonTextEnabledColor(Landroid/widget/Button;I)V

    return-void
.end method

.method static updateButtonTextSizeWithPartnerConfig(Landroid/content/Context;Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V
    .locals 1

    .line 327
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result p0

    const/4 p2, 0x0

    cmpl-float p2, p0, p2

    if-lez p2, :cond_0

    const/4 p2, 0x0

    .line 329
    invoke-virtual {p1, p2, p0}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method static updateButtonTypeFaceWithPartnerConfig(Landroid/content/Context;Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V
    .locals 2

    .line 349
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getString(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Ljava/lang/String;

    move-result-object p2

    .line 352
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 354
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    .line 355
    invoke-virtual {v0, p0, p3, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getInteger(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;I)I

    move-result v1

    .line 357
    :cond_0
    invoke-static {p2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 359
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    return-void
.end method
