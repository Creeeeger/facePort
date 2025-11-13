.class public final synthetic Lcom/android/systemui/shade/NotificationShadeWindowViewController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/android/keyguard/KeyguardUnfoldTransition;

    iget-object p0, p1, Lcom/android/keyguard/KeyguardUnfoldTransition;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070510

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    iget-object v0, p1, Lcom/android/keyguard/KeyguardUnfoldTransition;->translateAnimator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;

    iget-object v1, p1, Lcom/android/keyguard/KeyguardUnfoldTransition;->shadeWindowView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->init(Landroid/view/ViewGroup;F)V

    iget-object v0, p1, Lcom/android/keyguard/KeyguardUnfoldTransition;->shortcutButtonsAnimator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardUnfoldTransition;->keyguardRootView:Lcom/android/systemui/keyguard/ui/view/KeyguardRootView;

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->init(Landroid/view/ViewGroup;F)V

    return-void
.end method
