.class public abstract Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final defaultTextColor:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->defaultTextColor:Ljava/util/HashMap;

    return-void
.end method

.method public static applyButtonPartnerResources(Landroid/content/Context;Landroid/widget/Button;ZZLcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;)V
    .locals 11

    sget-object v0, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->defaultTextColor:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/widget/Button;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v0, 0x437f0000    # 255.0f

    iget-object v1, p4, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonTextColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez p2, :cond_4

    invoke-virtual {p1}, Landroid/widget/Button;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v4

    invoke-virtual {v4, p0, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    iget-object v4, p4, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonDisableTextColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-static {p0, p1, v4}, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->updateButtonTextDisabledColorWithPartnerConfig(Landroid/content/Context;Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V

    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v4

    iget-object v5, p4, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonBackgroundConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v4, p0, v5}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result v4

    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v5

    iget-object v6, p4, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonDisableAlphaConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v5, p0, v6}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getFraction(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result v5

    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v6

    iget-object v7, p4, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonDisableBackgroundConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v6, p0, v7}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result v6

    const v7, -0x101009e

    filled-new-array {v7}, [I

    move-result-object v7

    new-array v8, v2, [I

    if-eqz v4, :cond_4

    cmpg-float v9, v5, v3

    if-gtz v9, :cond_2

    const v5, 0x1010033

    filled-new-array {v5}, [I

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v5

    const v9, 0x3e851eb8    # 0.26f

    invoke-virtual {v5, v2, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    move v5, v9

    :cond_2
    if-nez v6, :cond_3

    move v6, v4

    :cond_3
    new-instance v9, Landroid/content/res/ColorStateList;

    filled-new-array {v7, v8}, [[I

    move-result-object v7

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v8

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v10

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v5, v8, v10, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    filled-new-array {v5, v4}, [I

    move-result-object v4

    invoke-direct {v9, v7, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-array v5, v2, [I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p1}, Landroid/widget/Button;->refreshDrawableState()V

    invoke-virtual {p1, v9}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p1}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    goto :goto_1

    :cond_5
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object p2

    invoke-virtual {p2, p0, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result p2

    :goto_1
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    iget-object v4, p4, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonRippleColorAlphaConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v1, p0, v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getFraction(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v5, v4, Landroid/graphics/drawable/InsetDrawable;

    const/4 v6, 0x0

    if-eqz v5, :cond_6

    check-cast v4, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/RippleDrawable;

    goto :goto_2

    :cond_6
    instance-of v5, v4, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v5, :cond_7

    check-cast v4, Landroid/graphics/drawable/RippleDrawable;

    goto :goto_2

    :cond_7
    move-object v4, v6

    :goto_2
    if-nez v4, :cond_8

    goto :goto_3

    :cond_8
    const v5, 0x10100a7

    filled-new-array {v5}, [I

    move-result-object v5

    const v7, 0x101009c

    filled-new-array {v7}, [I

    move-result-object v7

    mul-float/2addr v1, v0

    float-to-int v0, v1

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v8

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    invoke-static {v0, v1, v8, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    new-instance v0, Landroid/content/res/ColorStateList;

    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    filled-new-array {v5, v7, v1}, [[I

    move-result-object v1

    filled-new-array {p2, p2, v2}, [I

    move-result-object p2

    invoke-direct {v0, v1, p2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :goto_3
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    iget-object v1, p4, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonMarginStartConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v0

    if-eqz v0, :cond_9

    instance-of v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_9

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    move-result v0

    float-to-int v0, v0

    iget v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p2, v0, v1, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_9
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object p2

    iget-object v0, p4, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonTextSizeConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {p2, p0, v0, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    move-result p2

    cmpl-float v0, p2, v3

    if-lez v0, :cond_a

    invoke-virtual {p1, v2, p2}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_a
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object p2

    iget-object v0, p4, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonMinHeightConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {p2, v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object p2

    invoke-virtual {p2, p0, v0, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    move-result p2

    cmpl-float v0, p2, v3

    if-lez v0, :cond_b

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setMinHeight(I)V

    :cond_b
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object p2

    iget-object v0, p4, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonTextTypeFaceConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {p2, p0, v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getString(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    iget-object v1, p4, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonTextStyleConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getInteger(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;I)I

    move-result v0

    goto :goto_4

    :cond_c
    move v0, v2

    :goto_4
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isFontWeightEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    iget-object v4, p4, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonTextWeightConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v1, v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    const/16 v5, 0x190

    invoke-virtual {v1, p0, v4, v5}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getInteger(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;I)I

    move-result v1

    invoke-static {p2, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-static {p2, v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p2

    goto :goto_5

    :cond_d
    invoke-static {p2, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    :goto_5
    if-eqz p2, :cond_e

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_e
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object p2

    iget-object v0, p4, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonRadiusConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {p2, p0, v0, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    move-result p2

    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v1, :cond_f

    check-cast v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_6

    :cond_f
    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_11

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_10

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_6

    :cond_10
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_6

    :cond_11
    move-object v0, v6

    :goto_6
    if-eqz v0, :cond_12

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_12
    iget-object p2, p4, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonIconConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    if-eqz p2, :cond_13

    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object p4

    invoke-virtual {p4, p0, p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDrawable(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_7

    :cond_13
    move-object p0, v6

    :goto_7
    if-eqz p0, :cond_14

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    invoke-virtual {p0, v2, v2, p4, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_14
    if-eqz p3, :cond_15

    move-object p2, p0

    move-object p0, v6

    goto :goto_8

    :cond_15
    move-object p2, v6

    :goto_8
    invoke-virtual {p1, p0, v6, p2, v6}, Landroid/widget/Button;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static updateButtonTextDisabledColorWithPartnerConfig(Landroid/content/Context;Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V
    .locals 1

    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->defaultTextColor:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/widget/Button;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/widget/Button;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "There is no saved default color for button"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
