.class public Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public TAG:Ljava/lang/String;

.field public mAppliedVIFileName:Ljava/lang/String;

.field public mBoundingRect:Landroid/graphics/Rect;

.field public mCurrentAnimation:I

.field public final mHandler:Landroid/os/Handler;

.field public mIsAnimationPlaying:Z

.field public mIsConfigUpdateNecessary:Z

.field public mLastDisplayDeviceType:I

.field public mLastUpdatedFolderOpened:Z

.field public mLastUpdatedRotation:I

.field public mLastUpdatedScreenHeight:I

.field public mLastUpdatedScreenWidth:I

.field public mPreparedState:I

.field public mPunchHoleCallback:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$1;

.field public mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

.field public mVIView:Lcom/airbnb/lottie/LottieAnimationView;

.field public mViViewLocation:Landroid/graphics/Rect;

.field public final updateVILocationRunnable:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-class p1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    const-string p1, "KeyguardPunchHoleVIView"

    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    new-instance p1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)V

    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->updateVILocationRunnable:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda0;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mViViewLocation:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mBoundingRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mPreparedState:I

    iput p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mCurrentAnimation:I

    iput-boolean p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mIsAnimationPlaying:Z

    iput-boolean p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mIsConfigUpdateNecessary:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mAppliedVIFileName:Ljava/lang/String;

    iput p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedRotation:I

    iput p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedScreenWidth:I

    iput p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedScreenHeight:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastDisplayDeviceType:I

    sget-object p1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    sget-object p2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p2, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onApplyWindowInsets() return - mVIDirector is null ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/keyguard/punchhole/VIDirectorFactory;->Companion:Lcom/android/keyguard/punchhole/VIDirectorFactory$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/keyguard/punchhole/VIDirectorFactory;->vendorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean v1, v0, Lcom/android/keyguard/punchhole/VIDirector;->mIsBasedOnType:Z

    if-eqz v1, :cond_5

    iget-object v0, v0, Lcom/android/keyguard/punchhole/VIDirector;->mVIType:Ljava/lang/String;

    const-string v1, "circle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BoundingRect = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mBoundingRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1, v0, v3}, Lcom/android/keyguard/punchhole/VIDirector;->getVIViewLocation(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mViViewLocation:Landroid/graphics/Rect;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->updateVILocationRunnable:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->updateVILocationRunnable:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    sget-object p0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p0

    :cond_5
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public final onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    iput-boolean v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedFolderOpened:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedFolderOpened:Z

    sget-object v3, Lcom/android/keyguard/punchhole/VIDirectorFactory;->Companion:Lcom/android/keyguard/punchhole/VIDirectorFactory$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/keyguard/punchhole/VIDirector;

    invoke-direct {v3, v0}, Lcom/android/keyguard/punchhole/VIDirector;-><init>(Landroid/content/Context;)V

    iput-boolean v2, v3, Lcom/android/keyguard/punchhole/VIDirector;->mIsFolderOpened:Z

    invoke-virtual {v3}, Lcom/android/keyguard/punchhole/VIDirector;->initialize()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v1, v3

    :cond_0
    iput-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/keyguard/punchhole/VIDirectorFactory;->Companion:Lcom/android/keyguard/punchhole/VIDirectorFactory$Companion;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/keyguard/punchhole/VIDirector;

    invoke-direct {v0, v2}, Lcom/android/keyguard/punchhole/VIDirector;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/keyguard/punchhole/VIDirector;->initialize()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v1, v0

    :cond_2
    iput-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onFinishInflate() return - mVIDirector is null ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/keyguard/punchhole/VIDirectorFactory;->Companion:Lcom/android/keyguard/punchhole/VIDirectorFactory$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/keyguard/punchhole/VIDirectorFactory;->vendorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    const v0, 0x7f0a05b1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    return-void
.end method

.method public final setPrepareState(I)V
    .locals 4

    iget v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mPreparedState:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setPrepareState() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mPreparedState:I

    const-string v3, " -> "

    invoke-static {v1, v2, v3, p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iput p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mPreparedState:I

    return-void
.end method

.method public final updateScreenConfig()V
    .locals 12

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateScreenConfig() return - mVIDirector is null ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/keyguard/punchhole/VIDirectorFactory;->Companion:Lcom/android/keyguard/punchhole/VIDirectorFactory$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/keyguard/punchhole/VIDirectorFactory;->vendorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/keyguard/punchhole/VIDirector;->getScreenRotation()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    invoke-virtual {v1}, Lcom/android/keyguard/punchhole/VIDirector;->getScreenWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    invoke-virtual {v2}, Lcom/android/keyguard/punchhole/VIDirector;->getScreenHeight()I

    move-result v2

    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v4, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v3, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean v3, v3, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastDisplayDeviceType:I

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v5

    :goto_1
    sget-boolean v6, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedFolderOpened:Z

    if-eq v6, v3, :cond_3

    move v6, v5

    goto :goto_2

    :cond_3
    move v6, v4

    :goto_2
    iget v7, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedRotation:I

    if-ne v7, v0, :cond_4

    iget v7, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedScreenWidth:I

    if-ne v7, v1, :cond_4

    iget v7, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedScreenHeight:I

    if-ne v7, v2, :cond_4

    if-eqz v6, :cond_9

    :cond_4
    iget-object v7, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "updateScreenConfig() rotation "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedRotation:I

    const-string v10, " -> "

    const-string v11, ", screen width "

    invoke-static {v8, v9, v10, v0, v11}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget v9, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedScreenWidth:I

    const-string v11, ", screen height "

    invoke-static {v8, v9, v10, v1, v11}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget v9, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedScreenHeight:I

    invoke-static {v8, v9, v10, v2, v7}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iput v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedRotation:I

    iput v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedScreenWidth:I

    iput v2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedScreenHeight:I

    if-eqz v6, :cond_8

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateScreenConfig() isFolderOpened "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedFolderOpened:Z

    invoke-static {v1, v2, v10, v3, v0}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iput-boolean v3, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedFolderOpened:Z

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mPunchHoleCallback:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$1;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$1;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;

    iget-object v1, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    iget-object v1, v1, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->isLockStarEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    move v5, v4

    :goto_3
    iget-boolean v1, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mIsLockStarEnabled:Z

    if-eq v1, v5, :cond_6

    invoke-virtual {v0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->stopVI()V

    iput-boolean v5, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mIsLockStarEnabled:Z

    :cond_6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/punchhole/VIDirectorFactory;->Companion:Lcom/android/keyguard/punchhole/VIDirectorFactory$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/keyguard/punchhole/VIDirector;

    invoke-direct {v1, v0}, Lcom/android/keyguard/punchhole/VIDirector;-><init>(Landroid/content/Context;)V

    iput-boolean v3, v1, Lcom/android/keyguard/punchhole/VIDirector;->mIsFolderOpened:Z

    invoke-virtual {v1}, Lcom/android/keyguard/punchhole/VIDirector;->initialize()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :goto_4
    iput-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->updateVILocationRunnable:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->updateVILocationRunnable:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean v4, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mIsConfigUpdateNecessary:Z

    :cond_9
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mPunchHoleCallback:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$1;

    if-eqz p0, :cond_a

    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$1;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->startVI()V

    :cond_a
    return-void
.end method

.method public final updateVILocation()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateVILocation() return - mVIDirector is null ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/keyguard/punchhole/VIDirectorFactory;->Companion:Lcom/android/keyguard/punchhole/VIDirectorFactory$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/keyguard/punchhole/VIDirectorFactory;->vendorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v2, v1, Lcom/android/keyguard/punchhole/VIDirector;->mIsBasedOnType:Z

    const-string v3, "circle"

    const/4 v4, 0x3

    const/4 v6, 0x1

    if-eqz v2, :cond_6

    iget-object v1, v1, Lcom/android/keyguard/punchhole/VIDirector;->mVIType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mViViewLocation:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mBoundingRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_1
    iget-object v1, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    iget-object v3, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mBoundingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v7

    if-ne v7, v6, :cond_2

    move v7, v6

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v1, v3, v7}, Lcom/android/keyguard/punchhole/VIDirector;->getVIViewLocation(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mViViewLocation:Landroid/graphics/Rect;

    goto :goto_2

    :cond_3
    iget-object v1, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    iget-object v3, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mBoundingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v7

    if-ne v7, v6, :cond_4

    move v7, v6

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v1, v3, v7}, Lcom/android/keyguard/punchhole/VIDirector;->getVIViewLocation(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mViViewLocation:Landroid/graphics/Rect;

    :cond_5
    :goto_2
    iget-object v1, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mViViewLocation:Landroid/graphics/Rect;

    goto/16 :goto_a

    :cond_6
    iget v7, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mCurrentAnimation:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v8

    if-ne v8, v6, :cond_7

    move v8, v6

    goto :goto_3

    :cond_7
    const/4 v8, 0x0

    :goto_3
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iget-object v10, v1, Lcom/android/keyguard/punchhole/VIDirector;->mCameraLocPercent:Landroid/graphics/PointF;

    if-ne v7, v6, :cond_8

    iget-object v11, v1, Lcom/android/keyguard/punchhole/VIDirector;->mFaceVISizePercent:Landroid/graphics/PointF;

    goto :goto_4

    :cond_8
    const/4 v11, 0x0

    :goto_4
    if-nez v11, :cond_9

    const-string v1, "getVIViewLocation() - return; vi size is not supported, animation = "

    const-string v3, "KeyguardPunchHoleVIView_VIDirector"

    invoke-static {v7, v1, v3}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_9
    iget-object v7, v1, Lcom/android/keyguard/punchhole/VIDirector;->mVIType:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v1}, Lcom/android/keyguard/punchhole/VIDirector;->getScreenRotation()I

    move-result v3

    if-eq v3, v6, :cond_b

    if-ne v3, v4, :cond_a

    goto :goto_5

    :cond_a
    const/4 v7, 0x0

    goto :goto_6

    :cond_b
    :goto_5
    move v7, v6

    :goto_6
    invoke-virtual {v1}, Lcom/android/keyguard/punchhole/VIDirector;->getScreenWidth()I

    move-result v12

    invoke-virtual {v1}, Lcom/android/keyguard/punchhole/VIDirector;->getScreenHeight()I

    move-result v13

    iget v14, v10, Landroid/graphics/PointF;->x:F

    iget v15, v11, Landroid/graphics/PointF;->x:F

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v17, v15, v16

    sub-float v14, v14, v17

    iget v10, v10, Landroid/graphics/PointF;->y:F

    iget v11, v11, Landroid/graphics/PointF;->y:F

    mul-float v16, v16, v11

    sub-float v10, v10, v16

    if-eqz v7, :cond_c

    int-to-float v7, v13

    mul-float/2addr v14, v7

    float-to-int v14, v14

    int-to-float v5, v12

    mul-float/2addr v10, v5

    float-to-int v10, v10

    mul-float/2addr v7, v15

    float-to-int v7, v7

    mul-float/2addr v5, v11

    float-to-int v5, v5

    goto :goto_7

    :cond_c
    int-to-float v5, v12

    mul-float/2addr v14, v5

    float-to-int v14, v14

    int-to-float v7, v13

    mul-float/2addr v10, v7

    float-to-int v10, v10

    mul-float/2addr v5, v15

    float-to-int v5, v5

    mul-float/2addr v7, v11

    float-to-int v7, v7

    move/from16 v18, v7

    move v7, v5

    move/from16 v5, v18

    :goto_7
    if-eq v3, v6, :cond_e

    if-eq v3, v4, :cond_d

    iput v14, v9, Landroid/graphics/Rect;->left:I

    iput v10, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v14, v7

    iput v14, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v5

    iput v10, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_8

    :cond_d
    sub-int/2addr v12, v5

    sub-int/2addr v12, v10

    iput v12, v9, Landroid/graphics/Rect;->left:I

    iput v14, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v12, v5

    iput v12, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v14, v7

    iput v14, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_8

    :cond_e
    iput v10, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v14

    sub-int/2addr v13, v7

    iput v13, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v5

    iput v10, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v13, v7

    iput v13, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_8

    :cond_f
    invoke-virtual {v1, v9, v10, v11}, Lcom/android/keyguard/punchhole/VIDirector;->setRoundViViewLocation(Landroid/graphics/Rect;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    :goto_8
    invoke-virtual {v1}, Lcom/android/keyguard/punchhole/VIDirector;->getScreenWidth()I

    move-result v1

    if-eqz v8, :cond_10

    iget v3, v9, Landroid/graphics/Rect;->left:I

    iget v5, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v1

    iput v5, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v1

    iput v3, v9, Landroid/graphics/Rect;->right:I

    :cond_10
    :goto_9
    move-object v1, v9

    :goto_a
    iget-object v3, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    invoke-virtual {v3}, Lcom/android/keyguard/punchhole/VIDirector;->getScreenRotation()I

    move-result v3

    iget-object v5, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "updateVILocation() "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " isBasedOnType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " rotation = "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedRotation:I

    const-string v8, " -> "

    invoke-static {v7, v2, v8, v3, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iput v3, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedRotation:I

    iget-object v2, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v3, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    invoke-virtual {v3}, Lcom/android/keyguard/punchhole/VIDirector;->getScreenRotation()I

    move-result v3

    if-eq v3, v6, :cond_12

    if-eq v3, v4, :cond_11

    const/4 v5, 0x0

    goto :goto_b

    :cond_11
    const/16 v5, 0x5a

    goto :goto_b

    :cond_12
    const/16 v5, 0x10e

    :goto_b
    int-to-float v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setRotation(F)V

    iget-object v2, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object v2, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object v2, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-gez v3, :cond_13

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    neg-int v3, v3

    goto :goto_c

    :cond_13
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    :goto_c
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v0, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
