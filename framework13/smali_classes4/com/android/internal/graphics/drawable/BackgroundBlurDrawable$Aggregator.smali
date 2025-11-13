.class public final Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;
.super Ljava/lang/Object;
.source "BackgroundBlurDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Aggregator"
.end annotation


# instance fields
.field private final blacklist mDrawables:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFrameRtUpdates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mHasUiUpdates:Z

.field private blacklist mLastFrameBlurRegions:[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

.field private blacklist mLastFrameNumber:J

.field private blacklist mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private final blacklist mRtLock:Ljava/lang/Object;

.field private blacklist mTmpBlurRegionsForFrame:[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

.field private blacklist mViewRoot:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .locals 2
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mRtLock:Ljava/lang/Object;

    .line 317
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mDrawables:Landroid/util/ArraySet;

    .line 318
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mFrameRtUpdates:Landroid/util/LongSparseArray;

    .line 320
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mLastFrameNumber:J

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mLastFrameBlurRegions:[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    .line 323
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    iput-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mTmpBlurRegionsForFrame:[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    .line 329
    invoke-virtual {p0, p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->setViewRoot(Landroid/view/ViewRootImpl;)V

    .line 330
    return-void
.end method

.method private blacklist handleDispatchBlurTransactionLocked(J[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;Z)V
    .locals 2
    .param p1, "frameNumber"    # J
    .param p3, "blurRegions"    # [Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;
    .param p4, "forceUpdate"    # Z

    .line 534
    nop

    .line 535
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->getBlurRegionsForFrameLocked(J[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;Z)[[F

    move-result-object v0

    .line 536
    .local v0, "blurRegionsArray":[[F
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mViewRoot:Landroid/view/ViewRootImpl;

    if-eqz v1, :cond_0

    .line 537
    invoke-virtual {v1, v0, p1, p2}, Landroid/view/ViewRootImpl;->dispatchBlurRegions([[FJ)V

    .line 539
    :cond_0
    return-void
.end method

.method private blacklist registerPreDrawListener()V
    .locals 2

    .line 397
    new-instance v0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;)V

    iput-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 420
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 421
    return-void
.end method


# virtual methods
.method public blacklist createBackgroundBlurDrawable(Landroid/content/Context;)Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 341
    new-instance v0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;-><init>(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable-IA;)V

    .line 342
    .local v0, "drawable":Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050129

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->setBlurRadius(I)V

    .line 344
    return-object v0
.end method

.method public blacklist getBlurRegionsCopyForRT()[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;
    .locals 4

    .line 476
    iget-boolean v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mHasUiUpdates:Z

    if-eqz v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mDrawables:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    iput-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mTmpBlurRegionsForFrame:[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    .line 478
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mDrawables:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mTmpBlurRegionsForFrame:[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    new-instance v2, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    iget-object v3, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mDrawables:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    invoke-direct {v2, v3}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;-><init>(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)V

    aput-object v2, v1, v0

    .line 478
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 481
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mHasUiUpdates:Z

    .line 484
    :cond_1
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mTmpBlurRegionsForFrame:[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    return-object v0
.end method

.method public blacklist getBlurRegionsForFrameLocked(J[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;Z)[[F
    .locals 4
    .param p1, "frameNumber"    # J
    .param p3, "blurRegionsForFrame"    # [Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;
    .param p4, "forceUpdate"    # Z

    .line 496
    const/4 v0, 0x0

    if-nez p4, :cond_1

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mFrameRtUpdates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mFrameRtUpdates:Landroid/util/LongSparseArray;

    .line 497
    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-lez v1, :cond_1

    .line 498
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 506
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mFrameRtUpdates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mFrameRtUpdates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-gtz v1, :cond_3

    .line 507
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mFrameRtUpdates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 508
    .local v1, "frameUpdates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Runnable;>;"
    iget-object v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mFrameRtUpdates:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 509
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 510
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 509
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 512
    .end local v1    # "frameUpdates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Runnable;>;"
    .end local v2    # "i":I
    :cond_2
    goto :goto_0

    .line 514
    :cond_3
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 515
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dispatching "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " blur regions:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_4
    array-length v0, p3

    new-array v0, v0, [[F

    .line 519
    .local v0, "blurRegionsArray":[[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_6

    .line 520
    aget-object v2, p3, v1

    invoke-virtual {v2}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->toFloatArray()[F

    move-result-object v2

    aput-object v2, v0, v1

    .line 521
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 522
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p3, v1

    invoke-virtual {v3}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 525
    .end local v1    # "i":I
    :cond_6
    return-object v0
.end method

.method public blacklist hasRegions()Z
    .locals 3

    .line 463
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasRegions "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mDrawables:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mDrawables:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist hasUpdates()Z
    .locals 3

    .line 450
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasUpdates "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mHasUiUpdates:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mHasUiUpdates:Z

    return v0
.end method

.method synthetic blacklist lambda$registerPreDrawListener$0$com-android-internal-graphics-drawable-BackgroundBlurDrawable$Aggregator([Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;ZJ)V
    .locals 2
    .param p1, "blurRegionsForNextFrame"    # [Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;
    .param p2, "hasUiUpdates"    # Z
    .param p3, "frame"    # J

    .line 404
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mRtLock:Ljava/lang/Object;

    monitor-enter v0

    .line 405
    :try_start_0
    iput-wide p3, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mLastFrameNumber:J

    .line 406
    iput-object p1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mLastFrameBlurRegions:[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    .line 407
    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->handleDispatchBlurTransactionLocked(J[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;Z)V

    .line 409
    monitor-exit v0

    .line 410
    return-void

    .line 409
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic blacklist lambda$registerPreDrawListener$1$com-android-internal-graphics-drawable-BackgroundBlurDrawable$Aggregator()Z
    .locals 4

    .line 398
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->hasUpdates()Z

    move-result v0

    .line 400
    .local v0, "hasUiUpdates":Z
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->hasRegions()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 401
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->getBlurRegionsCopyForRT()[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    move-result-object v1

    .line 403
    .local v1, "blurRegionsForNextFrame":[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;
    iget-object v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mViewRoot:Landroid/view/ViewRootImpl;

    new-instance v3, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;Z)V

    invoke-virtual {v2, v3}, Landroid/view/ViewRootImpl;->registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    .line 412
    .end local v1    # "blurRegionsForNextFrame":[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->hasRegions()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 413
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 414
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 415
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 417
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method blacklist onBlurDrawableUpdated(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)V
    .locals 6
    .param p1, "drawable"    # Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    .line 352
    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmAlpha(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmBlurRadius(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmVisible(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 354
    .local v0, "shouldBeDrawn":Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mDrawables:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 357
    .local v2, "isDrawn":Z
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetDEBUG()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 358
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onBlurDrawableUpdated "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", shouldBeDrawn : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isDrawn : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mDrawables:Landroid/util/ArraySet;

    .line 361
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    .line 362
    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 358
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_1
    if-eqz v0, :cond_3

    .line 367
    iput-boolean v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mHasUiUpdates:Z

    .line 368
    if-nez v2, :cond_2

    .line 369
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mDrawables:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 370
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 371
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 374
    :cond_2
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 375
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 378
    :cond_3
    if-nez v0, :cond_4

    if-eqz v2, :cond_4

    .line 379
    iput-boolean v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mHasUiUpdates:Z

    .line 380
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mDrawables:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 381
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 382
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remove "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mViewRoot:Landroid/view/ViewRootImpl;

    if-eqz v1, :cond_5

    .line 390
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 391
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->hasRegions()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 392
    invoke-direct {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->registerPreDrawListener()V

    .line 394
    :cond_5
    return-void
.end method

.method blacklist onRenderNodePositionChanged(JLjava/lang/Runnable;)V
    .locals 4
    .param p1, "frameNumber"    # J
    .param p3, "update"    # Ljava/lang/Runnable;

    .line 427
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mRtLock:Ljava/lang/Object;

    monitor-enter v0

    .line 428
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mFrameRtUpdates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 429
    .local v1, "frameRtUpdates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Runnable;>;"
    if-nez v1, :cond_0

    .line 430
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    .line 431
    iget-object v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mFrameRtUpdates:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p1, p2, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 433
    :cond_0
    invoke-virtual {v1, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 435
    iget-wide v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mLastFrameNumber:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_1

    .line 438
    iget-object v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mLastFrameBlurRegions:[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->handleDispatchBlurTransactionLocked(J[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;Z)V

    .line 440
    .end local v1    # "frameRtUpdates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Runnable;>;"
    :cond_1
    monitor-exit v0

    .line 442
    return-void

    .line 440
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setViewRoot(Landroid/view/ViewRootImpl;)V
    .locals 0
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;

    .line 333
    iput-object p1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mViewRoot:Landroid/view/ViewRootImpl;

    .line 334
    return-void
.end method
