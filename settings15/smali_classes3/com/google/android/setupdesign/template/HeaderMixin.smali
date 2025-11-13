.class public final Lcom/google/android/setupdesign/template/HeaderMixin;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/android/setupcompat/template/Mixin;


# instance fields
.field autoTextSizeEnabled:Z

.field public defaultLineHeight:I

.field public defaultTextSize:F

.field public headerAutoSizeLineExtraSpacingInPx:F

.field public headerAutoSizeMaxLineOfMaxSize:I

.field public headerAutoSizeMaxTextSizeInPx:F

.field public headerAutoSizeMinTextSizeInPx:F

.field public final templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

.field public final titlePreDrawListeners:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->autoTextSizeEnabled:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->defaultTextSize:F

    iput v0, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->defaultLineHeight:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->titlePreDrawListeners:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Lcom/google/android/setupcompat/R$styleable;->SucHeaderMixin:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    const/4 p3, 0x5

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/HeaderMixin;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/HeaderMixin;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iput p1, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->defaultTextSize:F

    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/HeaderMixin;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineHeight()I

    move-result p1

    iput p1, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->defaultLineHeight:I

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/HeaderMixin;->tryUpdateAutoTextSizeFlagWithPartnerConfig()V

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/template/HeaderMixin;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/HeaderMixin;->getTextView()Landroid/widget/TextView;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final autoAdjustTextSize(Landroid/widget/TextView;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->headerAutoSizeMaxTextSizeInPx:F

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->defaultTextSize:F

    iget v0, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->headerAutoSizeLineExtraSpacingInPx:F

    iget v1, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->headerAutoSizeMaxTextSizeInPx:F

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLineHeight(I)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    iput v0, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->defaultLineHeight:I

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    new-instance v0, Lcom/google/android/setupdesign/template/HeaderMixin$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/setupdesign/template/HeaderMixin$1;-><init>(Lcom/google/android/setupdesign/template/HeaderMixin;Landroid/widget/TextView;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object p0, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->titlePreDrawListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getTextView()Landroid/widget/TextView;
    .locals 1

    iget-object p0, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    const v0, 0x7f0a0f44

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public final setAutoTextSizeEnabled(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->autoTextSizeEnabled:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/HeaderMixin;->tryUpdateAutoTextConfigWithPartnerConfig()V

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/HeaderMixin;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/template/HeaderMixin;->autoAdjustTextSize(Landroid/widget/TextView;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/HeaderMixin;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->defaultTextSize:F

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget v0, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->defaultLineHeight:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLineHeight(I)V

    iget-object v0, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->titlePreDrawListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->titlePreDrawListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final setText(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/HeaderMixin;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->autoTextSizeEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/template/HeaderMixin;->autoAdjustTextSize(Landroid/widget/TextView;)V

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/HeaderMixin;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->autoTextSizeEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/template/HeaderMixin;->autoAdjustTextSize(Landroid/widget/TextView;)V

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public final tryApplyPartnerCustomizationStyle()V
    .locals 13

    iget-object v0, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    const v1, 0x7f0a0f44

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->shouldApplyPartnerResource(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0a0f60

    invoke-virtual {v0, v2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupdesign/util/LayoutStyler;->applyPartnerCustomizationExtraPaddingStyle(Landroid/view/View;)V

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v12, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;

    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_HEADER_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v5, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_HEADER_TEXT_SIZE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v6, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_HEADER_FONT_FAMILY:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v7, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_HEADER_FONT_WEIGHT:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v9, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_HEADER_TEXT_MARGIN_TOP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v10, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_HEADER_TEXT_MARGIN_BOTTOM:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->getLayoutGravity(Landroid/content/Context;)I

    move-result v11

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;-><init>(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;I)V

    invoke-static {v1, v12}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler;->applyPartnerCustomizationStyle(Landroid/widget/TextView;Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;)V

    :goto_0
    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v3

    sget-object v4, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_HEADER_AREA_BACKGROUND_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v3, v2, v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    invoke-static {v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v3

    sget-object v4, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_HEADER_CONTAINER_MARGIN_BOTTOM:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v3, v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_2

    move-object v5, v3

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v4, v7}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    move-result v2

    float-to-int v2, v2

    iget v4, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v5, v4, v6, v7, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/HeaderMixin;->tryUpdateAutoTextSizeFlagWithPartnerConfig()V

    iget-boolean v0, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->autoTextSizeEnabled:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/google/android/setupdesign/template/HeaderMixin;->autoAdjustTextSize(Landroid/widget/TextView;)V

    :cond_3
    return-void
.end method

.method public final tryUpdateAutoTextConfigWithPartnerConfig()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_HEADER_AUTO_SIZE_MAX_TEXT_SIZE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    move-result v1

    iput v1, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->headerAutoSizeMaxTextSizeInPx:F

    :cond_0
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_HEADER_AUTO_SIZE_MIN_TEXT_SIZE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    move-result v1

    iput v1, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->headerAutoSizeMinTextSizeInPx:F

    :cond_1
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_HEADER_AUTO_SIZE_LINE_SPACING_EXTRA:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    move-result v1

    iput v1, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->headerAutoSizeLineExtraSpacingInPx:F

    :cond_2
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_HEADER_AUTO_SIZE_MAX_LINE_OF_MAX_SIZE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getInteger(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->headerAutoSizeMaxLineOfMaxSize:I

    :cond_3
    iget v0, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->headerAutoSizeMaxLineOfMaxSize:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_4

    iget v0, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->headerAutoSizeMinTextSizeInPx:F

    cmpg-float v1, v0, v3

    if-lez v1, :cond_4

    iget v1, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->headerAutoSizeMaxTextSizeInPx:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_5

    :cond_4
    const-string v0, "HeaderMixin"

    const-string v1, "Invalid configs, disable auto text size."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->autoTextSizeEnabled:Z

    :cond_5
    return-void
.end method

.method public final tryUpdateAutoTextSizeFlagWithPartnerConfig()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->shouldApplyPartnerResource(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->autoTextSizeEnabled:Z

    return-void

    :cond_0
    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_HEADER_AUTO_SIZE_ENABLED:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v0, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    iget-boolean v3, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->autoTextSizeEnabled:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getBoolean(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->autoTextSizeEnabled:Z

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->autoTextSizeEnabled:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/HeaderMixin;->tryUpdateAutoTextConfigWithPartnerConfig()V

    return-void
.end method
