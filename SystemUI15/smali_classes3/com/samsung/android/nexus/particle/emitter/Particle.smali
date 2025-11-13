.class public final Lcom/samsung/android/nexus/particle/emitter/Particle;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final mEmitterScheduleComparator:Lcom/samsung/android/nexus/particle/emitter/Particle$$ExternalSyntheticLambda0;

.field public static sDensity:F

.field public static final sPaint:Landroid/graphics/Paint;

.field public static final sPool:Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedListPool;


# instance fields
.field public mColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field public final mEmitterSchedules:Ljava/util/ArrayList;

.field public mEnable:Z

.field public mEnableEmission:Z

.field public mEndTime:J

.field public mFraction:F

.field public mIsInSight:Z

.field public mLifeTime:J

.field public mParentEmitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

.field public mParticleTexture:Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;

.field public mScheduleCheckLock:Z

.field public mStartTime:J

.field public mSubEmitterKey:Ljava/lang/String;

.field public final mTempEmitterSchedules:Ljava/util/ArrayList;

.field public final mTempWorldBounds:Landroid/graphics/RectF;

.field public next:Lcom/samsung/android/nexus/particle/emitter/Particle;

.field public final status:Lcom/samsung/android/nexus/particle/emitter/Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/nexus/particle/emitter/Particle$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEmitterScheduleComparator:Lcom/samsung/android/nexus/particle/emitter/Particle$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedListPool;

    invoke-direct {v0}, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedListPool;-><init>()V

    sput-object v0, Lcom/samsung/android/nexus/particle/emitter/Particle;->sPool:Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedListPool;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v2, Lcom/samsung/android/nexus/particle/emitter/Particle;->sPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const/16 v3, 0xbb8

    invoke-virtual {v0, v3}, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedListPool;->retain(I)Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->put(Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "static initializer: took"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Particle"

    invoke-static {v1, v0}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEnable:Z

    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEnableEmission:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mIsInSight:Z

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mTempWorldBounds:Landroid/graphics/RectF;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEmitterSchedules:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mTempEmitterSchedules:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mScheduleCheckLock:Z

    new-instance v0, Lcom/samsung/android/nexus/particle/emitter/Status;

    invoke-direct {v0}, Lcom/samsung/android/nexus/particle/emitter/Status;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->status:Lcom/samsung/android/nexus/particle/emitter/Status;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mStartTime:J

    iput-wide v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEndTime:J

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/nexus/particle/emitter/Emitter;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEnable:Z

    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEnableEmission:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mIsInSight:Z

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mTempWorldBounds:Landroid/graphics/RectF;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEmitterSchedules:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mTempEmitterSchedules:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mScheduleCheckLock:Z

    new-instance v0, Lcom/samsung/android/nexus/particle/emitter/Status;

    invoke-direct {v0}, Lcom/samsung/android/nexus/particle/emitter/Status;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->status:Lcom/samsung/android/nexus/particle/emitter/Status;

    iput-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mParentEmitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mStartTime:J

    iput-wide v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEndTime:J

    return-void
.end method


# virtual methods
.method public final checkEmitterSchedule(JLcom/samsung/android/nexus/particle/emitter/Status;)V
    .locals 56

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mParentEmitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    iget-object v5, v5, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mEmitters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    iget-object v5, v0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEmitterSchedules:Ljava/util/ArrayList;

    iget-boolean v6, v0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEnable:Z

    if-nez v6, :cond_1

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_1
    iput-boolean v4, v0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mScheduleCheckLock:Z

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_38

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/nexus/particle/emitter/Particle$EmitterSchedule;

    iget-wide v10, v9, Lcom/samsung/android/nexus/particle/emitter/Particle$EmitterSchedule;->nextTime:J

    cmp-long v12, v10, v1

    if-gtz v12, :cond_37

    iget-object v12, v9, Lcom/samsung/android/nexus/particle/emitter/Particle$EmitterSchedule;->emitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    iget-object v13, v12, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mEmissionRule:Lcom/samsung/android/nexus/particle/emitter/EmissionRule;

    iget-wide v14, v0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mLifeTime:J

    iget-object v4, v13, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->intervalFraction:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    if-eqz v4, :cond_2

    long-to-float v13, v14

    invoke-virtual {v4}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->get()F

    move-result v4

    mul-float/2addr v4, v13

    float-to-long v13, v4

    :goto_1
    move v15, v8

    goto :goto_2

    :cond_2
    iget-object v4, v13, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->intervalTime:Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

    invoke-virtual {v4}, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->get()J

    move-result-wide v13

    goto :goto_1

    :goto_2
    iget-wide v7, v9, Lcom/samsung/android/nexus/particle/emitter/Particle$EmitterSchedule;->nextTime:J

    add-long/2addr v7, v13

    iput-wide v7, v9, Lcom/samsung/android/nexus/particle/emitter/Particle$EmitterSchedule;->nextTime:J

    iget-boolean v7, v0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEnableEmission:Z

    if-eqz v7, :cond_33

    invoke-virtual {v12}, Lcom/samsung/android/nexus/particle/emitter/Emitter;->isScheduleAvailable()Z

    move-result v7

    if-eqz v7, :cond_32

    iget-object v7, v12, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mWorld:Lcom/samsung/android/nexus/particle/emitter/World;

    if-eqz v7, :cond_32

    iget-object v8, v12, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mEmissionRule:Lcom/samsung/android/nexus/particle/emitter/EmissionRule;

    iget-object v13, v8, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->configValues:[Z

    sget-object v14, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;->APPLY_PARENT_ANGULAR_VELOCITY:Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;

    iget v14, v14, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;->idx:I

    aget-boolean v14, v13, v14

    iget-object v4, v12, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mParticleRule:Lcom/samsung/android/nexus/particle/emitter/ParticleRule;

    move/from16 v18, v6

    iget-object v6, v4, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->configValues:[Z

    move/from16 v19, v15

    sget-object v15, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;->AUTO_ROTATE_ALONG_MOVE_DIRECTION:Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;

    iget v15, v15, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;->idx:I

    aget-boolean v6, v6, v15

    sget-object v15, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;->APPLY_PARENT_ROTATION_TO_SHAPE:Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;

    iget v15, v15, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;->idx:I

    aget-boolean v15, v13, v15

    move-object/from16 v20, v5

    sget-object v5, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;->APPLY_PARENT_POS_VECTOR:Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;

    iget v5, v5, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;->idx:I

    aget-boolean v5, v13, v5

    if-eqz v15, :cond_3

    if-eqz v3, :cond_3

    iget v15, v3, Lcom/samsung/android/nexus/particle/emitter/Status;->rotation:F

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    :goto_3
    iget-object v13, v8, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emitterShapePath:Landroid/graphics/Path;

    const/high16 v22, 0x43b40000    # 360.0f

    if-eqz v13, :cond_4

    iget-object v13, v8, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emitterShapeBounds:Landroid/graphics/RectF;

    if-nez v13, :cond_5

    :cond_4
    move-object/from16 v34, v4

    move/from16 v32, v5

    move/from16 v30, v6

    move-object/from16 v26, v7

    move-object/from16 v24, v9

    goto/16 :goto_9

    :cond_5
    iget v13, v8, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->mShapeScaleMode:I

    if-nez v13, :cond_6

    iget-object v13, v8, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->shapeScale:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-virtual {v13}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->get()F

    move-result v13

    iget v0, v8, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->shapeBaseScale:F

    mul-float/2addr v13, v0

    move v0, v13

    goto :goto_4

    :cond_6
    iget-object v0, v8, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->shapeScaleX:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->get()F

    move-result v0

    iget v13, v8, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->shapeBaseScale:F

    mul-float/2addr v13, v0

    iget-object v0, v8, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->shapeScaleY:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->get()F

    move-result v0

    move/from16 v23, v13

    iget v13, v8, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->shapeBaseScale:F

    mul-float/2addr v13, v0

    move v0, v13

    move/from16 v13, v23

    :goto_4
    const/high16 v23, 0x3f800000    # 1.0f

    cmpl-float v24, v13, v23

    if-nez v24, :cond_8

    cmpl-float v24, v0, v23

    if-nez v24, :cond_8

    const/16 v21, 0x0

    cmpl-float v24, v15, v21

    if-eqz v24, :cond_7

    goto :goto_5

    :cond_7
    iget-object v0, v8, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emitterShapePath:Landroid/graphics/Path;

    move-object/from16 v24, v9

    goto :goto_6

    :cond_8
    :goto_5
    iget-object v1, v8, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->mRotatedEmitterShapePath:Landroid/graphics/Path;

    iget-object v2, v8, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emitterShapePath:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object v1, v8, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->mRotatedEmitterShapePath:Landroid/graphics/Path;

    iget-object v2, v8, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    move-object/from16 v24, v9

    const/4 v9, 0x0

    invoke-virtual {v2, v13, v0, v9, v9}, Landroid/graphics/Matrix;->setScale(FFFF)V

    invoke-virtual {v2, v15, v9, v9}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    move-object v0, v1

    :goto_6
    new-instance v1, Landroid/graphics/PathMeasure;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v9

    :goto_7
    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v13

    add-float/2addr v9, v13

    goto :goto_7

    :cond_9
    invoke-virtual {v1, v0, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    const/4 v2, 0x2

    new-array v13, v2, [F

    new-array v15, v2, [F

    iget-object v0, v8, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emitterCellCount:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    iget-boolean v2, v0, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->mIsSingleValue:Z

    if-eqz v2, :cond_a

    iget v0, v0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMin:I

    goto :goto_8

    :cond_a
    iget v2, v0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMin:I

    iget v0, v0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mDelta:I

    int-to-float v0, v0

    sget-object v26, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->sRandom:Lcom/samsung/android/nexus/base/utils/random/FloatRandom;

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/nexus/base/utils/random/FloatRandom;->get()F

    move-result v26

    mul-float v0, v0, v26

    float-to-int v0, v0

    add-int/2addr v2, v0

    move v0, v2

    :goto_8
    if-gtz v0, :cond_b

    move-object/from16 v34, v4

    move/from16 v32, v5

    move/from16 v30, v6

    move-object/from16 v26, v7

    :goto_9
    move-wide/from16 v27, v10

    move-object/from16 v29, v12

    move/from16 v31, v14

    const/4 v4, 0x0

    goto/16 :goto_10

    :cond_b
    iget v2, v8, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->mDirectionMode:I

    move-object/from16 v26, v7

    iget v7, v8, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pointerSize:I

    if-ge v7, v0, :cond_c

    new-array v7, v0, [F

    iput-object v7, v8, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathTanXArray:[F

    new-array v7, v0, [F

    iput-object v7, v8, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathTanYArray:[F

    new-array v7, v0, [F

    iput-object v7, v8, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathPointerOffsetXArray:[F

    new-array v7, v0, [F

    iput-object v7, v8, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathPointerOffsetYArray:[F

    new-array v7, v0, [F

    iput-object v7, v8, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathPointerVelocitiesX:[F

    new-array v7, v0, [F

    iput-object v7, v8, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathPointerVelocitiesY:[F

    iput v0, v8, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pointerSize:I

    :cond_c
    iget-object v7, v8, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathTanXArray:[F

    move-wide/from16 v27, v10

    iget-object v10, v8, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathTanYArray:[F

    iget-object v11, v8, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathPointerOffsetXArray:[F

    move-object/from16 v29, v12

    iget-object v12, v8, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathPointerOffsetYArray:[F

    move/from16 v30, v6

    iget-object v6, v8, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathPointerVelocitiesX:[F

    move/from16 v31, v14

    iget-object v14, v8, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathPointerVelocitiesY:[F

    move/from16 v32, v5

    int-to-float v5, v0

    div-float v33, v9, v5

    move-object/from16 v34, v4

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v35

    move-object/from16 v36, v14

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v14

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    move-object/from16 v37, v6

    move-object/from16 v38, v12

    const/4 v6, 0x0

    const/4 v12, 0x1

    invoke-virtual {v1, v6, v14, v3, v12}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    invoke-virtual {v3, v4, v12}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    move v14, v12

    move/from16 v42, v35

    const/16 v35, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    move v12, v6

    const/4 v6, 0x0

    :goto_a
    if-ge v6, v0, :cond_16

    move/from16 v43, v0

    iget-object v0, v8, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emitterCellOffset:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->get()F

    move-result v0

    move/from16 v44, v12

    int-to-float v12, v6

    mul-float/2addr v12, v9

    div-float/2addr v12, v5

    mul-float v0, v0, v33

    add-float/2addr v0, v12

    rem-float/2addr v0, v9

    cmpl-float v12, v0, v42

    if-lez v12, :cond_d

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->nextContour()Z

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v12

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    move/from16 v45, v5

    const/4 v5, 0x1

    const/4 v14, 0x0

    invoke-virtual {v1, v14, v12, v3, v5}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v14

    add-float v12, v42, v12

    move/from16 v35, v42

    move/from16 v42, v12

    move v12, v5

    goto :goto_b

    :cond_d
    move/from16 v45, v5

    move/from16 v12, v44

    :goto_b
    cmpl-float v5, v0, v35

    if-eqz v5, :cond_e

    sub-float v0, v0, v35

    goto :goto_c

    :cond_e
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {v1, v0, v13, v15}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    const/4 v0, 0x0

    aget v5, v13, v0

    move-object/from16 v44, v1

    const/4 v0, 0x1

    aget v1, v13, v0

    iget-object v0, v8, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->initialVelocity:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->get()F

    move-result v0

    if-eqz v2, :cond_14

    move-object/from16 v46, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_12

    const/4 v3, 0x2

    if-eq v2, v3, :cond_11

    const/4 v3, 0x3

    if-eq v2, v3, :cond_f

    move/from16 v47, v2

    move/from16 v48, v9

    move-object/from16 v49, v10

    move/from16 v3, v39

    move/from16 v10, v40

    move/from16 v40, v12

    move-object/from16 v39, v13

    goto/16 :goto_e

    :cond_f
    sub-float v3, v5, v12

    move/from16 v40, v12

    move-object/from16 v39, v13

    float-to-double v12, v3

    move/from16 v47, v2

    sub-float v2, v1, v14

    move/from16 v48, v9

    move-object/from16 v49, v10

    float-to-double v9, v2

    invoke-static {v12, v13, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    double-to-float v9, v9

    const/16 v21, 0x0

    cmpl-float v10, v21, v9

    if-nez v10, :cond_10

    move/from16 v3, v21

    move v10, v3

    goto :goto_e

    :cond_10
    div-float/2addr v3, v9

    div-float/2addr v2, v9

    :goto_d
    move v10, v2

    goto :goto_e

    :cond_11
    move/from16 v47, v2

    move/from16 v48, v9

    move-object/from16 v49, v10

    move/from16 v40, v12

    move-object/from16 v39, v13

    const/16 v21, 0x0

    move/from16 v10, v21

    move/from16 v3, v23

    goto :goto_e

    :cond_12
    move/from16 v47, v2

    move/from16 v48, v9

    move-object/from16 v49, v10

    move/from16 v40, v12

    move-object/from16 v39, v13

    const/16 v21, 0x0

    float-to-double v2, v5

    float-to-double v9, v1

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    cmpl-float v3, v21, v2

    if-nez v3, :cond_13

    const/4 v3, 0x0

    const/4 v10, 0x0

    goto :goto_e

    :cond_13
    div-float v3, v5, v2

    div-float v2, v1, v2

    goto :goto_d

    :cond_14
    move/from16 v47, v2

    move-object/from16 v46, v3

    move/from16 v48, v9

    move-object/from16 v49, v10

    move/from16 v40, v12

    move-object/from16 v39, v13

    const/4 v2, 0x0

    aget v3, v15, v2

    const/4 v9, 0x1

    aget v10, v15, v9

    const/high16 v9, 0x43870000    # 270.0f

    move/from16 v41, v9

    :goto_e
    iget-object v9, v8, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emissionAngle:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-virtual {v9}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->get()F

    move-result v9

    neg-float v9, v9

    add-float v9, v9, v22

    add-float v9, v9, v41

    rem-float v9, v9, v22

    float-to-double v12, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    const-wide/16 v50, 0x0

    cmpl-double v9, v50, v12

    if-eqz v9, :cond_15

    float-to-double v2, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v50

    mul-double v50, v50, v2

    float-to-double v9, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v52

    mul-double v52, v52, v9

    move/from16 v55, v14

    move-object/from16 v54, v15

    sub-double v14, v50, v52

    double-to-float v14, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v50

    mul-double v50, v50, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v9

    add-double v2, v2, v50

    double-to-float v2, v2

    goto :goto_f

    :cond_15
    move/from16 v55, v14

    move-object/from16 v54, v15

    move v14, v3

    move v2, v10

    :goto_f
    aput v14, v7, v6

    aput v2, v49, v6

    aput v5, v11, v6

    aput v1, v38, v6

    mul-float v1, v0, v14

    aput v1, v37, v6

    mul-float/2addr v0, v2

    aput v0, v36, v6

    const/4 v0, 0x1

    add-int/2addr v6, v0

    move-object/from16 v13, v39

    move/from16 v12, v40

    move/from16 v0, v43

    move-object/from16 v1, v44

    move/from16 v5, v45

    move-object/from16 v3, v46

    move/from16 v9, v48

    move-object/from16 v10, v49

    move-object/from16 v15, v54

    move/from16 v40, v2

    move/from16 v39, v14

    move/from16 v2, v47

    move/from16 v14, v55

    goto/16 :goto_a

    :cond_16
    move/from16 v43, v0

    move/from16 v4, v43

    :goto_10
    iget-object v0, v8, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathPointerOffsetXArray:[F

    iget-object v1, v8, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathPointerOffsetYArray:[F

    iget-object v2, v8, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathTanXArray:[F

    iget-object v3, v8, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathTanYArray:[F

    iget-object v5, v8, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathPointerVelocitiesX:[F

    iget-object v6, v8, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathPointerVelocitiesY:[F

    move-object/from16 v9, p3

    if-eqz v9, :cond_19

    iget-object v10, v9, Lcom/samsung/android/nexus/particle/emitter/Status;->factor:Lcom/samsung/android/nexus/particle/emitter/Factor;

    iget-object v10, v10, Lcom/samsung/android/nexus/particle/emitter/Factor;->values:[F

    array-length v11, v10

    array-length v12, v10

    new-array v12, v12, [F

    iget-object v13, v8, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->applyParentFactorCheckIndexList:[I

    array-length v14, v13

    const/4 v15, 0x0

    :goto_11
    if-ge v15, v14, :cond_18

    aget v23, v13, v15

    if-gez v23, :cond_17

    goto :goto_12

    :cond_17
    aget v25, v10, v23

    aput v25, v12, v23

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    goto :goto_11

    :cond_18
    :goto_12
    sget-object v13, Lcom/samsung/android/nexus/particle/emitter/FactorType;->ROTATION:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v13, v13, Lcom/samsung/android/nexus/particle/emitter/FactorType;->speedIdx:I

    aget v13, v10, v13

    iget-object v8, v8, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->applyParentFactorCheckList:[Z

    goto :goto_13

    :cond_19
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_13
    if-eqz v9, :cond_1a

    iget v14, v9, Lcom/samsung/android/nexus/particle/emitter/Status;->vecTanX:F

    goto :goto_14

    :cond_1a
    const/4 v14, 0x0

    :goto_14
    if-eqz v9, :cond_1b

    iget v15, v9, Lcom/samsung/android/nexus/particle/emitter/Status;->vecTanY:F

    move/from16 v25, v13

    move-object/from16 v7, v34

    goto :goto_15

    :cond_1b
    move/from16 v25, v13

    move-object/from16 v7, v34

    const/4 v15, 0x0

    :goto_15
    iget v13, v7, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->posMode:I

    move-object/from16 v33, v6

    iget v6, v7, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->scaleMode:I

    move-object/from16 v34, v5

    iget v5, v7, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->colorMode:I

    move-object/from16 v35, v1

    iget-object v1, v7, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->factorKeyFrameList:Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;

    invoke-virtual {v1}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->isEmpty()Z

    move-result v36

    const/16 v16, 0x1

    xor-int/lit8 v36, v36, 0x1

    move-object/from16 v37, v0

    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/Particle;->sPool:Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedListPool;

    invoke-virtual {v0, v4}, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedListPool;->retain(I)Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;

    move-result-object v0

    iget v4, v0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->size:I

    move/from16 v38, v15

    iget-object v15, v0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->head:Lcom/samsung/android/nexus/particle/emitter/Particle;

    move-object/from16 v39, v0

    move-object v0, v15

    const/4 v15, 0x0

    :goto_16
    if-ge v15, v4, :cond_2f

    move/from16 v40, v4

    iget-object v4, v0, Lcom/samsung/android/nexus/particle/emitter/Particle;->status:Lcom/samsung/android/nexus/particle/emitter/Status;

    move-object/from16 v41, v0

    iget-object v0, v4, Lcom/samsung/android/nexus/particle/emitter/Status;->factor:Lcom/samsung/android/nexus/particle/emitter/Factor;

    move/from16 v42, v14

    iget-object v14, v4, Lcom/samsung/android/nexus/particle/emitter/Status;->factorKeyFrameSetList:Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;

    iget-object v9, v7, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->factorRangeableList:Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;

    if-eqz v36, :cond_23

    sget-object v43, Lcom/samsung/android/nexus/particle/emitter/FactorType;->WIDTH:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    move-object/from16 v43, v7

    sget v7, Lcom/samsung/android/nexus/particle/emitter/FactorType$Holder;->sCount:I

    move-object/from16 v44, v10

    iget-object v10, v1, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorInterpolator:[Landroid/view/animation/Interpolator;

    move-object/from16 v45, v8

    iget-object v8, v1, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorInterpolators:[[Landroid/view/animation/Interpolator;

    move/from16 v46, v11

    iget-object v11, v14, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->list:[Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;

    move-object/from16 v47, v12

    const/4 v12, 0x0

    iput v12, v14, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->floatKeyFrameSetSize:I

    const/4 v12, 0x0

    :goto_17
    if-ge v12, v7, :cond_22

    move/from16 v48, v7

    iget-object v7, v1, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorRangeablePositions:[[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    aget-object v7, v7, v12

    if-eqz v7, :cond_21

    move-object/from16 v49, v3

    array-length v3, v7

    move-object/from16 v50, v2

    iget-object v2, v1, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorRangeableValues:[[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    aget-object v2, v2, v12

    move/from16 v51, v15

    new-array v15, v3, [F

    move/from16 v52, v13

    new-array v13, v3, [F

    move/from16 v53, v6

    const/4 v6, 0x0

    :goto_18
    if-ge v6, v3, :cond_1c

    aget-object v54, v7, v6

    invoke-virtual/range {v54 .. v54}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->get()F

    move-result v54

    aput v54, v15, v6

    aget-object v54, v2, v6

    invoke-virtual/range {v54 .. v54}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->get()F

    move-result v54

    aput v54, v13, v6

    const/16 v16, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    :cond_1c
    aget-object v2, v10, v12

    aget-object v6, v8, v12

    aget-object v7, v11, v12

    if-nez v7, :cond_1d

    new-instance v7, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;

    invoke-direct {v7}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;-><init>()V

    aput-object v7, v11, v12

    :cond_1d
    iput v3, v7, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->length:I

    iput-object v15, v7, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->fractionPositions:[F

    iput-object v6, v7, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->interpolators:[Landroid/view/animation/Interpolator;

    iput-object v2, v7, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->interpolator:Landroid/view/animation/Interpolator;

    const/4 v2, 0x1

    sub-int/2addr v3, v2

    iput-object v13, v7, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mValues:[F

    iget-object v2, v7, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mDeltas:[F

    if-eqz v2, :cond_1f

    array-length v2, v2

    if-eq v3, v2, :cond_1e

    goto :goto_1a

    :cond_1e
    :goto_19
    const/4 v2, 0x0

    goto :goto_1b

    :cond_1f
    :goto_1a
    new-array v2, v3, [F

    iput-object v2, v7, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mDeltas:[F

    goto :goto_19

    :goto_1b
    aget v6, v13, v2

    move v15, v6

    const/4 v6, 0x0

    :goto_1c
    if-ge v6, v3, :cond_20

    const/16 v16, 0x1

    add-int/lit8 v17, v6, 0x1

    aget v54, v13, v17

    iget-object v2, v7, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mDeltas:[F

    sub-float v15, v54, v15

    aput v15, v2, v6

    move/from16 v6, v17

    move/from16 v15, v54

    goto :goto_1c

    :cond_20
    const/16 v16, 0x1

    iget v2, v14, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->floatKeyFrameSetSize:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v14, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->floatKeyFrameSetSize:I

    goto :goto_1d

    :cond_21
    move-object/from16 v50, v2

    move-object/from16 v49, v3

    move/from16 v53, v6

    move/from16 v52, v13

    move/from16 v51, v15

    const/16 v16, 0x1

    iget-object v2, v1, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->list:[Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;

    aget-object v2, v2, v12

    aput-object v2, v11, v12

    :goto_1d
    add-int/lit8 v12, v12, 0x1

    move/from16 v7, v48

    move-object/from16 v3, v49

    move-object/from16 v2, v50

    move/from16 v15, v51

    move/from16 v13, v52

    move/from16 v6, v53

    goto/16 :goto_17

    :cond_22
    move-object/from16 v50, v2

    move-object/from16 v49, v3

    move/from16 v53, v6

    move/from16 v52, v13

    move/from16 v51, v15

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v9, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->rangeables:[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    iget-object v3, v14, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->list:[Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/nexus/particle/emitter/Factor;->initValues([Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;[Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;)V

    goto :goto_1e

    :cond_23
    move-object/from16 v50, v2

    move-object/from16 v49, v3

    move/from16 v53, v6

    move-object/from16 v43, v7

    move-object/from16 v45, v8

    move-object/from16 v44, v10

    move/from16 v46, v11

    move-object/from16 v47, v12

    move/from16 v52, v13

    move/from16 v51, v15

    invoke-virtual {v14}, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->clear()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v9, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->rangeables:[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/nexus/particle/emitter/Factor;->initValues([Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;[Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;)V

    :goto_1e
    iput v5, v4, Lcom/samsung/android/nexus/particle/emitter/Status;->colorMode:I

    move/from16 v2, v53

    iput v2, v4, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleMode:I

    move/from16 v3, v52

    iput v3, v4, Lcom/samsung/android/nexus/particle/emitter/Status;->posMode:I

    aget v6, v50, v51

    iput v6, v4, Lcom/samsung/android/nexus/particle/emitter/Status;->vecTanX:F

    aget v6, v49, v51

    iput v6, v4, Lcom/samsung/android/nexus/particle/emitter/Status;->vecTanY:F

    iget-object v6, v0, Lcom/samsung/android/nexus/particle/emitter/Factor;->values:[F

    move/from16 v11, v46

    if-eqz v47, :cond_25

    const/4 v7, 0x0

    :goto_1f
    if-ge v7, v11, :cond_25

    aget-boolean v8, v45, v7

    if-eqz v8, :cond_24

    aget v8, v44, v7

    aput v8, v6, v7

    :cond_24
    const/4 v8, 0x1

    add-int/2addr v7, v8

    goto :goto_1f

    :cond_25
    if-eqz p3, :cond_26

    if-eqz v32, :cond_26

    move/from16 v14, v42

    iput v14, v4, Lcom/samsung/android/nexus/particle/emitter/Status;->vecTanX:F

    move/from16 v15, v38

    iput v15, v4, Lcom/samsung/android/nexus/particle/emitter/Status;->vecTanY:F

    :goto_20
    const/4 v6, 0x0

    const/4 v7, 0x0

    goto :goto_21

    :cond_26
    move/from16 v15, v38

    move/from16 v14, v42

    goto :goto_20

    :goto_21
    invoke-virtual {v4, v6, v6, v7}, Lcom/samsung/android/nexus/particle/emitter/Status;->onStep(FF[F)V

    aget v8, v37, v51

    aget v9, v35, v51

    aget v10, v34, v51

    aget v12, v33, v51

    if-eqz v31, :cond_27

    cmpl-float v13, v25, v6

    if-eqz v13, :cond_27

    move-object v6, v1

    move/from16 v53, v2

    float-to-double v1, v8

    move v13, v8

    float-to-double v7, v9

    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v7, 0x42480000    # 50.0f

    div-float/2addr v2, v7

    mul-float/2addr v2, v1

    aget v1, v50, v51

    mul-float/2addr v1, v2

    add-float/2addr v10, v1

    aget v1, v49, v51

    mul-float/2addr v2, v1

    add-float/2addr v12, v2

    goto :goto_22

    :cond_27
    move-object v6, v1

    move/from16 v53, v2

    move v13, v8

    :goto_22
    iget v1, v4, Lcom/samsung/android/nexus/particle/emitter/Status;->posX:F

    add-float/2addr v1, v13

    iput v1, v4, Lcom/samsung/android/nexus/particle/emitter/Status;->posX:F

    iget v1, v4, Lcom/samsung/android/nexus/particle/emitter/Status;->posY:F

    add-float/2addr v1, v9

    iput v1, v4, Lcom/samsung/android/nexus/particle/emitter/Status;->posY:F

    sget-object v1, Lcom/samsung/android/nexus/particle/emitter/FactorType;->POS_X:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v2, v1, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    iget-object v7, v0, Lcom/samsung/android/nexus/particle/emitter/Factor;->values:[F

    aget v8, v7, v2

    add-float/2addr v8, v13

    aput v8, v7, v2

    const/4 v2, 0x0

    cmpl-float v8, v13, v2

    if-eqz v8, :cond_28

    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/samsung/android/nexus/particle/emitter/Factor;->mNeedValidate:Z

    goto :goto_23

    :cond_28
    const/4 v8, 0x1

    :goto_23
    sget-object v13, Lcom/samsung/android/nexus/particle/emitter/FactorType;->POS_Y:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v8, v13, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    aget v17, v7, v8

    add-float v17, v17, v9

    aput v17, v7, v8

    cmpl-float v8, v9, v2

    if-eqz v8, :cond_29

    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/samsung/android/nexus/particle/emitter/Factor;->mNeedValidate:Z

    goto :goto_24

    :cond_29
    const/4 v8, 0x1

    :goto_24
    iget v1, v1, Lcom/samsung/android/nexus/particle/emitter/FactorType;->speedIdx:I

    aget v9, v7, v1

    add-float/2addr v9, v10

    aput v9, v7, v1

    cmpl-float v9, v10, v2

    if-eqz v9, :cond_2a

    iput-boolean v8, v0, Lcom/samsung/android/nexus/particle/emitter/Factor;->mNeedValidate:Z

    :cond_2a
    iget v9, v13, Lcom/samsung/android/nexus/particle/emitter/FactorType;->speedIdx:I

    aget v10, v7, v9

    add-float/2addr v10, v12

    aput v10, v7, v9

    cmpl-float v9, v12, v2

    if-eqz v9, :cond_2b

    iput-boolean v8, v0, Lcom/samsung/android/nexus/particle/emitter/Factor;->mNeedValidate:Z

    :cond_2b
    aget v0, v7, v1

    cmpl-float v1, v0, v2

    if-nez v1, :cond_2d

    cmpl-float v1, v10, v2

    if-eqz v1, :cond_2c

    goto :goto_25

    :cond_2c
    move v0, v2

    goto :goto_26

    :cond_2d
    :goto_25
    float-to-double v0, v0

    float-to-double v7, v10

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    :goto_26
    iput v0, v4, Lcom/samsung/android/nexus/particle/emitter/Status;->speed:F

    iput v2, v4, Lcom/samsung/android/nexus/particle/emitter/Status;->acc:F

    if-eqz v30, :cond_2e

    iget v0, v4, Lcom/samsung/android/nexus/particle/emitter/Status;->rotation:F

    aget v1, v49, v51

    float-to-double v7, v1

    aget v1, v50, v51

    float-to-double v9, v1

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    const-wide v9, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    double-to-float v1, v7

    add-float/2addr v0, v1

    add-float v0, v0, v22

    rem-float v0, v0, v22

    iput v0, v4, Lcom/samsung/android/nexus/particle/emitter/Status;->rotation:F

    :cond_2e
    move-object/from16 v0, v29

    move-object/from16 v1, v41

    iput-object v0, v1, Lcom/samsung/android/nexus/particle/emitter/Particle;->mParentEmitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    const-wide/16 v7, 0x0

    iput-wide v7, v1, Lcom/samsung/android/nexus/particle/emitter/Particle;->mStartTime:J

    iput-wide v7, v1, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEndTime:J

    move-wide/from16 v7, v27

    invoke-virtual {v1, v7, v8}, Lcom/samsung/android/nexus/particle/emitter/Particle;->start(J)V

    iget-object v1, v1, Lcom/samsung/android/nexus/particle/emitter/Particle;->next:Lcom/samsung/android/nexus/particle/emitter/Particle;

    const/4 v4, 0x1

    add-int/lit8 v9, v51, 0x1

    move-object/from16 v29, v0

    move-object v0, v1

    move v13, v3

    move-object v1, v6

    move-wide/from16 v27, v7

    move/from16 v38, v15

    move/from16 v4, v40

    move-object/from16 v7, v43

    move-object/from16 v10, v44

    move-object/from16 v8, v45

    move-object/from16 v12, v47

    move-object/from16 v3, v49

    move-object/from16 v2, v50

    move/from16 v6, v53

    move v15, v9

    move-object/from16 v9, p3

    goto/16 :goto_16

    :cond_2f
    move-object/from16 v1, v26

    move-object/from16 v0, v29

    iget-object v2, v1, Lcom/samsung/android/nexus/particle/emitter/World;->mFrameController:Lcom/samsung/android/nexus/particle/emitter/FrameController;

    iget-boolean v3, v2, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mIsStarted:Z

    if-nez v3, :cond_30

    goto :goto_27

    :cond_30
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mIsStarted:Z

    const-string v4, "FrameController"

    const-string v5, "Stop frame control."

    invoke-static {v4, v5}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v2, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mFrameRateControlHandler:Lcom/samsung/android/nexus/particle/emitter/FrameController$1;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, v2, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    iget v2, v2, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mMaxFrameRate:I

    invoke-virtual {v3}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getNexusContext()Lcom/samsung/android/nexus/base/context/NexusContext;

    move-result-object v3

    if-gtz v2, :cond_31

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "NexusContext"

    const-string/jumbo v6, "setFrameRate() : Do NOT set a negative value."

    invoke-static {v5, v6}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    iget-object v3, v3, Lcom/samsung/android/nexus/base/context/NexusContext;->mAnimatorCore:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    iput v2, v3, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mFrameRate:I

    const/4 v5, 0x1

    add-int/2addr v2, v5

    const v5, 0x3b9aca00

    div-int/2addr v5, v2

    int-to-long v5, v5

    iput-wide v5, v3, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mFrameTime:J

    :goto_27
    iget-object v1, v1, Lcom/samsung/android/nexus/particle/emitter/World;->mWorldParticleLinkedList:Lcom/samsung/android/nexus/particle/emitter/World$WorldParticleLinkedList;

    move-object/from16 v2, v39

    invoke-virtual {v1, v2}, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->put(Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;)V

    goto :goto_28

    :cond_32
    move-object/from16 v20, v5

    move/from16 v18, v6

    move-object/from16 v24, v9

    move-object v0, v12

    move/from16 v19, v15

    :goto_28
    move-object/from16 v9, v24

    goto :goto_29

    :cond_33
    move-object/from16 v20, v5

    move/from16 v18, v6

    move-object v0, v12

    move/from16 v19, v15

    :goto_29
    iget-wide v1, v9, Lcom/samsung/android/nexus/particle/emitter/Particle$EmitterSchedule;->nextTime:J

    move-wide/from16 v5, p1

    cmp-long v1, v1, v5

    if-gtz v1, :cond_34

    iput-wide v5, v9, Lcom/samsung/android/nexus/particle/emitter/Particle$EmitterSchedule;->nextTime:J

    :cond_34
    iget-wide v1, v9, Lcom/samsung/android/nexus/particle/emitter/Particle$EmitterSchedule;->nextTime:J

    move-object/from16 v3, p0

    iget-wide v7, v3, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEndTime:J

    cmp-long v1, v1, v7

    if-gtz v1, :cond_35

    invoke-virtual {v0}, Lcom/samsung/android/nexus/particle/emitter/Emitter;->isScheduleAvailable()Z

    move-result v0

    if-nez v0, :cond_36

    :cond_35
    move/from16 v7, v19

    move-object/from16 v0, v20

    goto :goto_2b

    :cond_36
    move/from16 v7, v19

    move-object/from16 v0, v20

    :goto_2a
    const/4 v1, 0x1

    goto :goto_2c

    :goto_2b
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2d

    :cond_37
    move-object v3, v0

    move-object v0, v5

    move/from16 v18, v6

    move v7, v8

    move-wide v5, v1

    goto :goto_2a

    :goto_2c
    add-int/lit8 v8, v7, 0x1

    move v4, v1

    move-wide v1, v5

    move/from16 v6, v18

    move-object v5, v0

    move-object v0, v3

    move-object/from16 v3, p3

    goto/16 :goto_0

    :cond_38
    move-object v3, v0

    move-object v0, v5

    move-wide v5, v1

    :goto_2d
    iget-object v1, v3, Lcom/samsung/android/nexus/particle/emitter/Particle;->mParentEmitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    iget-object v2, v3, Lcom/samsung/android/nexus/particle/emitter/Particle;->mSubEmitterKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_3a

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    iget-object v8, v1, Lcom/samsung/android/nexus/particle/emitter/Emitter;->subEmitterKey:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    if-eq v7, v8, :cond_39

    iget-object v1, v1, Lcom/samsung/android/nexus/particle/emitter/Emitter;->subEmitterKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    :cond_39
    :goto_2e
    const/4 v1, 0x0

    goto :goto_34

    :cond_3a
    iget-object v1, v3, Lcom/samsung/android/nexus/particle/emitter/Particle;->mParentEmitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    iget-object v1, v1, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mEmitters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v7, 0x0

    :goto_2f
    if-ge v7, v2, :cond_40

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/nexus/particle/emitter/Emitter;

    iget-object v9, v8, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mEmissionRule:Lcom/samsung/android/nexus/particle/emitter/EmissionRule;

    invoke-virtual {v8}, Lcom/samsung/android/nexus/particle/emitter/Emitter;->isScheduleAvailable()Z

    move-result v10

    if-eqz v10, :cond_3b

    iget-object v10, v3, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEmitterSchedules:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_30
    if-ge v12, v11, :cond_3d

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/nexus/particle/emitter/Particle$EmitterSchedule;

    iget-object v13, v13, Lcom/samsung/android/nexus/particle/emitter/Particle$EmitterSchedule;->emitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    if-ne v8, v13, :cond_3c

    :cond_3b
    :goto_31
    const/4 v8, 0x1

    goto :goto_33

    :cond_3c
    const/4 v13, 0x1

    add-int/2addr v12, v13

    goto :goto_30

    :cond_3d
    new-instance v10, Lcom/samsung/android/nexus/particle/emitter/Particle$EmitterSchedule;

    iget-wide v11, v3, Lcom/samsung/android/nexus/particle/emitter/Particle;->mLifeTime:J

    iget-object v13, v9, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->beginFraction:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    if-eqz v13, :cond_3e

    long-to-float v9, v11

    invoke-virtual {v13}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->get()F

    move-result v11

    mul-float/2addr v11, v9

    float-to-long v11, v11

    goto :goto_32

    :cond_3e
    iget-object v9, v9, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->beginTime:Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

    invoke-virtual {v9}, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->get()J

    move-result-wide v11

    :goto_32
    add-long/2addr v11, v5

    invoke-direct {v10, v3, v8, v11, v12}, Lcom/samsung/android/nexus/particle/emitter/Particle$EmitterSchedule;-><init>(Lcom/samsung/android/nexus/particle/emitter/Particle;Lcom/samsung/android/nexus/particle/emitter/Emitter;J)V

    iget-boolean v8, v3, Lcom/samsung/android/nexus/particle/emitter/Particle;->mScheduleCheckLock:Z

    if-eqz v8, :cond_3f

    iget-object v8, v3, Lcom/samsung/android/nexus/particle/emitter/Particle;->mTempEmitterSchedules:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_3f
    iget-object v8, v3, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEmitterSchedules:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :goto_33
    add-int/2addr v7, v8

    goto :goto_2f

    :cond_40
    iget-object v1, v3, Lcom/samsung/android/nexus/particle/emitter/Particle;->mParentEmitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    iget-object v1, v1, Lcom/samsung/android/nexus/particle/emitter/Emitter;->subEmitterKey:Ljava/lang/String;

    iput-object v1, v3, Lcom/samsung/android/nexus/particle/emitter/Particle;->mSubEmitterKey:Ljava/lang/String;

    goto :goto_2e

    :goto_34
    iput-boolean v1, v3, Lcom/samsung/android/nexus/particle/emitter/Particle;->mScheduleCheckLock:Z

    iget-object v1, v3, Lcom/samsung/android/nexus/particle/emitter/Particle;->mTempEmitterSchedules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_41

    iget-object v1, v3, Lcom/samsung/android/nexus/particle/emitter/Particle;->mTempEmitterSchedules:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v3, Lcom/samsung/android/nexus/particle/emitter/Particle;->mTempEmitterSchedules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_41
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_42

    sget-object v1, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEmitterScheduleComparator:Lcom/samsung/android/nexus/particle/emitter/Particle$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    :cond_42
    return-void
.end method

.method public final release()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEnable:Z

    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEnableEmission:Z

    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mIsInSight:Z

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mStartTime:J

    iput-wide v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEndTime:J

    iput-wide v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mLifeTime:J

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mFraction:F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mParentEmitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mSubEmitterKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->status:Lcom/samsung/android/nexus/particle/emitter/Status;

    invoke-virtual {v2}, Lcom/samsung/android/nexus/particle/emitter/Status;->reset()V

    iget-object v2, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mParticleTexture:Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;->onRelease()V

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mParticleTexture:Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEmitterSchedules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mTempEmitterSchedules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mScheduleCheckLock:Z

    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mTempWorldBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->setEmpty()V

    return-void
.end method

.method public final start(J)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mParentEmitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    iget-object v0, v0, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mParticleRule:Lcom/samsung/android/nexus/particle/emitter/ParticleRule;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->status:Lcom/samsung/android/nexus/particle/emitter/Status;

    iget v2, v1, Lcom/samsung/android/nexus/particle/emitter/Status;->color:I

    iput v2, v1, Lcom/samsung/android/nexus/particle/emitter/Status;->color:I

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v3, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, v0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->particleTexture:Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;

    iget-object v3, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mParticleTexture:Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;->onRelease()V

    :cond_0
    iput-object v2, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mParticleTexture:Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;->onCreate()V

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEnable:Z

    iput-boolean v2, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEnableEmission:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mIsInSight:Z

    iput-wide p1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mStartTime:J

    iget-object v0, v0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->lifeTime:Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->get()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEndTime:J

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->get()J

    move-result-wide v3

    add-long/2addr v3, p1

    iput-wide v3, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEndTime:J

    :goto_0
    iget-wide p1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEndTime:J

    iget-wide v3, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mStartTime:J

    sub-long/2addr p1, v3

    iput-wide p1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mLifeTime:J

    iget-object p1, v1, Lcom/samsung/android/nexus/particle/emitter/Status;->factor:Lcom/samsung/android/nexus/particle/emitter/Factor;

    invoke-virtual {p1}, Lcom/samsung/android/nexus/particle/emitter/Factor;->validate()V

    iget-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mParentEmitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    iget-object p1, p1, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mEmitters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_4

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mParentEmitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    iget-object p1, p1, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mEmitters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget-wide v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mStartTime:J

    :goto_1
    if-ge v2, p2, :cond_7

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/nexus/particle/emitter/Emitter;

    iget-object v4, v3, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mEmissionRule:Lcom/samsung/android/nexus/particle/emitter/EmissionRule;

    invoke-virtual {v3}, Lcom/samsung/android/nexus/particle/emitter/Emitter;->isScheduleAvailable()Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v5, Lcom/samsung/android/nexus/particle/emitter/Particle$EmitterSchedule;

    iget-wide v6, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mLifeTime:J

    iget-object v8, v4, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->beginFraction:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    if-eqz v8, :cond_4

    long-to-float v4, v6

    invoke-virtual {v8}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->get()F

    move-result v6

    mul-float/2addr v6, v4

    float-to-long v6, v6

    goto :goto_2

    :cond_4
    iget-object v4, v4, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->beginTime:Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

    invoke-virtual {v4}, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->get()J

    move-result-wide v6

    :goto_2
    add-long/2addr v6, v0

    invoke-direct {v5, p0, v3, v6, v7}, Lcom/samsung/android/nexus/particle/emitter/Particle$EmitterSchedule;-><init>(Lcom/samsung/android/nexus/particle/emitter/Particle;Lcom/samsung/android/nexus/particle/emitter/Emitter;J)V

    iget-boolean v3, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mScheduleCheckLock:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mTempEmitterSchedules:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEmitterSchedules:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mParentEmitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    iget-object p1, p1, Lcom/samsung/android/nexus/particle/emitter/Emitter;->subEmitterKey:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mSubEmitterKey:Ljava/lang/String;

    :goto_4
    return-void

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "can not start with null rule"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Particle{mEnable="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mEnableEmission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEnableEmission:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsInSight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mIsInSight:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mEndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEndTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mLifeTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mLifeTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mFraction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mFraction:F

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroidx/compose/animation/AndroidFlingSpline$FlingResult$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
