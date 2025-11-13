.class public final Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final callback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

.field public final context:Landroid/content/Context;

.field public isShortcutPreviewSwipingInProgress:Z

.field public final layoutParams:Landroid/view/WindowManager$LayoutParams;

.field public final mBlurPanelView:Landroid/widget/FrameLayout;

.field public final mIndicationArea:Landroid/widget/LinearLayout;

.field public final mIndicationText:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

.field public final mLeftIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

.field public mMotionCancelled:Z

.field public mPreviewAnimationStarted:Z

.field public final mRightIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

.field public mTargetedView:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

.field public final mTouchTargetHeight:I

.field public final mTouchTargetWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;Landroid/content/Context;Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->callback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0177

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mBlurPanelView:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x538

    const/4 v7, -0x3

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x96f

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v0, v2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v0, 0x30

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    const/4 v3, 0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-nez p1, :cond_1

    move-object p1, v1

    :cond_1
    const-string v2, "LockscreenShortcutBlur"

    invoke-virtual {p1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez p1, :cond_2

    move-object p1, v1

    :cond_2
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const-string/jumbo p1, "window"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mBlurPanelView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v2, :cond_3

    move-object v2, v1

    :cond_3
    invoke-interface {p1, p2, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_4

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->getLeftView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->getRightView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    goto :goto_1

    :cond_4
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->getLeftView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->getRightView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    :goto_1
    iget-object p1, p3, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->indicationArea$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mIndicationArea:Landroid/widget/LinearLayout;

    iget-object p1, p3, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->indicationText$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    check-cast p1, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mIndicationText:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    filled-new-array {p1, p3}, [Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance p3, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {p3, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->callback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

    iput-object v3, v2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

    :cond_5
    if-eqz v2, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mBlurPanelView:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_6

    iput-object v3, v2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBlurPanelRoot:Landroid/widget/FrameLayout;

    const v4, 0x7f0a08b3

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mPanelBackground:Landroid/view/View;

    const v4, 0x7f0a08b4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBlurPanelView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setClipToOutline(Z)V

    const v4, 0x7f0a08b5

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mPanelDimView:Landroid/view/View;

    const v4, 0x7f0a08b6

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mPanelIcon:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/drawable/PaintDrawable;

    iget v4, v2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleColor:I

    invoke-direct {v3, v4}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    iput-object v3, v2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mPanelBackgroundDrawable:Landroid/graphics/drawable/PaintDrawable;

    :cond_6
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_3

    :cond_7
    move-object v2, v1

    :goto_3
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p1, p3, v0, p2}, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;FZZ)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    invoke-static {p1, p3, v0, p2}, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;FZZ)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07048d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mTouchTargetWidth:I

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07048b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mTouchTargetHeight:I

    return-void
.end method

.method public static updateIcon(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;FZZ)V
    .locals 1

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setImageAlpha(FZ)V

    invoke-virtual {p0, p3, p2}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setImageScale(FZ)V

    return-void
.end method


# virtual methods
.method public final endMotion()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTaskTypeShortcut:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRight:Z

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isUnlockWaitNeeded(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsShortcutLaunching:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->isSecure$1()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsNoUnlockNeeded:Z

    if-eqz v0, :cond_2

    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mPreviewAnimationStarted:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->startPreviewAnimation(Landroid/view/View;Z)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    return-void
.end method

.method public final isOnIcon(Landroid/view/View;FF)Z
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v2, v0, v1

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v2

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v4

    add-float/2addr p1, v0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mTouchTargetHeight:I

    int-to-float v5, v0

    div-float/2addr v5, v4

    sub-float v5, p1, v5

    int-to-float v0, v0

    div-float/2addr v0, v4

    add-float/2addr v0, p1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mTouchTargetWidth:I

    int-to-float p1, p0

    div-float/2addr p1, v4

    sub-float p1, v3, p1

    int-to-float p0, p0

    div-float/2addr p0, v4

    add-float/2addr p0, v3

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_0

    cmpg-float p0, v5, p3

    if-gtz p0, :cond_0

    cmpg-float p0, p3, v0

    if-gtz p0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public final reset(Z)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mPreviewAnimationStarted:Z

    const-class v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v2, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setShortcutLaunchInProgress(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;FZZ)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    invoke-static {v1, v2, v0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;FZZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->reset(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->reset(Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mMotionCancelled:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mIndicationText:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public final startPreviewAnimation(Landroid/view/View;Z)V
    .locals 3

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mPreviewAnimationStarted:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startPreviewAnimation() show = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", target = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSecAffordanceHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mIndicationArea:Landroid/widget/LinearLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v1, 0xc8

    invoke-virtual {p2, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    const/4 v1, 0x1

    if-ne p1, p2, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setImageAlpha(FZ)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    if-ne p1, p0, :cond_2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setImageAlpha(FZ)V

    :cond_2
    :goto_0
    return-void
.end method
