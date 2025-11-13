.class public final Lcom/android/systemui/screenshot/MessageContainerController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public animateOut:Landroid/animation/Animator;

.field public container:Landroid/view/ViewGroup;

.field public detectionNoticeView:Landroid/view/ViewGroup;

.field public guideline:Landroidx/constraintlayout/widget/Guideline;

.field public final mainScope:Lkotlinx/coroutines/CoroutineScope;

.field public final profileMessageController:Lcom/android/systemui/screenshot/message/ProfileMessageController;

.field public final screenshotDetectionController:Lcom/android/systemui/screenshot/ScreenshotDetectionController;

.field public workProfileFirstRunView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/WorkProfileMessageController;Lcom/android/systemui/screenshot/message/ProfileMessageController;Lcom/android/systemui/screenshot/ScreenshotDetectionController;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/MessageContainerController;->profileMessageController:Lcom/android/systemui/screenshot/message/ProfileMessageController;

    iput-object p3, p0, Lcom/android/systemui/screenshot/MessageContainerController;->screenshotDetectionController:Lcom/android/systemui/screenshot/ScreenshotDetectionController;

    iput-object p4, p0, Lcom/android/systemui/screenshot/MessageContainerController;->mainScope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method


# virtual methods
.method public final animateInMessageContainer()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/screenshot/MessageContainerController;->container:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/MessageContainerController;->container:Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/MessageContainerController;->container:Landroid/view/ViewGroup;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/screenshot/MessageContainerController$animateInMessageContainer$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/MessageContainerController$animateInMessageContainer$1;-><init>(Lcom/android/systemui/screenshot/MessageContainerController;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public final getAnimator(Z)Landroid/animation/Animator;
    .locals 4

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/systemui/screenshot/MessageContainerController;->container:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v3, p0, Lcom/android/systemui/screenshot/MessageContainerController;->container:Landroid/view/ViewGroup;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v1

    if-eqz p1, :cond_2

    new-array p1, v0, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-array p1, v0, [F

    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    :goto_1
    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/systemui/screenshot/MessageContainerController$getAnimator$1$1;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/screenshot/MessageContainerController$getAnimator$1$1;-><init>(Lcom/android/systemui/screenshot/MessageContainerController;I)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
