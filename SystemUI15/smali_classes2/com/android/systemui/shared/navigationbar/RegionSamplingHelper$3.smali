.class public final Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$3;
.super Landroid/view/CompositionSamplingListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$3;->this$0:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    invoke-direct {p0, p2}, Landroid/view/CompositionSamplingListener;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final onSampleCollected(F)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$3;->this$0:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    iget-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingEnabled:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/navigationbar/BasicRuneWrapper;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingListenerRegistered:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iput p1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mCurrentMedianLuma:F

    iget v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mLastMedianLuma:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3d4ccccd    # 0.05f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mCallback:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v1

    const/4 v2, 0x1

    if-gez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBar$10;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavigationBar$10;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    iput p1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mLastMedianLuma:F

    :cond_2
    :goto_1
    return-void
.end method
