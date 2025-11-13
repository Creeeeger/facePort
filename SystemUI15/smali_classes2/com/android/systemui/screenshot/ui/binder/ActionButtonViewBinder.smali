.class public final Lcom/android/systemui/screenshot/ui/binder/ActionButtonViewBinder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bind(Landroid/view/View;Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;)V
    .locals 9

    const v0, 0x7f0a089d

    invoke-virtual {p0, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a089e

    invoke-virtual {p0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable;

    invoke-direct {v2}, Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v3, v2, Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    check-cast v2, Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable;

    goto :goto_0

    :cond_1
    move-object v2, v4

    :goto_0
    iget-object v3, p1, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;->appearance:Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonAppearance;

    if-eqz v2, :cond_7

    iget-object v5, v3, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonAppearance;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v6, v2, Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v6, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v2, Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable;->transitionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    iget-object v6, v2, Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_1
    if-eqz v5, :cond_4

    iget-object v6, v2, Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable;->tint:Landroid/content/res/ColorStateList;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_4
    iget-object v6, v2, Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_5

    iput-object v5, v2, Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_2

    :cond_5
    iget-object v6, v2, Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable;->enteringDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_6

    iput-object v5, v2, Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable;->enteringDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_6
    iput-object v5, v2, Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable;->enteringDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, v2, Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable;->transitionAnimator:Landroid/animation/ValueAnimator;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    iget-object v5, v2, Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable;->transitionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_7
    :goto_2
    iget-object v2, v3, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonAppearance;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v2, v3, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonAppearance;->tint:Z

    if-nez v2, :cond_8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_8
    iget-object v2, v3, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonAppearance;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v3, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonAppearance;->customBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    :cond_9
    invoke-virtual {p0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    iget-object v2, v3, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonAppearance;->label:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    if-eqz v2, :cond_b

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_3

    :cond_b
    move v2, v5

    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x7f070c60

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x7f070c62

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x7f070c5f

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_4

    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x7f070c5c

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    :goto_4
    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p1, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;->onClicked:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_d

    new-instance v0, Lcom/android/systemui/screenshot/ui/binder/ActionButtonViewBinder$bind$2;

    invoke-direct {v0, p1}, Lcom/android/systemui/screenshot/ui/binder/ActionButtonViewBinder$bind$2;-><init>(Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    :cond_d
    invoke-virtual {p0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_5
    iget p1, p1, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p1, v3, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonAppearance;->description:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
