.class public final Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 6

    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p1, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeAnimation:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    iget p2, p2, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->radius:F

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    iget v1, v0, Lcom/android/systemui/statusbar/BlurUtils;->minBlurRadius:I

    int-to-float v1, v1

    iget v2, v0, Lcom/android/systemui/statusbar/BlurUtils;->maxBlurRadius:I

    int-to-float v3, v2

    invoke-static {p2, v1, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shouldApplyShadeBlur()Z

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/systemui/animation/ShadeInterpolation;->getNotificationScrimAlpha(F)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/BlurUtils;->blurRadiusOfRatio(F)F

    move-result v3

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    const v4, 0x3e4ccccc    # 0.19999999f

    mul-float/2addr p2, v4

    add-float/2addr p2, v3

    invoke-static {v1}, Lcom/android/systemui/animation/ShadeInterpolation;->getNotificationScrimAlpha(F)F

    move-result v3

    mul-float/2addr v3, v1

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/BlurUtils;->blurRadiusOfRatio(F)F

    move-result v3

    invoke-static {p2, v3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget v3, p1, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->transitionToFullShadeProgress:F

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/BlurUtils;->blurRadiusOfRatio(F)F

    move-result v3

    invoke-static {p2, v3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {p2, v1}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blursDisabledForAppLaunch:Z

    if-nez v3, :cond_0

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blursDisabledForUnlock:Z

    if-eqz v3, :cond_1

    :cond_0
    move p2, v1

    :cond_1
    cmpg-float v3, p2, v1

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v3, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    iget v3, v0, Lcom/android/systemui/statusbar/BlurUtils;->minBlurRadius:I

    int-to-float v3, v3

    int-to-float v2, v2

    invoke-static {v3, v2, v1, v4, p2}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v2

    :goto_0
    invoke-static {v2}, Landroid/util/MathUtils;->saturate(F)F

    move-result v2

    float-to-int p2, p2

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->scrimsVisible:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    move v2, v1

    move p2, v5

    :cond_3
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BlurUtils;->supportsBlursOnWindows()Z

    move-result v0

    if-nez v0, :cond_4

    move p2, v5

    :cond_4
    int-to-float p2, p2

    iget-object p1, p1, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->brightnessMirrorSpring:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    iget p1, p1, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->radius:F

    cmpg-float v3, p1, v1

    if-nez v3, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_5
    iget v3, v0, Lcom/android/systemui/statusbar/BlurUtils;->minBlurRadius:I

    int-to-float v3, v3

    iget v0, v0, Lcom/android/systemui/statusbar/BlurUtils;->maxBlurRadius:I

    int-to-float v0, v0

    invoke-static {v3, v0, v1, v4, p1}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v1

    :goto_1
    sub-float/2addr v4, v1

    mul-float/2addr v4, p2

    float-to-int p1, v4

    new-instance p2, Lkotlin/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->scrimsVisible:Z

    if-eqz v1, :cond_6

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blursDisabledForAppLaunch:Z

    :cond_6
    const-wide/16 v0, 0x1000

    const-string/jumbo v2, "shade_blur_radius"

    invoke-static {v0, v1, v2, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->root:Landroid/view/View;

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    iput p1, v0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->lastAppliedBlur:I

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->wallpaperController:Lcom/android/systemui/util/WallpaperController;

    invoke-virtual {v0, p2}, Lcom/android/systemui/util/WallpaperController;->setNotificationShadeZoom(F)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    iget-object p2, p2, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->listeners:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBar$6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    move v1, v5

    :goto_4
    iget-boolean v2, v0, Lcom/android/systemui/navigationbar/NavigationBar$6;->mHasBlurs:Z

    if-ne v1, v2, :cond_a

    goto :goto_3

    :cond_a
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/NavigationBar$6;->mHasBlurs:Z

    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavigationBar$6;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    iput-boolean v1, v0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mWindowHasBlurs:Z

    invoke-virtual {v0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->updateSamplingListener()V

    goto :goto_3

    :cond_b
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object p2, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget v0, p2, Lcom/android/systemui/shade/NotificationShadeWindowState;->backgroundBlurRadius:I

    if-ne v0, p1, :cond_c

    goto :goto_5

    :cond_c
    iput p1, p2, Lcom/android/systemui/shade/NotificationShadeWindowState;->backgroundBlurRadius:I

    invoke-virtual {p0, p2}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    :goto_5
    return-void
.end method
