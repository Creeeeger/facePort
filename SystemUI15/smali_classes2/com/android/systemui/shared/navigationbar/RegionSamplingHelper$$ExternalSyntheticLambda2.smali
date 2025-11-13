.class public final synthetic Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

.field public final synthetic f$1:Landroid/view/SurfaceControl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;Landroid/view/SurfaceControl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    iput-object p2, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$$ExternalSyntheticLambda2;->f$1:Landroid/view/SurfaceControl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    iget-object p0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$$ExternalSyntheticLambda2;->f$1:Landroid/view/SurfaceControl;

    iget-object v1, v0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mCompositionSamplingListener:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SysuiCompositionSamplingListener;

    iget-object v2, v0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingListener:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$3;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroid/view/CompositionSamplingListener;->unregister(Landroid/view/CompositionSamplingListener;)V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->release()V

    :cond_0
    sget-boolean p0, Lcom/android/systemui/navigationbar/BasicRuneWrapper;->NAVBAR_ENABLED:Z

    if-eqz p0, :cond_1

    const/high16 p0, -0x40800000    # -1.0f

    iput p0, v0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mLastMedianLuma:F

    :cond_1
    return-void
.end method
