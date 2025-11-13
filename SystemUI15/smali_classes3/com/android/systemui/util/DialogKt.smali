.class public final Lcom/android/systemui/util/DialogKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final maybeForceFullscreen(Landroid/app/Dialog;)Lkotlin/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Dialog;",
            ")",
            "Lkotlin/Pair<",
            "Lcom/android/systemui/animation/view/LaunchableFrameLayout;",
            "Landroid/view/View$OnLayoutChangeListener;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/Dialog;->create()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v2, v3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lcom/android/systemui/animation/view/LaunchableFrameLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/systemui/animation/view/LaunchableFrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v5, 0x106000d

    invoke-virtual {v0, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    new-instance v5, Lcom/android/systemui/util/DialogKt$maybeForceFullscreen$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/util/DialogKt$maybeForceFullscreen$1;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p0, 0x1

    invoke-virtual {v4, p0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v5, p0

    :goto_0
    if-ge v5, v2, :cond_1

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setLayout(II)V

    new-instance p0, Lcom/android/systemui/util/DialogKt$maybeForceFullscreen$decorViewLayoutListener$1;

    invoke-direct {p0, v0, v4}, Lcom/android/systemui/util/DialogKt$maybeForceFullscreen$decorViewLayoutListener$1;-><init>(Landroid/view/Window;Lcom/android/systemui/animation/view/LaunchableFrameLayout;)V

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v4, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final registerAnimationOnBackInvoked(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/android/systemui/util/DialogKt;->registerAnimationOnBackInvoked$default(Landroid/app/Dialog;Landroid/view/View;Lcom/android/systemui/animation/back/BackAnimationSpec;ILjava/lang/Object;)V

    return-void
.end method

.method public static final registerAnimationOnBackInvoked(Landroid/app/Dialog;Landroid/view/View;Lcom/android/systemui/animation/back/BackAnimationSpec;)V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Dialog;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/util/DialogKt$registerAnimationOnBackInvoked$2;

    invoke-direct {v2, p1}, Lcom/android/systemui/util/DialogKt$registerAnimationOnBackInvoked$2;-><init>(Landroid/view/View;)V

    new-instance v3, Lcom/android/systemui/util/DialogKt$registerAnimationOnBackInvoked$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/util/DialogKt$registerAnimationOnBackInvoked$3;-><init>(Landroid/app/Dialog;)V

    invoke-static {p2, v1, v2, v3}, Lcom/android/systemui/animation/back/OnBackAnimationCallbackExtensionKt;->onBackAnimationCallbackFrom$default(Lcom/android/systemui/animation/back/BackAnimationSpec;Landroid/util/DisplayMetrics;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Lcom/android/systemui/animation/back/OnBackAnimationCallbackExtensionKt$onBackAnimationCallbackFrom$4;

    move-result-object p0

    new-instance p2, Lcom/android/systemui/animation/back/OnBackAnimationCallbackExtensionKt$registerOnBackInvokedCallbackOnViewAttached$1;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, p0, p1}, Lcom/android/systemui/animation/back/OnBackAnimationCallbackExtensionKt$registerOnBackInvokedCallbackOnViewAttached$1;-><init>(Landroid/window/OnBackInvokedDispatcher;ILandroid/window/OnBackAnimationCallback;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {v0, v1, p0}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    :cond_0
    return-void
.end method

.method public static registerAnimationOnBackInvoked$default(Landroid/app/Dialog;Landroid/view/View;Lcom/android/systemui/animation/back/BackAnimationSpec;ILjava/lang/Object;)V
    .locals 8

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lcom/android/systemui/animation/back/BackAnimationSpec;->Companion:Lcom/android/systemui/animation/back/BackAnimationSpec$Companion;

    new-instance v1, Lcom/android/systemui/util/DialogKt$registerAnimationOnBackInvoked$1;

    invoke-direct {v1, p1}, Lcom/android/systemui/util/DialogKt$registerAnimationOnBackInvoked$1;-><init>(Landroid/view/View;)V

    sget-object v7, Lcom/android/app/animation/Interpolators;->BACK_GESTURE:Landroid/view/animation/Interpolator;

    sget-object v6, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    new-instance p2, Lcom/android/systemui/animation/back/BackAnimationSpecKt$createFloatingSurfaceAnimationSpec$1;

    const v4, 0x3f666666    # 0.9f

    const/high16 v2, 0x41000000    # 8.0f

    const/high16 v3, 0x41000000    # 8.0f

    move-object v0, p2

    move-object v5, v7

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/animation/back/BackAnimationSpecKt$createFloatingSurfaceAnimationSpec$1;-><init>(Lkotlin/jvm/functions/Function0;FFFLandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/systemui/util/DialogKt;->registerAnimationOnBackInvoked(Landroid/app/Dialog;Landroid/view/View;Lcom/android/systemui/animation/back/BackAnimationSpec;)V

    return-void
.end method
