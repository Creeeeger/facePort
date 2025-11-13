.class public abstract Lcom/google/android/setupdesign/util/TextViewPartnerStyler;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static applyPartnerCustomizationStyle(Landroid/widget/TextView;Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;)V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textLinkedColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    if-eqz v2, :cond_2

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    :try_start_0
    sget-object v4, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->LOG:Lcom/google/android/setupcompat/util/Logger;

    invoke-static {v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->lookupActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->findLayoutFromActivity(Landroid/app/Activity;)Lcom/google/android/setupcompat/internal/TemplateLayout;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/setupdesign/GlifLayout;

    if-eqz v5, :cond_1

    check-cast v4, Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {v4}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->shouldApplyDynamicColor()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    const v4, 0x7f040617

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    move v3, v4

    :goto_0
    if-nez v3, :cond_2

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    :cond_2
    iget-object v2, p1, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textSizeConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    if-eqz v2, :cond_3

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v2, v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    move-result v2

    cmpl-float v3, v2, v4

    if-lez v3, :cond_3

    invoke-virtual {p0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_3
    iget-object v2, p1, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textFontFamilyConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    if-eqz v2, :cond_4

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getString(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isFontWeightEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p1, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textFontWeightConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    if-eqz v3, :cond_6

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v4

    const/16 v5, 0x190

    invoke-virtual {v4, v0, v3, v5}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getInteger(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;I)I

    move-result v3

    if-nez v2, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    :cond_5
    invoke-static {v2, v3, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v2

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_7
    instance-of v2, p0, Lcom/google/android/setupdesign/view/RichTextView;

    if-eqz v2, :cond_8

    iget-object v2, p1, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textLinkFontFamilyConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    if-eqz v2, :cond_8

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getString(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_8

    move-object v1, p0

    check-cast v1, Lcom/google/android/setupdesign/view/RichTextView;

    invoke-static {v0}, Lcom/google/android/setupdesign/view/RichTextView;->setSpanTypeface(Landroid/graphics/Typeface;)V

    :cond_8
    invoke-static {p0, p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler;->applyPartnerCustomizationVerticalMargins(Landroid/widget/TextView;Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;)V

    iget p1, p1, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textGravity:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method

.method public static applyPartnerCustomizationVerticalMargins(Landroid/widget/TextView;Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;)V
    .locals 6

    iget-object v0, p1, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textMarginTopConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iget-object p1, p1, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textMarginBottomConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    if-nez v0, :cond_0

    if-eqz p1, :cond_3

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_3

    move-object v3, v2

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v5

    invoke-virtual {v5, v1, v0, v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    :cond_1
    iget v0, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :goto_0
    if-eqz p1, :cond_2

    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v5

    invoke-virtual {v5, v1, p1, v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    move-result p1

    float-to-int p1, p1

    goto :goto_1

    :cond_2
    iget p1, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :goto_1
    iget v1, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v3, v1, v0, v4, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method
