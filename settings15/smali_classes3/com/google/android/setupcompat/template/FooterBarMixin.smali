.class public Lcom/google/android/setupcompat/template/FooterBarMixin;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/android/setupcompat/template/Mixin;


# instance fields
.field final applyDynamicColor:Z

.field final applyPartnerResources:Z

.field public buttonContainer:Landroid/widget/LinearLayout;

.field public final context:Landroid/content/Context;

.field defaultPadding:I

.field public footerBarPaddingBottom:I

.field footerBarPaddingEnd:I

.field footerBarPaddingStart:I

.field public footerBarPaddingTop:I

.field public final footerBarPrimaryBackgroundColor:I

.field public final footerBarSecondaryBackgroundColor:I

.field final footerButtonAlignEnd:Z

.field public final footerStub:Landroid/view/ViewStub;

.field public isSecondaryButtonInPrimaryStyle:Z

.field public final metrics:Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;

.field public primaryButton:Lcom/google/android/setupcompat/template/FooterButton;

.field public primaryButtonId:I

.field public primaryButtonPartnerConfigForTesting:Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;

.field public secondaryButton:Lcom/google/android/setupcompat/template/FooterButton;

.field public secondaryButtonId:I

.field public secondaryButtonPartnerConfigForTesting:Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;

.field final useFullDynamicColor:Z


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->isSecondaryButtonInPrimaryStyle:Z

    new-instance v1, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const-string v2, "Unknown"

    iput-object v2, v1, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->primaryButtonVisibility:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->secondaryButtonVisibility:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->metrics:Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    const v4, 0x7f0a0f42

    invoke-virtual {p1, v4}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    iput-object v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerStub:Landroid/view/ViewStub;

    sget-object v4, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->defaultTextColor:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    instance-of v4, p1, Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    move-object v6, p1

    check-cast v6, Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    invoke-virtual {v6}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->shouldApplyPartnerResource()Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v0

    :goto_0
    iput-boolean v6, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->applyPartnerResources:Z

    if-eqz v4, :cond_1

    move-object v6, p1

    check-cast v6, Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    invoke-virtual {v6}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->shouldApplyDynamicColor()Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v0

    :goto_1
    iput-boolean v6, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->applyDynamicColor:Z

    if-eqz v4, :cond_2

    check-cast p1, Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    invoke-virtual {p1}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->useFullDynamicColor()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v5, v0

    :goto_2
    iput-boolean v5, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->useFullDynamicColor:Z

    sget-object p1, Lcom/google/android/setupcompat/R$styleable;->SucFooterBarMixin:[I

    invoke-virtual {v3, p2, p1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0xc

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->defaultPadding:I

    const/16 p3, 0xb

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingTop:I

    const/16 p2, 0x8

    iget p3, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->defaultPadding:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingBottom:I

    const/16 p2, 0xa

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingStart:I

    const/16 p2, 0x9

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingEnd:I

    const/16 p2, 0xd

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPrimaryBackgroundColor:I

    const/16 p2, 0xf

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarSecondaryBackgroundColor:I

    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerButtonAlignEnd:Z

    const/16 p2, 0xe

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    const/16 p3, 0x10

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Lcom/google/android/setupcompat/template/FooterButtonInflater;

    invoke-direct {p1, v3}, Lcom/google/android/setupcompat/template/FooterButtonInflater;-><init>(Landroid/content/Context;)V

    const-string v4, "VisibleUsingXml"

    if-eqz p3, :cond_4

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p3

    :try_start_0
    invoke-virtual {p1, p3}, Lcom/google/android/setupcompat/template/FooterButtonInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->close()V

    invoke-virtual {p0, v5, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;Z)V

    iget-object p3, v1, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->primaryButtonVisibility:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    move-object p3, v4

    goto :goto_3

    :cond_3
    iget-object p3, v1, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->primaryButtonVisibility:Ljava/lang/String;

    :goto_3
    iput-object p3, v1, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->primaryButtonVisibility:Ljava/lang/String;

    goto :goto_4

    :catchall_0
    move-exception p0

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->close()V

    throw p0

    :cond_4
    :goto_4
    if-eqz p2, :cond_6

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    :try_start_1
    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/template/FooterButtonInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->close()V

    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    iget-object p0, v1, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->secondaryButtonVisibility:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_5

    :cond_5
    iget-object v4, v1, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->secondaryButtonVisibility:Ljava/lang/String;

    :goto_5
    iput-object v4, v1, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->secondaryButtonVisibility:Ljava/lang/String;

    goto :goto_6

    :catchall_1
    move-exception p0

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->close()V

    throw p0

    :cond_6
    :goto_6
    return-void
.end method


# virtual methods
.method public final addSpace()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->ensureFooterInflated()Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Landroid/view/View;

    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p0, v2, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p0, 0x4

    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final autoSetButtonBarVisibility()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButtonView()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getSecondaryButtonView()Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_4

    if-nez v0, :cond_3

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/16 v3, 0x8

    :cond_3
    :goto_2
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public final ensureFooterInflated()Landroid/widget/LinearLayout;
    .locals 6

    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_9

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    const v2, 0x7f15041f

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v0}, Landroid/view/ViewStub;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerStub:Landroid/view/ViewStub;

    const v1, 0x7f0d0b59

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    iget v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingStart:I

    iget v2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingTop:I

    iget v3, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingEnd:I

    iget v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->isFooterButtonAlignedEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x800015

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-boolean v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->applyPartnerResources:Z

    if-nez v1, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->useFullDynamicColor:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BAR_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :cond_4
    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_PADDING_TOP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingTop:I

    :cond_5
    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_PADDING_BOTTOM:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingBottom:I

    :cond_6
    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BAR_PADDING_START:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingStart:I

    :cond_7
    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BAR_PADDING_END:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingEnd:I

    :cond_8
    iget v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingStart:I

    iget v2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingTop:I

    iget v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingEnd:I

    iget v5, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingBottom:I

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BAR_MIN_HEIGHT:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    move-result v1

    float-to-int v1, v1

    if-lez v1, :cond_a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    goto :goto_1

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Footer stub is not found in this template"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_1
    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public getButtonContainer()Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public getPaddingBottom()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerStub:Landroid/view/ViewStub;

    invoke-virtual {p0}, Landroid/view/ViewStub;->getPaddingBottom()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getPaddingTop()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerStub:Landroid/view/ViewStub;

    invoke-virtual {p0}, Landroid/view/ViewStub;->getPaddingTop()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getPartnerTheme(Lcom/google/android/setupcompat/template/FooterButton;ILcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I
    .locals 1

    iget p1, p1, Lcom/google/android/setupcompat/template/FooterButton;->theme:I

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->applyPartnerResources:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move p2, p1

    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->applyPartnerResources:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-virtual {p1, p0, p3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result p0

    if-nez p0, :cond_2

    const p2, 0x7f15041d

    goto :goto_1

    :cond_2
    const p2, 0x7f15041c

    :cond_3
    :goto_1
    return p2
.end method

.method public final getPrimaryButtonView()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryButtonId:I

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    :goto_0
    return-object p0
.end method

.method public final getSecondaryButtonView()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->secondaryButtonId:I

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    :goto_0
    return-object p0
.end method

.method public getVisibility()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p0

    return p0
.end method

.method public final inflateButton(Lcom/google/android/setupcompat/template/FooterButton;Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;)Lcom/google/android/setupcompat/template/FooterActionButton;
    .locals 3

    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget p2, p2, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->partnerTheme:I

    invoke-direct {v1, v0, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0b58

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/setupcompat/template/FooterActionButton;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setId(I)V

    iget-object v0, p1, Lcom/google/android/setupcompat/template/FooterButton;->text:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p1, Lcom/google/android/setupcompat/template/FooterButton;->visibility:I

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-boolean v0, p1, Lcom/google/android/setupcompat/template/FooterButton;->enabled:Z

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iput-object p1, p2, Lcom/google/android/setupcompat/template/FooterActionButton;->footerButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p2}, Landroid/widget/Button;->getId()I

    move-result v0

    new-instance v1, Lcom/google/android/setupcompat/template/FooterBarMixin$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin$1;-><init>(Lcom/google/android/setupcompat/template/FooterBarMixin;I)V

    iput-object v1, p1, Lcom/google/android/setupcompat/template/FooterButton;->buttonListener:Lcom/google/android/setupcompat/template/FooterBarMixin$1;

    return-object p2
.end method

.method public final isFooterButtonAlignedEnd()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ALIGNED_END:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getBoolean(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Z)Z

    move-result p0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerButtonAlignEnd:Z

    return p0
.end method

.method public isPrimaryButtonVisible()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButtonView()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButtonView()Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Button;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSecondaryButtonVisible()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getSecondaryButtonView()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getSecondaryButtonView()Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Button;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onFooterButtonApplyPartnerResource(Lcom/google/android/setupcompat/template/FooterActionButton;Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->applyPartnerResources:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->applyDynamicColor:Z

    invoke-virtual {p1}, Landroid/widget/Button;->getId()I

    move-result v2

    iget v3, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryButtonId:I

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, p1, v1, v2, p2}, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->applyButtonPartnerResources(Landroid/content/Context;Landroid/widget/Button;ZZLcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;)V

    iget-boolean v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->applyDynamicColor:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonTextColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v0, p0, p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    iget-object p2, p2, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonDisableTextColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-static {p0, p1, p2}, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->updateButtonTextDisabledColorWithPartnerConfig(Landroid/content/Context;Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final onFooterButtonInflated(Lcom/google/android/setupcompat/template/FooterActionButton;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->applyDynamicColor:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    sget-object v0, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->defaultTextColor:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    iget-object p2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->autoSetButtonBarVisibility()V

    return-void
.end method

.method public final repopulateButtons()V
    .locals 9

    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->ensureFooterInflated()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButtonView()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getSecondaryButtonView()Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-boolean v3, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->isSecondaryButtonInPrimaryStyle:Z

    const/4 v4, 0x0

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    move v3, v4

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    iget-object v3, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    sget-object v5, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyNeutralButtonStyleBundle:Landroid/os/Bundle;

    const-string v6, "isNeutralButtonStyleEnabled"

    if-nez v5, :cond_2

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v7, v3, v6, v5, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    sput-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyNeutralButtonStyleBundle:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v3, "PartnerConfigHelper"

    const-string v6, "Neutral button style supporting status unknown; return as false."

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v5, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyNeutralButtonStyleBundle:Landroid/os/Bundle;

    goto :goto_0

    :cond_2
    :goto_1
    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyNeutralButtonStyleBundle:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v6, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_2
    iget-object v5, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->isFooterButtonAlignedEnd()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->addSpace()V

    :cond_3
    if-eqz v2, :cond_5

    iget-boolean v5, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->isSecondaryButtonInPrimaryStyle:Z

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v6

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v7

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_4
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->isFooterButtonAlignedEnd()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->addSpace()V

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_7
    if-eqz v1, :cond_8

    if-eqz v2, :cond_8

    if-eqz v3, :cond_8

    invoke-virtual {v1, v4, v4}, Landroid/widget/Button;->measure(II)V

    invoke-virtual {v1}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {v2, v4, v4}, Landroid/widget/Button;->measure(II)V

    invoke-virtual {v2}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_3

    :cond_8
    const/4 p0, 0x0

    const/4 v0, -0x2

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_9

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput p0, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_a

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput p0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    :goto_3
    return-void
.end method

.method public final setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V
    .locals 8

    const-string/jumbo v0, "setPrimaryButton"

    invoke-static {v0}, Lcom/google/android/setupcompat/internal/Preconditions;->ensureOnMainThread(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->ensureFooterInflated()Landroid/widget/LinearLayout;

    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_PRIMARY_BUTTON_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    const v0, 0x7f15041c

    invoke-virtual {p0, p1, v0, v3}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPartnerTheme(Lcom/google/android/setupcompat/template/FooterButton;ILcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result v2

    sget-object v4, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_PRIMARY_BUTTON_DISABLED_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iget v0, p1, Lcom/google/android/setupcompat/template/FooterButton;->buttonType:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    goto :goto_1

    :pswitch_0
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_STOP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_SKIP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_OPT_IN:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_NEXT:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_DONE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_CLEAR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_CANCEL:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_ADD_ANOTHER:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    goto :goto_0

    :goto_1
    sget-object v6, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_PRIMARY_BUTTON_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v7, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_PRIMARY_BUTTON_MARGIN_START:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    new-instance v0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;-><init>(ILcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->inflateButton(Lcom/google/android/setupcompat/template/FooterButton;Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;)Lcom/google/android/setupcompat/template/FooterActionButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v2

    iput v2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryButtonId:I

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/setupcompat/template/FooterActionButton;->isPrimaryButtonStyle:Z

    iput-object p1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    iput-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryButtonPartnerConfigForTesting:Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;

    iget p1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPrimaryBackgroundColor:I

    invoke-virtual {p0, v1, p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->onFooterButtonInflated(Lcom/google/android/setupcompat/template/FooterActionButton;I)V

    invoke-virtual {p0, v1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->onFooterButtonApplyPartnerResource(Lcom/google/android/setupcompat/template/FooterActionButton;Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;)V

    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->repopulateButtons()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;Z)V
    .locals 11

    const-string/jumbo v0, "setSecondaryButton"

    invoke-static {v0}, Lcom/google/android/setupcompat/internal/Preconditions;->ensureOnMainThread(Ljava/lang/String;)V

    iput-boolean p2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->isSecondaryButtonInPrimaryStyle:Z

    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->ensureFooterInflated()Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    const v0, 0x7f15041c

    goto :goto_0

    :cond_0
    const v0, 0x7f15041d

    :goto_0
    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_SECONDARY_BUTTON_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_PRIMARY_BUTTON_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    if-eqz p2, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    invoke-virtual {p0, p1, v0, v3}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPartnerTheme(Lcom/google/android/setupcompat/template/FooterButton;ILcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result v5

    if-eqz p2, :cond_2

    move-object v6, v2

    goto :goto_2

    :cond_2
    move-object v6, v1

    :goto_2
    if-eqz p2, :cond_3

    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_PRIMARY_BUTTON_DISABLED_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    :goto_3
    move-object v7, v0

    goto :goto_4

    :cond_3
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_SECONDARY_BUTTON_DISABLED_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    goto :goto_3

    :goto_4
    iget v0, p1, Lcom/google/android/setupcompat/template/FooterButton;->buttonType:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_5
    move-object v8, v0

    goto :goto_6

    :pswitch_0
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_STOP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    goto :goto_5

    :pswitch_1
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_SKIP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    goto :goto_5

    :pswitch_2
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_OPT_IN:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    goto :goto_5

    :pswitch_3
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_NEXT:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    goto :goto_5

    :pswitch_4
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_DONE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    goto :goto_5

    :pswitch_5
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_CLEAR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    goto :goto_5

    :pswitch_6
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_CANCEL:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    goto :goto_5

    :pswitch_7
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_ADD_ANOTHER:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    goto :goto_5

    :goto_6
    if-eqz p2, :cond_4

    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_PRIMARY_BUTTON_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    :goto_7
    move-object v9, v0

    goto :goto_8

    :cond_4
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_SECONDARY_BUTTON_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    goto :goto_7

    :goto_8
    sget-object v10, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_SECONDARY_BUTTON_MARGIN_START:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    new-instance v0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;-><init>(ILcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->inflateButton(Lcom/google/android/setupcompat/template/FooterButton;Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;)Lcom/google/android/setupcompat/template/FooterActionButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v2

    iput v2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->secondaryButtonId:I

    iput-boolean p2, v1, Lcom/google/android/setupcompat/template/FooterActionButton;->isPrimaryButtonStyle:Z

    iput-object p1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->secondaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    iput-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->secondaryButtonPartnerConfigForTesting:Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;

    iget p1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarSecondaryBackgroundColor:I

    invoke-virtual {p0, v1, p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->onFooterButtonInflated(Lcom/google/android/setupcompat/template/FooterActionButton;I)V

    invoke-virtual {p0, v1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->onFooterButtonApplyPartnerResource(Lcom/google/android/setupcompat/template/FooterActionButton;Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;)V

    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->repopulateButtons()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
