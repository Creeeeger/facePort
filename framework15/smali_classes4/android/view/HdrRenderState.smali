.class Landroid/view/HdrRenderState;
.super Ljava/lang/Object;
.source "HdrRenderState.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Landroid/view/Display;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist FLAG_ANIMATE_ENABLED:Z

.field private static final blacklist TRANSITION_PER_MS:F = 0.01f


# instance fields
.field private blacklist mDesiredHdrSdrRatio:F

.field private blacklist mIsHdrEnabled:Z

.field private blacklist mIsListenerRegistered:Z

.field private blacklist mLastUpdateMillis:J

.field private blacklist mPreviousRenderRatio:F

.field private blacklist mRenderHdrSdrRatio:F

.field private blacklist mTargetDesiredHdrSdrRatio:F

.field private blacklist mTargetHdrSdrRatio:F

.field private blacklist mUpdateHdrSdrRatioInfo:Z

.field private final blacklist mViewRoot:Landroid/view/ViewRootImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/graphics/hwui/flags/Flags;->animateHdrTransitions()Z

    move-result v0

    sput-boolean v0, Landroid/view/HdrRenderState;->FLAG_ANIMATE_ENABLED:Z

    return-void
.end method

.method constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/HdrRenderState;->mIsHdrEnabled:Z

    iput-boolean v0, p0, Landroid/view/HdrRenderState;->mIsListenerRegistered:Z

    iput-boolean v0, p0, Landroid/view/HdrRenderState;->mUpdateHdrSdrRatioInfo:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/HdrRenderState;->mDesiredHdrSdrRatio:F

    iput v0, p0, Landroid/view/HdrRenderState;->mTargetDesiredHdrSdrRatio:F

    iput v0, p0, Landroid/view/HdrRenderState;->mTargetHdrSdrRatio:F

    iput v0, p0, Landroid/view/HdrRenderState;->mRenderHdrSdrRatio:F

    iput v0, p0, Landroid/view/HdrRenderState;->mPreviousRenderRatio:F

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/view/HdrRenderState;->mLastUpdateMillis:J

    iput-object p1, p0, Landroid/view/HdrRenderState;->mViewRoot:Landroid/view/ViewRootImpl;

    return-void
.end method


# virtual methods
.method public blacklist accept(Landroid/view/Display;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/HdrRenderState;->forceUpdateHdrSdrRatio()V

    iget-object v0, p0, Landroid/view/HdrRenderState;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->invalidate()V

    return-void
.end method

.method public bridge synthetic whitelist test-api accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/view/Display;

    invoke-virtual {p0, p1}, Landroid/view/HdrRenderState;->accept(Landroid/view/Display;)V

    return-void
.end method

.method blacklist forceUpdateHdrSdrRatio()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/HdrRenderState;->isHdrEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/HdrRenderState;->mDesiredHdrSdrRatio:F

    iget-object v1, p0, Landroid/view/HdrRenderState;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHdrSdrRatio()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroid/view/HdrRenderState;->mTargetHdrSdrRatio:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/HdrRenderState;->mTargetHdrSdrRatio:F

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/HdrRenderState;->mUpdateHdrSdrRatioInfo:Z

    return-void
.end method

.method blacklist getDesiredHdrSdrRatio()F
    .locals 1

    iget v0, p0, Landroid/view/HdrRenderState;->mDesiredHdrSdrRatio:F

    return v0
.end method

.method blacklist getRenderHdrSdrRatio()F
    .locals 1

    iget v0, p0, Landroid/view/HdrRenderState;->mRenderHdrSdrRatio:F

    return v0
.end method

.method blacklist isHdrEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/HdrRenderState;->mIsHdrEnabled:Z

    return v0
.end method

.method blacklist setDesiredHdrSdrRatio(ZF)V
    .locals 2

    iput-boolean p1, p0, Landroid/view/HdrRenderState;->mIsHdrEnabled:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/HdrRenderState;->mLastUpdateMillis:J

    iget v0, p0, Landroid/view/HdrRenderState;->mTargetDesiredHdrSdrRatio:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_3

    iput p2, p0, Landroid/view/HdrRenderState;->mTargetDesiredHdrSdrRatio:F

    iget v0, p0, Landroid/view/HdrRenderState;->mTargetDesiredHdrSdrRatio:F

    iget v1, p0, Landroid/view/HdrRenderState;->mDesiredHdrSdrRatio:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    sget-boolean v0, Landroid/view/HdrRenderState;->FLAG_ANIMATE_ENABLED:Z

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Landroid/view/HdrRenderState;->mTargetDesiredHdrSdrRatio:F

    iput v0, p0, Landroid/view/HdrRenderState;->mDesiredHdrSdrRatio:F

    :cond_1
    invoke-virtual {p0}, Landroid/view/HdrRenderState;->forceUpdateHdrSdrRatio()V

    iget-object v0, p0, Landroid/view/HdrRenderState;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->invalidate()V

    invoke-virtual {p0}, Landroid/view/HdrRenderState;->isHdrEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/HdrRenderState;->startListening()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/HdrRenderState;->stopListening()V

    :cond_3
    :goto_0
    return-void
.end method

.method blacklist startListening()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/HdrRenderState;->isHdrEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/HdrRenderState;->mIsListenerRegistered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/HdrRenderState;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/HdrRenderState;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->isHdrSdrRatioAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/HdrRenderState;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Landroid/view/HdrRenderState;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p0}, Landroid/view/Display;->registerHdrSdrRatioChangedListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/HdrRenderState;->mIsListenerRegistered:Z

    :cond_0
    return-void
.end method

.method blacklist stopListening()V
    .locals 1

    iget-boolean v0, p0, Landroid/view/HdrRenderState;->mIsListenerRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/HdrRenderState;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, p0}, Landroid/view/Display;->unregisterHdrSdrRatioChangedListener(Ljava/util/function/Consumer;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/HdrRenderState;->mIsListenerRegistered:Z

    :cond_0
    return-void
.end method

.method blacklist updateForFrame(J)Z
    .locals 8

    iget-boolean v0, p0, Landroid/view/HdrRenderState;->mUpdateHdrSdrRatioInfo:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/HdrRenderState;->mUpdateHdrSdrRatioInfo:Z

    iget v1, p0, Landroid/view/HdrRenderState;->mTargetHdrSdrRatio:F

    iput v1, p0, Landroid/view/HdrRenderState;->mRenderHdrSdrRatio:F

    iget-wide v1, p0, Landroid/view/HdrRenderState;->mLastUpdateMillis:J

    sub-long v1, p1, v1

    const-wide/16 v3, 0x20

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    const-wide/16 v3, 0x8

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    long-to-float v3, v1

    const v4, 0x3c23d70a    # 0.01f

    mul-float/2addr v3, v4

    iput-wide p1, p0, Landroid/view/HdrRenderState;->mLastUpdateMillis:J

    if-eqz v0, :cond_3

    sget-boolean v4, Landroid/view/HdrRenderState;->FLAG_ANIMATE_ENABLED:Z

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/view/HdrRenderState;->isHdrEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/view/HdrRenderState;->mTargetHdrSdrRatio:F

    iget v5, p0, Landroid/view/HdrRenderState;->mPreviousRenderRatio:F

    sub-float/2addr v4, v5

    cmpl-float v5, v4, v3

    const/4 v6, 0x1

    if-lez v5, :cond_0

    iget v5, p0, Landroid/view/HdrRenderState;->mPreviousRenderRatio:F

    add-float/2addr v5, v3

    iput v5, p0, Landroid/view/HdrRenderState;->mRenderHdrSdrRatio:F

    iput-boolean v6, p0, Landroid/view/HdrRenderState;->mUpdateHdrSdrRatioInfo:Z

    iget-object v5, p0, Landroid/view/HdrRenderState;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v5}, Landroid/view/ViewRootImpl;->invalidate()V

    :cond_0
    iget v5, p0, Landroid/view/HdrRenderState;->mRenderHdrSdrRatio:F

    iput v5, p0, Landroid/view/HdrRenderState;->mPreviousRenderRatio:F

    iget v5, p0, Landroid/view/HdrRenderState;->mTargetDesiredHdrSdrRatio:F

    iget v7, p0, Landroid/view/HdrRenderState;->mDesiredHdrSdrRatio:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_1

    iget v5, p0, Landroid/view/HdrRenderState;->mTargetDesiredHdrSdrRatio:F

    iget v7, p0, Landroid/view/HdrRenderState;->mDesiredHdrSdrRatio:F

    sub-float/2addr v7, v3

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Landroid/view/HdrRenderState;->mDesiredHdrSdrRatio:F

    iget v5, p0, Landroid/view/HdrRenderState;->mDesiredHdrSdrRatio:F

    iget v7, p0, Landroid/view/HdrRenderState;->mTargetDesiredHdrSdrRatio:F

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_1

    iput-boolean v6, p0, Landroid/view/HdrRenderState;->mUpdateHdrSdrRatioInfo:Z

    iget-object v5, p0, Landroid/view/HdrRenderState;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v5}, Landroid/view/ViewRootImpl;->invalidate()V

    :cond_1
    goto :goto_0

    :cond_2
    iget v4, p0, Landroid/view/HdrRenderState;->mTargetHdrSdrRatio:F

    iput v4, p0, Landroid/view/HdrRenderState;->mPreviousRenderRatio:F

    iget v4, p0, Landroid/view/HdrRenderState;->mTargetDesiredHdrSdrRatio:F

    iput v4, p0, Landroid/view/HdrRenderState;->mDesiredHdrSdrRatio:F

    :cond_3
    :goto_0
    return v0
.end method
