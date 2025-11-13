.class public Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;
.super Ljava/lang/Object;
.source "AnimatedVectorDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;
.implements Landroid/view/NativeVectorDrawableAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedVectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VectorDrawableAnimatorRT"
.end annotation


# static fields
.field private static final greylist-max-o END_ANIMATION:I = 0x4

.field private static final greylist-max-o MAX_SAMPLE_POINTS:I = 0x12c

.field private static final greylist-max-o RESET_ANIMATION:I = 0x3

.field private static final greylist-max-o REVERSE_ANIMATION:I = 0x2

.field private static final greylist-max-o START_ANIMATION:I = 0x1


# instance fields
.field private greylist-max-o mContainsSequentialAnimators:Z

.field private final greylist-max-o mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private blacklist mHandler:Landroid/os/Handler;

.field private greylist-max-o mInitialized:Z

.field private greylist-max-o mIsInfinite:Z

.field private greylist-max-o mIsReversible:Z

.field private greylist-max-o mLastListenerId:I

.field private greylist-max-o mLastSeenTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/RenderNode;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mListener:Landroid/animation/Animator$AnimatorListener;

.field private final greylist-max-o mPendingAnimationActions:Landroid/util/IntArray;

.field private greylist-max-o mSetPtr:J

.field private final greylist-max-o mSetRefBasePtr:Lcom/android/internal/util/VirtualRefBasePtr;

.field private final greylist-max-o mStartDelays:Landroid/util/LongArray;

.field private greylist-max-o mStarted:Z

.field private greylist-max-o mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

.field private blacklist mTotalDuration:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    iget-object p0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingAnimationActions(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)Landroid/util/IntArray;
    .locals 0

    iget-object p0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mtransferPendingActions(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->transferPendingActions(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;)V

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/graphics/drawable/AnimatedVectorDrawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 1270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1253
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    .line 1254
    new-instance v1, Landroid/util/LongArray;

    invoke-direct {v1}, Landroid/util/LongArray;-><init>()V

    iput-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStartDelays:Landroid/util/LongArray;

    .line 1255
    new-instance v1, Landroid/animation/PropertyValuesHolder$PropertyValues;

    invoke-direct {v1}, Landroid/animation/PropertyValuesHolder$PropertyValues;-><init>()V

    iput-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    .line 1257
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    .line 1258
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mContainsSequentialAnimators:Z

    .line 1259
    iput-boolean v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStarted:Z

    .line 1260
    iput-boolean v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    .line 1261
    iput-boolean v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsReversible:Z

    .line 1262
    iput-boolean v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsInfinite:Z

    .line 1264
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastSeenTarget:Ljava/lang/ref/WeakReference;

    .line 1265
    iput v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastListenerId:I

    .line 1266
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    .line 1271
    iput-object p1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 1272
    invoke-static {}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$smnCreateAnimatorSet()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    .line 1275
    new-instance v2, Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/util/VirtualRefBasePtr;-><init>(J)V

    iput-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetRefBasePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 1276
    return-void
.end method

.method private greylist-max-o addPendingAction(I)V
    .locals 1
    .param p1, "pendingAnimationAction"    # I

    .line 1612
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->invalidateOwningView()V

    .line 1613
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    .line 1614
    return-void
.end method

.method private static greylist-max-r callOnFinished(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V
    .locals 2
    .param p0, "set"    # Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;
    .param p1, "id"    # I

    .line 1796
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1797
    return-void
.end method

.method private static greylist-max-o createFloatDataPoints(Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;J)[F
    .locals 6
    .param p0, "dataSource"    # Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;
    .param p1, "duration"    # J

    .line 1515
    invoke-static {p1, p2}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->getFrameCount(J)I

    move-result v0

    .line 1516
    .local v0, "numAnimFrames":I
    new-array v1, v0, [F

    .line 1517
    .local v1, "values":[F
    add-int/lit8 v2, v0, -0x1

    int-to-float v2, v2

    .line 1518
    .local v2, "lastFrame":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 1519
    int-to-float v4, v3

    div-float/2addr v4, v2

    .line 1520
    .local v4, "fraction":F
    invoke-interface {p0, v4}, Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;->getValueAtFraction(F)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    aput v5, v1, v3

    .line 1518
    .end local v4    # "fraction":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1522
    .end local v3    # "i":I
    :cond_0
    return-object v1
.end method

.method private static greylist-max-o createIntDataPoints(Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;J)[I
    .locals 6
    .param p0, "dataSource"    # Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;
    .param p1, "duration"    # J

    .line 1527
    invoke-static {p1, p2}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->getFrameCount(J)I

    move-result v0

    .line 1528
    .local v0, "numAnimFrames":I
    new-array v1, v0, [I

    .line 1529
    .local v1, "values":[I
    add-int/lit8 v2, v0, -0x1

    int-to-float v2, v2

    .line 1530
    .local v2, "lastFrame":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 1531
    int-to-float v4, v3

    div-float/2addr v4, v2

    .line 1532
    .local v4, "fraction":F
    invoke-interface {p0, v4}, Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;->getValueAtFraction(F)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v1, v3

    .line 1530
    .end local v4    # "fraction":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1534
    .end local v3    # "i":I
    :cond_0
    return-object v1
.end method

.method private greylist-max-o createNativeChildAnimator(JJLandroid/animation/ObjectAnimator;)V
    .locals 22
    .param p1, "propertyPtr"    # J
    .param p3, "extraDelay"    # J
    .param p5, "animator"    # Landroid/animation/ObjectAnimator;

    .line 1539
    move-object/from16 v0, p0

    invoke-virtual/range {p5 .. p5}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v1

    .line 1540
    .local v1, "duration":J
    invoke-virtual/range {p5 .. p5}, Landroid/animation/ObjectAnimator;->getRepeatCount()I

    move-result v15

    .line 1541
    .local v15, "repeatCount":I
    invoke-virtual/range {p5 .. p5}, Landroid/animation/ObjectAnimator;->getStartDelay()J

    move-result-wide v3

    add-long v3, p3, v3

    .line 1542
    .local v3, "startDelay":J
    invoke-virtual/range {p5 .. p5}, Landroid/animation/ObjectAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v14

    .line 1543
    .local v14, "interpolator":Landroid/animation/TimeInterpolator;
    nop

    .line 1544
    invoke-static {v14, v1, v2}, Landroid/graphics/animation/NativeInterpolatorFactory;->createNativeInterpolator(Landroid/animation/TimeInterpolator;J)J

    move-result-wide v16

    .line 1546
    .local v16, "nativeInterpolator":J
    long-to-float v5, v3

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-long v11, v5

    .line 1547
    .end local v3    # "startDelay":J
    .local v11, "startDelay":J
    long-to-float v3, v1

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-long v1, v3

    .line 1549
    iget-object v3, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStartDelays:Landroid/util/LongArray;

    invoke-virtual {v3, v11, v12}, Landroid/util/LongArray;->add(J)V

    .line 1550
    iget-wide v3, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    .line 1551
    invoke-virtual/range {p5 .. p5}, Landroid/animation/ObjectAnimator;->getRepeatMode()I

    move-result v18

    .line 1550
    move-wide/from16 v5, p1

    move-wide/from16 v7, v16

    move-wide v9, v11

    move-wide/from16 v19, v11

    .end local v11    # "startDelay":J
    .local v19, "startDelay":J
    move-wide v11, v1

    move v13, v15

    move-object/from16 v21, v14

    .end local v14    # "interpolator":Landroid/animation/TimeInterpolator;
    .local v21, "interpolator":Landroid/animation/TimeInterpolator;
    move/from16 v14, v18

    invoke-static/range {v3 .. v14}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$smnAddAnimator(JJJJJII)V

    .line 1552
    return-void
.end method

.method private greylist-max-o createRTAnimator(Landroid/animation/ObjectAnimator;J)V
    .locals 8
    .param p1, "animator"    # Landroid/animation/ObjectAnimator;
    .param p2, "startTime"    # J

    .line 1334
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 1335
    .local v6, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v7

    .line 1336
    .local v7, "target":Ljava/lang/Object;
    instance-of v0, v7, Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-eqz v0, :cond_0

    .line 1337
    move-object v3, v7

    check-cast v3, Landroid/graphics/drawable/VectorDrawable$VGroup;

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createRTAnimatorForGroup([Landroid/animation/PropertyValuesHolder;Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VGroup;J)V

    goto :goto_2

    .line 1339
    :cond_0
    instance-of v0, v7, Landroid/graphics/drawable/VectorDrawable$VPath;

    if-eqz v0, :cond_5

    .line 1340
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, v6

    if-ge v0, v1, :cond_4

    .line 1341
    aget-object v1, v6, v0

    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    invoke-virtual {v1, v2}, Landroid/animation/PropertyValuesHolder;->getPropertyValues(Landroid/animation/PropertyValuesHolder$PropertyValues;)V

    .line 1342
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    instance-of v1, v1, Landroid/util/PathParser$PathData;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->propertyName:Ljava/lang/String;

    .line 1343
    const-string/jumbo v2, "pathData"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1344
    move-object v1, v7

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VPath;

    invoke-direct {p0, p1, v1, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createRTAnimatorForPath(Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VPath;J)V

    goto :goto_1

    .line 1346
    :cond_1
    instance-of v1, v7, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    if-eqz v1, :cond_2

    .line 1347
    move-object v1, v7

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    invoke-direct {p0, p1, v1, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createRTAnimatorForFullPath(Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VFullPath;J)V

    goto :goto_1

    .line 1349
    :cond_2
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-static {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$fgetmAnimatedVectorState(Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->-$$Nest$fgetmShouldIgnoreInvalidAnim(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1340
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1350
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ClipPath only supports PathData property"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1340
    .end local v0    # "i":I
    :cond_4
    goto :goto_2

    .line 1354
    :cond_5
    instance-of v0, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    if-eqz v0, :cond_6

    .line 1355
    move-object v3, v7

    check-cast v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createRTAnimatorForRootGroup([Landroid/animation/PropertyValuesHolder;Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;J)V

    .line 1358
    :cond_6
    :goto_2
    return-void
.end method

.method private greylist-max-o createRTAnimatorForFullPath(Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VFullPath;J)V
    .locals 13
    .param p1, "animator"    # Landroid/animation/ObjectAnimator;
    .param p2, "target"    # Landroid/graphics/drawable/VectorDrawable$VFullPath;
    .param p3, "startTime"    # J

    .line 1410
    move-object v6, p0

    iget-object v0, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v0, v0, Landroid/animation/PropertyValuesHolder$PropertyValues;->propertyName:Ljava/lang/String;

    move-object v7, p2

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getPropertyIndex(Ljava/lang/String;)I

    move-result v8

    .line 1412
    .local v8, "propertyId":I
    invoke-virtual {p2}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getNativePtr()J

    move-result-wide v9

    .line 1413
    .local v9, "nativePtr":J
    iget-object v0, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v0, v0, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    const-class v1, Ljava/lang/Float;

    if-eq v0, v1, :cond_4

    iget-object v0, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v0, v0, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 1431
    :cond_0
    iget-object v0, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v0, v0, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    const-class v1, Ljava/lang/Integer;

    if-eq v0, v1, :cond_3

    iget-object v0, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v0, v0, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 1441
    :cond_1
    iget-object v0, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-static {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$fgetmAnimatedVectorState(Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->-$$Nest$fgetmShouldIgnoreInvalidAnim(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1442
    return-void

    .line 1444
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v2, v2, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Only float, int or PathData value is supported for Paths."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1432
    :cond_3
    :goto_0
    iget-object v0, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v0, v0, Landroid/animation/PropertyValuesHolder$PropertyValues;->startValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 1433
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1432
    invoke-static {v9, v10, v8, v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$smnCreatePathColorPropertyHolder(JIII)J

    move-result-wide v0

    .line 1434
    .local v0, "propertyPtr":J
    iget-object v2, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v2, v2, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    if-eqz v2, :cond_7

    .line 1436
    iget-object v2, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v2, v2, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    .line 1437
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v3

    .line 1436
    invoke-static {v2, v3, v4}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createIntDataPoints(Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;J)[I

    move-result-object v2

    .line 1438
    .local v2, "dataPoints":[I
    array-length v3, v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$smnSetPropertyHolderData(J[II)V

    .line 1439
    .end local v2    # "dataPoints":[I
    goto :goto_2

    .line 1414
    .end local v0    # "propertyPtr":J
    :cond_4
    :goto_1
    if-gez v8, :cond_6

    .line 1415
    iget-object v0, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-static {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$fgetmAnimatedVectorState(Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->-$$Nest$fgetmShouldIgnoreInvalidAnim(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1416
    return-void

    .line 1418
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v2, v2, Landroid/animation/PropertyValuesHolder$PropertyValues;->propertyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported for FullPath"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1422
    :cond_6
    iget-object v0, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v0, v0, Landroid/animation/PropertyValuesHolder$PropertyValues;->startValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    .line 1423
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1422
    invoke-static {v9, v10, v8, v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$smnCreatePathPropertyHolder(JIFF)J

    move-result-wide v0

    .line 1424
    .restart local v0    # "propertyPtr":J
    iget-object v2, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v2, v2, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    if-eqz v2, :cond_7

    .line 1426
    iget-object v2, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v2, v2, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    .line 1427
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v3

    .line 1426
    invoke-static {v2, v3, v4}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createFloatDataPoints(Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;J)[F

    move-result-object v2

    .line 1428
    .local v2, "dataPoints":[F
    array-length v3, v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$smnSetPropertyHolderData(J[FI)V

    .line 1449
    .end local v2    # "dataPoints":[F
    :cond_7
    :goto_2
    move-wide v11, v0

    .end local v0    # "propertyPtr":J
    .local v11, "propertyPtr":J
    move-object v0, p0

    move-wide v1, v11

    move-wide/from16 v3, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createNativeChildAnimator(JJLandroid/animation/ObjectAnimator;)V

    .line 1450
    return-void
.end method

.method private greylist-max-o createRTAnimatorForGroup([Landroid/animation/PropertyValuesHolder;Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VGroup;J)V
    .locals 14
    .param p1, "values"    # [Landroid/animation/PropertyValuesHolder;
    .param p2, "animator"    # Landroid/animation/ObjectAnimator;
    .param p3, "target"    # Landroid/graphics/drawable/VectorDrawable$VGroup;
    .param p4, "startTime"    # J

    .line 1364
    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getNativePtr()J

    move-result-wide v8

    .line 1366
    .local v8, "nativePtr":J
    const/4 v0, 0x0

    move v10, v0

    .local v10, "i":I
    :goto_0
    array-length v0, v7

    if-ge v10, v0, :cond_3

    .line 1368
    aget-object v0, v7, v10

    iget-object v1, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    invoke-virtual {v0, v1}, Landroid/animation/PropertyValuesHolder;->getPropertyValues(Landroid/animation/PropertyValuesHolder$PropertyValues;)V

    .line 1369
    iget-object v0, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v0, v0, Landroid/animation/PropertyValuesHolder$PropertyValues;->propertyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getPropertyIndex(Ljava/lang/String;)I

    move-result v11

    .line 1370
    .local v11, "propertyId":I
    iget-object v0, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v0, v0, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    const-class v1, Ljava/lang/Float;

    if-eq v0, v1, :cond_0

    iget-object v0, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v0, v0, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_0

    .line 1375
    goto :goto_1

    .line 1377
    :cond_0
    if-gez v11, :cond_1

    .line 1382
    goto :goto_1

    .line 1384
    :cond_1
    iget-object v0, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v0, v0, Landroid/animation/PropertyValuesHolder$PropertyValues;->startValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    .line 1385
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1384
    invoke-static {v8, v9, v11, v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$smnCreateGroupPropertyHolder(JIFF)J

    move-result-wide v12

    .line 1386
    .local v12, "propertyPtr":J
    iget-object v0, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v0, v0, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    if-eqz v0, :cond_2

    .line 1387
    iget-object v0, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v0, v0, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    .line 1388
    invoke-virtual/range {p2 .. p2}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v1

    .line 1387
    invoke-static {v0, v1, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createFloatDataPoints(Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;J)[F

    move-result-object v0

    .line 1389
    .local v0, "dataPoints":[F
    array-length v1, v0

    invoke-static {v12, v13, v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$smnSetPropertyHolderData(J[FI)V

    .line 1391
    .end local v0    # "dataPoints":[F
    :cond_2
    move-object v0, p0

    move-wide v1, v12

    move-wide/from16 v3, p4

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createNativeChildAnimator(JJLandroid/animation/ObjectAnimator;)V

    .line 1366
    .end local v12    # "propertyPtr":J
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1393
    .end local v10    # "i":I
    .end local v11    # "propertyId":I
    :cond_3
    return-void
.end method

.method private greylist-max-o createRTAnimatorForPath(Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VPath;J)V
    .locals 15
    .param p1, "animator"    # Landroid/animation/ObjectAnimator;
    .param p2, "target"    # Landroid/graphics/drawable/VectorDrawable$VPath;
    .param p3, "startTime"    # J

    .line 1397
    move-object v6, p0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/VectorDrawable$VPath;->getNativePtr()J

    move-result-wide v7

    .line 1398
    .local v7, "nativePtr":J
    iget-object v0, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v0, v0, Landroid/animation/PropertyValuesHolder$PropertyValues;->startValue:Ljava/lang/Object;

    check-cast v0, Landroid/util/PathParser$PathData;

    .line 1399
    invoke-virtual {v0}, Landroid/util/PathParser$PathData;->getNativePtr()J

    move-result-wide v9

    .line 1400
    .local v9, "startPathDataPtr":J
    iget-object v0, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v0, v0, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    check-cast v0, Landroid/util/PathParser$PathData;

    .line 1401
    invoke-virtual {v0}, Landroid/util/PathParser$PathData;->getNativePtr()J

    move-result-wide v11

    .line 1402
    .local v11, "endPathDataPtr":J
    move-wide v0, v7

    move-wide v2, v9

    move-wide v4, v11

    invoke-static/range {v0 .. v5}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$smnCreatePathDataPropertyHolder(JJJ)J

    move-result-wide v13

    .line 1404
    .local v13, "propertyPtr":J
    move-object v0, p0

    move-wide v1, v13

    move-wide/from16 v3, p3

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createNativeChildAnimator(JJLandroid/animation/ObjectAnimator;)V

    .line 1405
    return-void
.end method

.method private greylist-max-o createRTAnimatorForRootGroup([Landroid/animation/PropertyValuesHolder;Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;J)V
    .locals 14
    .param p1, "values"    # [Landroid/animation/PropertyValuesHolder;
    .param p2, "animator"    # Landroid/animation/ObjectAnimator;
    .param p3, "target"    # Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    .param p4, "startTime"    # J

    .line 1455
    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getNativeRenderer()J

    move-result-wide v8

    .line 1456
    .local v8, "nativePtr":J
    invoke-virtual/range {p2 .. p2}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "alpha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1457
    iget-object v0, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-static {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$fgetmAnimatedVectorState(Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->-$$Nest$fgetmShouldIgnoreInvalidAnim(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1458
    return-void

    .line 1460
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Only alpha is supported for root group"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1464
    :cond_1
    const/4 v0, 0x0

    .line 1465
    .local v0, "startValue":Ljava/lang/Float;
    const/4 v2, 0x0

    .line 1466
    .local v2, "endValue":Ljava/lang/Float;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v7

    if-ge v3, v4, :cond_3

    .line 1467
    aget-object v4, v7, v3

    iget-object v5, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    invoke-virtual {v4, v5}, Landroid/animation/PropertyValuesHolder;->getPropertyValues(Landroid/animation/PropertyValuesHolder$PropertyValues;)V

    .line 1468
    iget-object v4, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v4, v4, Landroid/animation/PropertyValuesHolder$PropertyValues;->propertyName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1469
    iget-object v1, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->startValue:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Ljava/lang/Float;

    .line 1470
    iget-object v1, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljava/lang/Float;

    .line 1471
    move-object v10, v0

    move-object v11, v2

    goto :goto_1

    .line 1466
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move-object v10, v0

    move-object v11, v2

    .line 1474
    .end local v0    # "startValue":Ljava/lang/Float;
    .end local v2    # "endValue":Ljava/lang/Float;
    .end local v3    # "i":I
    .local v10, "startValue":Ljava/lang/Float;
    .local v11, "endValue":Ljava/lang/Float;
    :goto_1
    if-nez v10, :cond_5

    if-nez v11, :cond_5

    .line 1475
    iget-object v0, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-static {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$fgetmAnimatedVectorState(Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->-$$Nest$fgetmShouldIgnoreInvalidAnim(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1476
    return-void

    .line 1478
    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No alpha values are specified"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1481
    :cond_5
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v8, v9, v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$smnCreateRootAlphaPropertyHolder(JFF)J

    move-result-wide v12

    .line 1482
    .local v12, "propertyPtr":J
    iget-object v0, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v0, v0, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    if-eqz v0, :cond_6

    .line 1484
    iget-object v0, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v0, v0, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    .line 1485
    invoke-virtual/range {p2 .. p2}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v1

    .line 1484
    invoke-static {v0, v1, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createFloatDataPoints(Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;J)[F

    move-result-object v0

    .line 1486
    .local v0, "dataPoints":[F
    array-length v1, v0

    invoke-static {v12, v13, v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$smnSetPropertyHolderData(J[FI)V

    .line 1488
    .end local v0    # "dataPoints":[F
    :cond_6
    move-object v0, p0

    move-wide v1, v12

    move-wide/from16 v3, p4

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createNativeChildAnimator(JJLandroid/animation/ObjectAnimator;)V

    .line 1489
    return-void
.end method

.method private greylist-max-o endAnimation()V
    .locals 2

    .line 1702
    iget-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$smnEnd(J)V

    .line 1703
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->invalidateOwningView()V

    .line 1704
    return-void
.end method

.method private static greylist-max-o getFrameCount(J)I
    .locals 7
    .param p0, "duration"    # J

    .line 1495
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameIntervalNanos()J

    move-result-wide v0

    .line 1496
    .local v0, "frameIntervalNanos":J
    const-wide/32 v2, 0xf4240

    div-long v2, v0, v2

    long-to-int v2, v2

    .line 1497
    .local v2, "animIntervalMs":I
    long-to-double v3, p0

    int-to-double v5, v2

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 1499
    .local v3, "numAnimFrames":I
    const/4 v4, 0x2

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1500
    const/16 v4, 0x12c

    if-le v3, v4, :cond_0

    .line 1501
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duration for the animation is too long :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", the animation will subsample the keyframe or path data."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AnimatedVectorDrawable"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    const/16 v3, 0x12c

    .line 1505
    :cond_0
    return v3
.end method

.method private greylist-max-o handlePendingAction(I)V
    .locals 3
    .param p1, "pendingAnimationAction"    # I

    .line 1577
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1578
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->startAnimation()V

    goto :goto_0

    .line 1579
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1580
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->reverseAnimation()V

    goto :goto_0

    .line 1581
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 1582
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->resetAnimation()V

    goto :goto_0

    .line 1583
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 1584
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->endAnimation()V

    .line 1589
    :goto_0
    return-void

    .line 1586
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animation action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o invalidateOwningView()V
    .locals 1

    .line 1608
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->invalidateSelf()V

    .line 1609
    return-void
.end method

.method static synthetic blacklist lambda$callOnFinished$0(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V
    .locals 0
    .param p0, "set"    # Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;
    .param p1, "id"    # I

    .line 1796
    invoke-direct {p0, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->onAnimationEnd(I)V

    return-void
.end method

.method private greylist-max-o onAnimationEnd(I)V
    .locals 2
    .param p1, "listenerId"    # I

    .line 1778
    iget v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastListenerId:I

    if-eq p1, v0, :cond_0

    .line 1779
    return-void

    .line 1784
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStarted:Z

    .line 1787
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->invalidateOwningView()V

    .line 1788
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_1

    .line 1789
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1791
    :cond_1
    return-void
.end method

.method private greylist-max-o parseAnimatorSet(Landroid/animation/AnimatorSet;J)V
    .locals 6
    .param p1, "set"    # Landroid/animation/AnimatorSet;
    .param p2, "startTime"    # J

    .line 1309
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    .line 1311
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->shouldPlayTogether()Z

    move-result v1

    .line 1313
    .local v1, "playTogether":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1314
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 1316
    .local v3, "animator":Landroid/animation/Animator;
    instance-of v4, v3, Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_0

    .line 1317
    move-object v4, v3

    check-cast v4, Landroid/animation/AnimatorSet;

    invoke-direct {p0, v4, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->parseAnimatorSet(Landroid/animation/AnimatorSet;J)V

    goto :goto_1

    .line 1318
    :cond_0
    instance-of v4, v3, Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_1

    .line 1319
    move-object v4, v3

    check-cast v4, Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v4, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createRTAnimator(Landroid/animation/ObjectAnimator;J)V

    .line 1323
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 1325
    invoke-virtual {v3}, Landroid/animation/Animator;->getTotalDuration()J

    move-result-wide v4

    add-long/2addr p2, v4

    .line 1326
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mContainsSequentialAnimators:Z

    .line 1313
    .end local v3    # "animator":Landroid/animation/Animator;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1329
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method private greylist-max-o resetAnimation()V
    .locals 2

    .line 1708
    iget-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$smnReset(J)V

    .line 1709
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->invalidateOwningView()V

    .line 1710
    return-void
.end method

.method private greylist-max-o reverseAnimation()V
    .locals 4

    .line 1714
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStarted:Z

    .line 1715
    iget-wide v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    iget v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastListenerId:I

    add-int/2addr v3, v0

    iput v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastListenerId:I

    invoke-static {v1, v2, p0, v3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$smnReverse(JLandroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V

    .line 1716
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->invalidateOwningView()V

    .line 1717
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 1718
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 1720
    :cond_0
    return-void
.end method

.method private greylist-max-o startAnimation()V
    .locals 4

    .line 1683
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStarted:Z

    .line 1684
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 1685
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mHandler:Landroid/os/Handler;

    .line 1687
    :cond_0
    iget-wide v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    iget v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastListenerId:I

    add-int/2addr v3, v0

    iput v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastListenerId:I

    invoke-static {v1, v2, p0, v3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$smnStart(JLandroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V

    .line 1688
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->invalidateOwningView()V

    .line 1689
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_1

    .line 1690
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 1692
    :cond_1
    return-void
.end method

.method private greylist-max-o transferPendingActions(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;)V
    .locals 5
    .param p1, "animatorSet"    # Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    .line 1800
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1801
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->get(I)I

    move-result v1

    .line 1802
    .local v1, "pendingAction":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1803
    invoke-interface {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->start()V

    goto :goto_1

    .line 1804
    :cond_0
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 1805
    invoke-interface {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->end()V

    goto :goto_1

    .line 1806
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1807
    invoke-interface {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->reverse()V

    goto :goto_1

    .line 1808
    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 1809
    invoke-interface {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->reset()V

    .line 1800
    .end local v1    # "pendingAction":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1811
    .restart local v1    # "pendingAction":I
    :cond_3
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Animation action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1815
    .end local v0    # "i":I
    .end local v1    # "pendingAction":I
    :cond_4
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    .line 1816
    return-void
.end method

.method private greylist-max-o useLastSeenTarget()Z
    .locals 2

    .line 1592
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastSeenTarget:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 1593
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RenderNode;

    .line 1594
    .local v0, "target":Landroid/graphics/RenderNode;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->useTarget(Landroid/graphics/RenderNode;)Z

    move-result v1

    return v1

    .line 1596
    .end local v0    # "target":Landroid/graphics/RenderNode;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist useTarget(Landroid/graphics/RenderNode;)Z
    .locals 1
    .param p1, "target"    # Landroid/graphics/RenderNode;

    .line 1600
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/RenderNode;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1601
    invoke-virtual {p1, p0}, Landroid/graphics/RenderNode;->registerVectorDrawableAnimator(Landroid/view/NativeVectorDrawableAnimator;)V

    .line 1602
    const/4 v0, 0x1

    return v0

    .line 1604
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist-max-o canReverse()Z
    .locals 1

    .line 1729
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsReversible:Z

    return v0
.end method

.method public greylist-max-o end()V
    .locals 1

    .line 1634
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    if-nez v0, :cond_0

    .line 1635
    return-void

    .line 1638
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->useLastSeenTarget()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1639
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->endAnimation()V

    goto :goto_0

    .line 1641
    :cond_1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->addPendingAction(I)V

    .line 1643
    :goto_0
    return-void
.end method

.method public greylist-max-o getAnimatorNativePtr()J
    .locals 2

    .line 1724
    iget-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    return-wide v0
.end method

.method public blacklist getTotalDuration()J
    .locals 2

    .line 1820
    iget-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTotalDuration:J

    return-wide v0
.end method

.method public greylist-max-o init(Landroid/animation/AnimatorSet;)V
    .locals 9
    .param p1, "set"    # Landroid/animation/AnimatorSet;

    .line 1280
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    if-nez v0, :cond_4

    .line 1285
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->parseAnimatorSet(Landroid/animation/AnimatorSet;J)V

    .line 1286
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-static {v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$fgetmAnimatedVectorState(Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    move-result-object v2

    iget-object v2, v2, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    .line 1287
    invoke-virtual {v2}, Landroid/graphics/drawable/VectorDrawable;->getNativeTree()J

    move-result-wide v2

    .line 1288
    .local v2, "vectorDrawableTreePtr":J
    iget-wide v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    invoke-static {v4, v5, v2, v3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$smnSetVectorDrawableTarget(JJ)V

    .line 1289
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    .line 1290
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTotalDuration:J

    .line 1291
    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    const/4 v6, 0x0

    if-nez v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    iput-boolean v5, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsInfinite:Z

    .line 1294
    iput-boolean v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsReversible:Z

    .line 1295
    iget-boolean v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mContainsSequentialAnimators:Z

    if-eqz v4, :cond_1

    .line 1296
    iput-boolean v6, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsReversible:Z

    goto :goto_2

    .line 1299
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v5, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStartDelays:Landroid/util/LongArray;

    invoke-virtual {v5}, Landroid/util/LongArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 1300
    iget-object v5, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStartDelays:Landroid/util/LongArray;

    invoke-virtual {v5, v4}, Landroid/util/LongArray;->get(I)J

    move-result-wide v7

    cmp-long v5, v7, v0

    if-lez v5, :cond_2

    .line 1301
    iput-boolean v6, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsReversible:Z

    .line 1302
    return-void

    .line 1299
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1306
    .end local v4    # "i":I
    :cond_3
    :goto_2
    return-void

    .line 1282
    .end local v2    # "vectorDrawableTreePtr":J
    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "VectorDrawableAnimator cannot be re-initialized"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o isInfinite()Z
    .locals 1

    .line 1764
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsInfinite:Z

    return v0
.end method

.method public greylist-max-o isRunning()Z
    .locals 1

    .line 1739
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    if-nez v0, :cond_0

    .line 1740
    const/4 v0, 0x0

    return v0

    .line 1742
    :cond_0
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStarted:Z

    return v0
.end method

.method public greylist-max-o isStarted()Z
    .locals 1

    .line 1734
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStarted:Z

    return v0
.end method

.method public greylist-max-o onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1757
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1758
    move-object v0, p1

    check-cast v0, Landroid/graphics/RecordingCanvas;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->recordLastSeenTarget(Landroid/graphics/RecordingCanvas;)V

    .line 1760
    :cond_0
    return-void
.end method

.method public greylist-max-o pause()V
    .locals 0

    .line 1770
    return-void
.end method

.method protected blacklist recordLastSeenTarget(Landroid/graphics/RecordingCanvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/RecordingCanvas;

    .line 1560
    iget-object v0, p1, Landroid/graphics/RecordingCanvas;->mNode:Landroid/graphics/RenderNode;

    .line 1561
    .local v0, "node":Landroid/graphics/RenderNode;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastSeenTarget:Ljava/lang/ref/WeakReference;

    .line 1563
    iget-boolean v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1564
    :cond_0
    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->useTarget(Landroid/graphics/RenderNode;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1568
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1569
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    invoke-virtual {v2, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    invoke-direct {p0, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->handlePendingAction(I)V

    .line 1568
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1571
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->clear()V

    .line 1574
    :cond_2
    return-void
.end method

.method public greylist-max-o removeListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 1752
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    .line 1753
    return-void
.end method

.method public greylist-max-o reset()V
    .locals 1

    .line 1647
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    if-nez v0, :cond_0

    .line 1648
    return-void

    .line 1651
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->useLastSeenTarget()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1652
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->resetAnimation()V

    goto :goto_0

    .line 1654
    :cond_1
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->addPendingAction(I)V

    .line 1656
    :goto_0
    return-void
.end method

.method public greylist-max-o resume()V
    .locals 0

    .line 1775
    return-void
.end method

.method public greylist-max-o reverse()V
    .locals 1

    .line 1662
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsReversible:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1665
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->useLastSeenTarget()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1669
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->reverseAnimation()V

    goto :goto_0

    .line 1671
    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->addPendingAction(I)V

    .line 1673
    :goto_0
    return-void

    .line 1663
    :cond_2
    :goto_1
    return-void
.end method

.method public greylist-max-o setListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 1747
    iput-object p1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    .line 1748
    return-void
.end method

.method public greylist-max-o start()V
    .locals 1

    .line 1618
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    if-nez v0, :cond_0

    .line 1619
    return-void

    .line 1622
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->useLastSeenTarget()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1626
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->startAnimation()V

    goto :goto_0

    .line 1628
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->addPendingAction(I)V

    .line 1630
    :goto_0
    return-void
.end method
