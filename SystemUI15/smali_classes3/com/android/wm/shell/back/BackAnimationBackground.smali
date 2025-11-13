.class public final Lcom/android/wm/shell/back/BackAnimationBackground;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mBackgroundIsDark:Z

.field public mBackgroundSurface:Landroid/view/SurfaceControl;

.field public mCustomizer:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda6;

.field public mIsRequestingStatusBarAppearance:Z

.field public final mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

.field public mStartBounds:Landroid/graphics/Rect;

.field public mStatusbarHeight:I


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    return-void
.end method


# virtual methods
.method public final customizeStatusBarAppearance(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mCustomizer:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda6;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mStatusbarHeight:I

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-le p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    iget-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mIsRequestingStatusBarAppearance:Z

    if-ne p1, v0, :cond_2

    return-void

    :cond_2
    iput-boolean p1, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mIsRequestingStatusBarAppearance:Z

    if-eqz p1, :cond_4

    new-instance p1, Lcom/android/internal/view/AppearanceRegion;

    iget-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mBackgroundIsDark:Z

    if-nez v0, :cond_3

    const/16 v1, 0x8

    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mStartBounds:Landroid/graphics/Rect;

    invoke-direct {p1, v1, v0}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mCustomizer:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda6;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUiThreadContext:Lcom/android/systemui/util/concurrency/UiThreadContext;

    invoke-virtual {v0}, Lcom/android/systemui/util/concurrency/UiThreadContext;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda15;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;Lcom/android/internal/view/AppearanceRegion;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mCustomizer:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda6;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUiThreadContext:Lcom/android/systemui/util/concurrency/UiThreadContext;

    invoke-virtual {p1}, Lcom/android/systemui/util/concurrency/UiThreadContext;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda15;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda15;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;Lcom/android/internal/view/AppearanceRegion;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final ensureBackground(IILandroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mBackgroundSurface:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/internal/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mBackgroundIsDark:Z

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v3

    const/4 v3, 0x3

    new-array v3, v3, [F

    aput v2, v3, v1

    aput v4, v3, v0

    const/4 v0, 0x2

    aput p1, v3, v0

    new-instance p1, Landroid/view/SurfaceControl$Builder;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Builder;-><init>()V

    const-string v0, "back-animation-background"

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const-string v0, "BackAnimationBackground"

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    invoke-virtual {v0, v1, p1}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->attachToDisplayArea(ILandroid/view/SurfaceControl$Builder;)V

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mBackgroundSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p4, p1, v3}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p4, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mBackgroundSurface:Landroid/view/SurfaceControl;

    const/4 v0, -0x1

    invoke-virtual {p1, p4, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p4, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mBackgroundSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput-object p3, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mStartBounds:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mIsRequestingStatusBarAppearance:Z

    iput p2, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mStatusbarHeight:I

    return-void
.end method
