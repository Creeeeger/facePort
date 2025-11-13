.class public final Lcom/google/android/setupcompat/template/SystemNavBarMixin;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/android/setupcompat/template/Mixin;


# instance fields
.field final applyPartnerResources:Z

.field public final templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

.field final useFullDynamicColor:Z

.field public final windowOfActivity:Landroid/view/Window;


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/view/Window;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    iput-object p2, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->windowOfActivity:Landroid/view/Window;

    instance-of p2, p1, Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    invoke-virtual {v2}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->shouldApplyPartnerResource()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->applyPartnerResources:Z

    if-eqz p2, :cond_1

    check-cast p1, Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    invoke-virtual {p1}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->useFullDynamicColor()Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->useFullDynamicColor:Z

    return-void
.end method


# virtual methods
.method public final applyPartnerCustomizations(Landroid/util/AttributeSet;I)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/R$styleable;->SucSystemNavBarMixin:[I

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->windowOfActivity:Landroid/view/Window;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->applyPartnerResources:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->useFullDynamicColor:Z

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v2

    sget-object v4, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_NAVIGATION_BAR_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v2, v1, v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result v1

    :cond_0
    iget-object v2, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->windowOfActivity:Landroid/view/Window;

    invoke-virtual {v2, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->windowOfActivity:Landroid/view/Window;

    const/16 v2, 0x10

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    move p2, v3

    :cond_3
    :goto_0
    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iget-object v1, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->windowOfActivity:Landroid/view/Window;

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->applyPartnerResources:Z

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    sget-object v4, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LIGHT_NAVIGATION_BAR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v1, p2, v4, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getBoolean(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Z)Z

    move-result p2

    :cond_4
    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->windowOfActivity:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    iget-object v1, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->windowOfActivity:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/2addr v1, v2

    invoke-virtual {p2, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1

    :cond_5
    iget-object p2, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->windowOfActivity:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    iget-object v1, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->windowOfActivity:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    and-int/lit8 v1, v1, -0x11

    invoke-virtual {p2, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_6
    :goto_1
    const p2, 0x101056d

    filled-new-array {p2}, [I

    move-result-object p2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->windowOfActivity:Landroid/view/Window;

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->applyPartnerResources:Z

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v2

    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_NAVIGATION_BAR_DIVIDER_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result v1

    :cond_7
    iget-object p0, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->windowOfActivity:Landroid/view/Window;

    invoke-virtual {p0, v1}, Landroid/view/Window;->setNavigationBarDividerColor(I)V

    :cond_8
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
