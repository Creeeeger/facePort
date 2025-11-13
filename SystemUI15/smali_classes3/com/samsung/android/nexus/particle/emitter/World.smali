.class public final Lcom/samsung/android/nexus/particle/emitter/World;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

.field public final mFrameController:Lcom/samsung/android/nexus/particle/emitter/FrameController;

.field public mIsPaused:Z

.field public mIsRunning:Z

.field public mLastStepTime:J

.field public mPausedTime:J

.field public final mRootEmitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

.field public final mRootParticle:Lcom/samsung/android/nexus/particle/emitter/Particle;

.field public mStartedTime:J

.field public mTotalPausedTime:J

.field public final mWorldParticleLinkedList:Lcom/samsung/android/nexus/particle/emitter/World$WorldParticleLinkedList;

.field public final mWorldStatus:Lcom/samsung/android/nexus/particle/emitter/Status;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/nexus/base/layer/LayerContainer;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mIsPaused:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mIsRunning:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mStartedTime:J

    iput-wide v0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mLastStepTime:J

    iput-wide v0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mPausedTime:J

    iput-wide v0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mTotalPausedTime:J

    new-instance v0, Lcom/samsung/android/nexus/particle/emitter/Status;

    invoke-direct {v0}, Lcom/samsung/android/nexus/particle/emitter/Status;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mWorldStatus:Lcom/samsung/android/nexus/particle/emitter/Status;

    new-instance v0, Lcom/samsung/android/nexus/particle/emitter/World$WorldParticleLinkedList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/nexus/particle/emitter/World$WorldParticleLinkedList;-><init>(Lcom/samsung/android/nexus/particle/emitter/World;Lcom/samsung/android/nexus/particle/emitter/World$1;)V

    iput-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mWorldParticleLinkedList:Lcom/samsung/android/nexus/particle/emitter/World$WorldParticleLinkedList;

    const-string v0, "World"

    const-string v1, "World: created"

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    new-instance v0, Lcom/samsung/android/nexus/particle/emitter/FrameController;

    invoke-direct {v0, p1}, Lcom/samsung/android/nexus/particle/emitter/FrameController;-><init>(Lcom/samsung/android/nexus/base/layer/LayerContainer;)V

    iput-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mFrameController:Lcom/samsung/android/nexus/particle/emitter/FrameController;

    new-instance v1, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;

    invoke-direct {v1}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;-><init>()V

    iget-object v2, v1, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->lifeTime:Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

    const-wide/16 v3, -0x1

    iput-wide v3, v2, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMin:J

    iput-wide v3, v2, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMax:J

    invoke-virtual {v2}, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->onRangeUpdated()V

    new-instance v2, Lcom/samsung/android/nexus/particle/emitter/Emitter;

    invoke-virtual {p1}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getAppContext()Landroid/content/Context;

    move-result-object p1

    new-instance v3, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;

    invoke-direct {v3}, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;-><init>()V

    invoke-direct {v2, p1, p0, v3, v1}, Lcom/samsung/android/nexus/particle/emitter/Emitter;-><init>(Landroid/content/Context;Lcom/samsung/android/nexus/particle/emitter/World;Lcom/samsung/android/nexus/particle/emitter/EmissionRule;Lcom/samsung/android/nexus/particle/emitter/ParticleRule;)V

    iput-object v2, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mRootEmitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    new-instance p1, Lcom/samsung/android/nexus/particle/emitter/Particle;

    invoke-direct {p1, v2}, Lcom/samsung/android/nexus/particle/emitter/Particle;-><init>(Lcom/samsung/android/nexus/particle/emitter/Emitter;)V

    iput-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mRootParticle:Lcom/samsung/android/nexus/particle/emitter/Particle;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/particle/emitter/FrameController;->startFrameRateDown()V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 14

    iget-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mIsRunning:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mIsPaused:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mWorldParticleLinkedList:Lcom/samsung/android/nexus/particle/emitter/World$WorldParticleLinkedList;

    iget-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->head:Lcom/samsung/android/nexus/particle/emitter/Particle;

    iget p0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->size:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_8

    iget-object v3, v0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mParticleTexture:Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;

    if-eqz v3, :cond_7

    iget-boolean v4, v0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEnable:Z

    if-eqz v4, :cond_7

    iget-boolean v4, v0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mIsInSight:Z

    if-eqz v4, :cond_7

    iget-object v4, v0, Lcom/samsung/android/nexus/particle/emitter/Particle;->status:Lcom/samsung/android/nexus/particle/emitter/Status;

    iget v5, v4, Lcom/samsung/android/nexus/particle/emitter/Status;->alpha:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v5, v0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mParentEmitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    iget-object v5, v5, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mParticleRule:Lcom/samsung/android/nexus/particle/emitter/ParticleRule;

    iget-boolean v7, v4, Lcom/samsung/android/nexus/particle/emitter/Status;->mUpdateBounds:Z

    if-eqz v7, :cond_2

    invoke-virtual {v4}, Lcom/samsung/android/nexus/particle/emitter/Status;->updateBounds()V

    :cond_2
    iget-object v7, v4, Lcom/samsung/android/nexus/particle/emitter/Status;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    sget-object v10, Lcom/samsung/android/nexus/particle/emitter/Particle;->sPaint:Landroid/graphics/Paint;

    iget-object v11, v0, Lcom/samsung/android/nexus/particle/emitter/Particle;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget v11, v4, Lcom/samsung/android/nexus/particle/emitter/Status;->alpha:F

    const/high16 v12, 0x437f0000    # 255.0f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/16 v12, 0xff

    invoke-static {v12, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v11, v4, Lcom/samsung/android/nexus/particle/emitter/Status;->rotation:F

    invoke-virtual {p1, v11, v8, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v5, v5, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->configValues:[Z

    sget-object v11, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;->APPLY_DRAW_MORPHING_BY_SPEED:Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;

    iget v11, v11, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;->idx:I

    aget-boolean v5, v5, v11

    if-eqz v5, :cond_4

    invoke-virtual {v7}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v5

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v11, v5

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    div-float/2addr v11, v5

    iget v5, v4, Lcom/samsung/android/nexus/particle/emitter/Status;->acc:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    goto :goto_1

    :cond_3
    move v11, v12

    :goto_1
    iget v4, v4, Lcom/samsung/android/nexus/particle/emitter/Status;->speed:F

    const/high16 v5, 0x3fc00000    # 1.5f

    sget v6, Lcom/samsung/android/nexus/particle/emitter/Particle;->sDensity:F

    mul-float/2addr v6, v5

    div-float/2addr v4, v6

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v11, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    cmpl-float v5, v4, v12

    if-eqz v5, :cond_4

    invoke-virtual {p1, v12, v4, v8, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_4
    iget v4, v7, Landroid/graphics/RectF;->left:F

    iget v5, v7, Landroid/graphics/RectF;->top:F

    iget v6, v7, Landroid/graphics/RectF;->right:F

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v8, v3, Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;->mBounds:Landroid/graphics/RectF;

    iget v9, v8, Landroid/graphics/RectF;->left:F

    iget v11, v8, Landroid/graphics/RectF;->top:F

    iget v12, v8, Landroid/graphics/RectF;->right:F

    iget v13, v8, Landroid/graphics/RectF;->bottom:F

    cmpl-float v9, v9, v4

    if-nez v9, :cond_5

    cmpl-float v9, v11, v5

    if-nez v9, :cond_5

    cmpl-float v9, v12, v6

    if-nez v9, :cond_5

    cmpl-float v9, v13, v7

    if-eqz v9, :cond_6

    :cond_5
    invoke-virtual {v8, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_6
    invoke-virtual {v3, p1, v10}, Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    :goto_2
    iget-object v0, v0, Lcom/samsung/android/nexus/particle/emitter/Particle;->next:Lcom/samsung/android/nexus/particle/emitter/Particle;

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    :goto_3
    return-void
.end method

.method public final resume()V
    .locals 7

    iget-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mIsPaused:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "World"

    const-string/jumbo v1, "resume: "

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mIsRunning:Z

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    iget-wide v5, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mStartedTime:J

    cmp-long v2, v3, v5

    if-nez v2, :cond_1

    iput-wide v0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mStartedTime:J

    :cond_1
    iget-wide v5, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mPausedTime:J

    cmp-long v2, v3, v5

    if-gez v2, :cond_2

    iget-wide v2, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mTotalPausedTime:J

    sub-long v4, v0, v5

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mTotalPausedTime:J

    :cond_2
    iput-wide v0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mLastStepTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mIsPaused:Z

    return-void
.end method

.method public final setSize(FF)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mWorldStatus:Lcom/samsung/android/nexus/particle/emitter/Status;

    iput p1, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->width:F

    iget v1, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleX:F

    mul-float/2addr v1, p1

    iput v1, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->drawingWidth:F

    iput p2, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->height:F

    iget v1, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleY:F

    mul-float/2addr v1, p2

    iput v1, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->drawingHeight:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    iput p1, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->posX:F

    div-float/2addr p2, v1

    iput p2, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->posY:F

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->mUpdateBounds:Z

    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    sput p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->sDensity:F

    return-void
.end method

.method public final start()V
    .locals 2

    const-string v0, "World"

    const-string/jumbo v1, "start: "

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mIsRunning:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mIsRunning:Z

    iget-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mIsPaused:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mStartedTime:J

    :cond_0
    const-wide/16 v0, 0x0

    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mRootParticle:Lcom/samsung/android/nexus/particle/emitter/Particle;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/nexus/particle/emitter/Particle;->start(J)V

    :cond_1
    return-void
.end method

.method public final step(J)V
    .locals 34

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iget-boolean v6, v0, Lcom/samsung/android/nexus/particle/emitter/World;->mIsRunning:Z

    if-eqz v6, :cond_28

    iget-boolean v6, v0, Lcom/samsung/android/nexus/particle/emitter/World;->mIsPaused:Z

    if-eqz v6, :cond_0

    goto/16 :goto_1b

    :cond_0
    iget-wide v6, v0, Lcom/samsung/android/nexus/particle/emitter/World;->mLastStepTime:J

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    const/4 v11, 0x0

    if-nez v10, :cond_1

    move v6, v11

    goto :goto_0

    :cond_1
    sub-long v6, v1, v6

    long-to-float v6, v6

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v6, v7

    :goto_0
    iput-wide v1, v0, Lcom/samsung/android/nexus/particle/emitter/World;->mLastStepTime:J

    iget-wide v12, v0, Lcom/samsung/android/nexus/particle/emitter/World;->mStartedTime:J

    sub-long/2addr v1, v12

    iget-wide v12, v0, Lcom/samsung/android/nexus/particle/emitter/World;->mTotalPausedTime:J

    sub-long/2addr v1, v12

    iget-object v7, v0, Lcom/samsung/android/nexus/particle/emitter/World;->mRootParticle:Lcom/samsung/android/nexus/particle/emitter/Particle;

    iget-boolean v10, v7, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEnable:Z

    if-eqz v10, :cond_3

    iget-wide v13, v7, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEndTime:J

    cmp-long v10, v1, v13

    if-lez v10, :cond_2

    iget-object v10, v7, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEmitterSchedules:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v10, 0x1

    :goto_2
    const/4 v13, 0x0

    if-nez v10, :cond_4

    invoke-virtual {v7, v1, v2, v13}, Lcom/samsung/android/nexus/particle/emitter/Particle;->checkEmitterSchedule(JLcom/samsung/android/nexus/particle/emitter/Status;)V

    :cond_4
    iget-object v7, v0, Lcom/samsung/android/nexus/particle/emitter/World;->mWorldParticleLinkedList:Lcom/samsung/android/nexus/particle/emitter/World$WorldParticleLinkedList;

    iget-object v10, v7, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->head:Lcom/samsung/android/nexus/particle/emitter/Particle;

    iget v15, v7, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->size:I

    move-object/from16 v16, v13

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v20, v18

    const/4 v14, 0x0

    const/16 v19, 0x0

    :goto_3
    if-ge v14, v15, :cond_25

    iget-boolean v13, v10, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEnable:Z

    if-eqz v13, :cond_5

    iget-wide v8, v10, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEndTime:J

    cmp-long v8, v1, v8

    if-lez v8, :cond_6

    iget-object v8, v10, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEmitterSchedules:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_5
    move-wide/from16 v21, v4

    move-object/from16 v27, v7

    move v7, v11

    move v12, v14

    move v3, v15

    const/4 v4, 0x0

    goto/16 :goto_18

    :cond_6
    iget-boolean v8, v10, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEnable:Z

    if-nez v8, :cond_7

    move-wide/from16 v21, v4

    move-object/from16 v27, v7

    move v7, v11

    move/from16 v23, v14

    move/from16 v24, v15

    goto/16 :goto_17

    :cond_7
    iget-object v8, v10, Lcom/samsung/android/nexus/particle/emitter/Particle;->mParentEmitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    iget-object v8, v8, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mParticleRule:Lcom/samsung/android/nexus/particle/emitter/ParticleRule;

    move-wide/from16 v21, v4

    iget-wide v3, v10, Lcom/samsung/android/nexus/particle/emitter/Particle;->mStartTime:J

    sub-long v3, v1, v3

    long-to-float v3, v3

    iget-wide v4, v10, Lcom/samsung/android/nexus/particle/emitter/Particle;->mLifeTime:J

    long-to-float v4, v4

    div-float v4, v3, v4

    cmpg-float v5, v4, v11

    if-gez v5, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v13, "onStep: fix wrong fraction: "

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " Play: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " Started: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v10, Lcom/samsung/android/nexus/particle/emitter/Particle;->mStartTime:J

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " life: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v10, Lcom/samsung/android/nexus/particle/emitter/Particle;->mLifeTime:J

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " elapsed: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Nexus[Particle]"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :cond_8
    iput v4, v10, Lcom/samsung/android/nexus/particle/emitter/Particle;->mFraction:F

    iget-object v3, v8, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->configValues:[Z

    sget-object v5, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;->AUTO_ROTATE_ALONG_MOVE_DIRECTION:Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;

    iget v5, v5, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;->idx:I

    aget-boolean v5, v3, v5

    sget-object v11, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;->DISABLE_WHEN_DISAPPEARED:Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;

    iget v11, v11, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;->idx:I

    aget-boolean v11, v3, v11

    sget-object v12, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;->DISABLE_WHEN_OUTSIDE:Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;

    iget v12, v12, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;->idx:I

    aget-boolean v3, v3, v12

    iget-object v12, v10, Lcom/samsung/android/nexus/particle/emitter/Particle;->status:Lcom/samsung/android/nexus/particle/emitter/Status;

    iget v9, v12, Lcom/samsung/android/nexus/particle/emitter/Status;->posX:F

    iget v13, v12, Lcom/samsung/android/nexus/particle/emitter/Status;->posY:F

    move/from16 v23, v14

    iget v14, v12, Lcom/samsung/android/nexus/particle/emitter/Status;->color:I

    move/from16 v24, v15

    iget-object v15, v0, Lcom/samsung/android/nexus/particle/emitter/World;->mWorldStatus:Lcom/samsung/android/nexus/particle/emitter/Status;

    if-nez v15, :cond_9

    move-wide/from16 v31, v1

    move-object/from16 v27, v7

    move-object/from16 v25, v10

    move/from16 v26, v11

    const/4 v11, 0x0

    goto/16 :goto_c

    :cond_9
    move-object/from16 v25, v10

    move/from16 v26, v11

    iget-wide v10, v8, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->lastWorldFactorUpdateTime:J

    cmp-long v10, v10, v1

    iget-object v11, v8, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->tempWorldFactorValues:[F

    if-eqz v10, :cond_13

    iput-wide v1, v8, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->lastWorldFactorUpdateTime:J

    iget-object v10, v15, Lcom/samsung/android/nexus/particle/emitter/Status;->factor:Lcom/samsung/android/nexus/particle/emitter/Factor;

    iget-object v10, v10, Lcom/samsung/android/nexus/particle/emitter/Factor;->values:[F

    array-length v0, v11

    move-object/from16 v27, v7

    const/4 v7, 0x0

    invoke-static {v10, v7, v11, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->WIDTH:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType$Holder;->sValuesCache:[Lcom/samsung/android/nexus/particle/emitter/FactorType;

    array-length v7, v0

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v7, :cond_12

    move/from16 v28, v7

    aget-object v7, v0, v10

    move-object/from16 v29, v0

    iget v0, v7, Lcom/samsung/android/nexus/particle/emitter/FactorType;->opType:I

    const/high16 v30, 0x3f800000    # 1.0f

    move-wide/from16 v31, v1

    iget-object v1, v8, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->applyWorldFactorCheckList:[Z

    if-eqz v0, :cond_e

    const/4 v2, 0x1

    if-eq v0, v2, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    iget v2, v7, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    aget-boolean v16, v1, v2

    if-eqz v16, :cond_b

    aget v30, v11, v2

    :cond_b
    aput v30, v11, v2

    iget v2, v7, Lcom/samsung/android/nexus/particle/emitter/FactorType;->speedIdx:I

    aget-boolean v16, v1, v2

    if-eqz v16, :cond_c

    aget v16, v11, v2

    goto :goto_5

    :cond_c
    const/16 v16, 0x0

    :goto_5
    aput v16, v11, v2

    iget v2, v7, Lcom/samsung/android/nexus/particle/emitter/FactorType;->accelerationIdx:I

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_d

    aget v1, v11, v2

    goto :goto_6

    :cond_d
    const/4 v1, 0x0

    :goto_6
    aput v1, v11, v2

    :goto_7
    const/4 v0, 0x1

    goto :goto_b

    :cond_e
    iget v2, v7, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    aget v16, v11, v2

    aget-boolean v33, v1, v2

    if-eqz v33, :cond_f

    move/from16 v33, v30

    goto :goto_8

    :cond_f
    const/16 v33, 0x0

    :goto_8
    mul-float v16, v16, v33

    aput v16, v11, v2

    iget v2, v7, Lcom/samsung/android/nexus/particle/emitter/FactorType;->speedIdx:I

    aget v16, v11, v2

    aget-boolean v33, v1, v2

    if-eqz v33, :cond_10

    move/from16 v33, v30

    goto :goto_9

    :cond_10
    const/16 v33, 0x0

    :goto_9
    mul-float v16, v16, v33

    aput v16, v11, v2

    iget v2, v7, Lcom/samsung/android/nexus/particle/emitter/FactorType;->accelerationIdx:I

    aget v7, v11, v2

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_11

    goto :goto_a

    :cond_11
    const/16 v30, 0x0

    :goto_a
    mul-float v7, v7, v30

    aput v7, v11, v2

    goto :goto_7

    :goto_b
    add-int/2addr v10, v0

    move/from16 v7, v28

    move-object/from16 v0, v29

    move-wide/from16 v1, v31

    goto :goto_4

    :cond_12
    move-wide/from16 v31, v1

    goto :goto_c

    :cond_13
    move-wide/from16 v31, v1

    move-object/from16 v27, v7

    :goto_c
    invoke-virtual {v12, v4, v6, v11}, Lcom/samsung/android/nexus/particle/emitter/Status;->onStep(FF[F)V

    if-eqz v5, :cond_14

    iget v1, v12, Lcom/samsung/android/nexus/particle/emitter/Status;->posY:F

    sub-float/2addr v1, v13

    float-to-double v1, v1

    iget v4, v12, Lcom/samsung/android/nexus/particle/emitter/Status;->posX:F

    sub-float/2addr v4, v9

    float-to-double v4, v4

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x43b40000    # 360.0f

    add-float/2addr v1, v2

    rem-float/2addr v1, v2

    iput v1, v12, Lcom/samsung/android/nexus/particle/emitter/Status;->rotation:F

    :cond_14
    iget v1, v12, Lcom/samsung/android/nexus/particle/emitter/Status;->color:I

    if-eq v14, v1, :cond_15

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v10, v25

    iput-object v2, v10, Lcom/samsung/android/nexus/particle/emitter/Particle;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_d

    :cond_15
    move-object/from16 v10, v25

    :goto_d
    iget-object v1, v10, Lcom/samsung/android/nexus/particle/emitter/Particle;->mTempWorldBounds:Landroid/graphics/RectF;

    iget-boolean v2, v15, Lcom/samsung/android/nexus/particle/emitter/Status;->mUpdateBounds:Z

    if-eqz v2, :cond_16

    invoke-virtual {v15}, Lcom/samsung/android/nexus/particle/emitter/Status;->updateBounds()V

    :cond_16
    iget-object v2, v15, Lcom/samsung/android/nexus/particle/emitter/Status;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v1, v10, Lcom/samsung/android/nexus/particle/emitter/Particle;->mTempWorldBounds:Landroid/graphics/RectF;

    iget-boolean v2, v12, Lcom/samsung/android/nexus/particle/emitter/Status;->mUpdateBounds:Z

    if-eqz v2, :cond_17

    invoke-virtual {v12}, Lcom/samsung/android/nexus/particle/emitter/Status;->updateBounds()V

    :cond_17
    iget-object v2, v12, Lcom/samsung/android/nexus/particle/emitter/Status;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    iget v7, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v4

    iput v7, v1, Landroid/graphics/RectF;->left:F

    iget v7, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v5

    iput v7, v1, Landroid/graphics/RectF;->top:F

    iget v7, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v7, v4

    iput v7, v1, Landroid/graphics/RectF;->right:F

    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v5

    iput v4, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v1

    sget-object v2, Lcom/samsung/android/nexus/particle/emitter/FactorType;->ALPHA:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget-object v4, v12, Lcom/samsung/android/nexus/particle/emitter/Status;->factorKeyFrameSetList:Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;

    iget-object v4, v4, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->list:[Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;

    iget v5, v2, Lcom/samsung/android/nexus/particle/emitter/FactorType;->idx:I

    aget-object v4, v4, v5

    if-nez v4, :cond_18

    iget-object v4, v12, Lcom/samsung/android/nexus/particle/emitter/Status;->factor:Lcom/samsung/android/nexus/particle/emitter/Factor;

    iget-object v4, v4, Lcom/samsung/android/nexus/particle/emitter/Factor;->values:[F

    iget v5, v2, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    aget v5, v4, v5

    const/4 v7, 0x0

    cmpg-float v5, v5, v7

    if-gtz v5, :cond_19

    iget v5, v2, Lcom/samsung/android/nexus/particle/emitter/FactorType;->speedIdx:I

    aget v5, v4, v5

    cmpg-float v5, v5, v7

    if-gtz v5, :cond_19

    iget v2, v2, Lcom/samsung/android/nexus/particle/emitter/FactorType;->accelerationIdx:I

    aget v2, v4, v2

    cmpg-float v2, v2, v7

    if-gtz v2, :cond_19

    const/4 v2, 0x1

    goto :goto_e

    :cond_18
    const/4 v7, 0x0

    :cond_19
    const/4 v2, 0x0

    :goto_e
    iput-boolean v1, v10, Lcom/samsung/android/nexus/particle/emitter/Particle;->mIsInSight:Z

    if-nez v1, :cond_1b

    if-nez v3, :cond_1a

    goto :goto_f

    :cond_1a
    const/4 v4, 0x0

    goto :goto_10

    :cond_1b
    :goto_f
    const/4 v4, 0x1

    :goto_10
    iput-boolean v4, v10, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEnableEmission:Z

    iget-object v4, v10, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEmitterSchedules:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1f

    if-eqz v3, :cond_1d

    if-eqz v1, :cond_1c

    goto :goto_12

    :cond_1c
    :goto_11
    const/4 v1, 0x0

    goto :goto_13

    :cond_1d
    :goto_12
    if-eqz v26, :cond_1e

    if-eqz v2, :cond_1e

    goto :goto_11

    :goto_13
    iput-boolean v1, v10, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEnable:Z

    :cond_1e
    :goto_14
    move-wide/from16 v1, v31

    goto :goto_16

    :cond_1f
    if-eqz v1, :cond_21

    if-eqz v26, :cond_20

    if-nez v2, :cond_21

    :cond_20
    const/4 v1, 0x1

    goto :goto_15

    :cond_21
    const/4 v1, 0x0

    :goto_15
    iput-boolean v1, v10, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEnable:Z

    goto :goto_14

    :goto_16
    invoke-virtual {v10, v1, v2, v12}, Lcom/samsung/android/nexus/particle/emitter/Particle;->checkEmitterSchedule(JLcom/samsung/android/nexus/particle/emitter/Status;)V

    :goto_17
    if-lez v19, :cond_22

    sget-object v14, Lcom/samsung/android/nexus/particle/emitter/Particle;->sPool:Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedListPool;

    move/from16 v12, v23

    move/from16 v3, v24

    move-object/from16 v15, v27

    move-object/from16 v16, v20

    invoke-virtual/range {v14 .. v19}, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->transferFrom(Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;Lcom/samsung/android/nexus/particle/emitter/Particle;Lcom/samsung/android/nexus/particle/emitter/Particle;Lcom/samsung/android/nexus/particle/emitter/Particle;I)V

    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    goto :goto_1a

    :cond_22
    move/from16 v12, v23

    move/from16 v3, v24

    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    goto :goto_1a

    :goto_18
    iput-boolean v4, v10, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEnable:Z

    const-wide/16 v8, 0x0

    iput-wide v8, v10, Lcom/samsung/android/nexus/particle/emitter/Particle;->mStartTime:J

    iput-wide v8, v10, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEndTime:J

    iget-object v5, v10, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEmitterSchedules:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, v10, Lcom/samsung/android/nexus/particle/emitter/Particle;->mParticleTexture:Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;

    if-eqz v5, :cond_23

    invoke-virtual {v5}, Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;->onRelease()V

    const/4 v5, 0x0

    iput-object v5, v10, Lcom/samsung/android/nexus/particle/emitter/Particle;->mParticleTexture:Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;

    goto :goto_19

    :cond_23
    const/4 v5, 0x0

    :goto_19
    invoke-virtual {v10}, Lcom/samsung/android/nexus/particle/emitter/Particle;->release()V

    if-nez v19, :cond_24

    move-object/from16 v17, v10

    move-object/from16 v20, v16

    :cond_24
    const/4 v0, 0x1

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v18, v10

    :goto_1a
    iget-object v11, v10, Lcom/samsung/android/nexus/particle/emitter/Particle;->next:Lcom/samsung/android/nexus/particle/emitter/Particle;

    add-int/lit8 v14, v12, 0x1

    move-object/from16 v0, p0

    move v15, v3

    move-object v13, v5

    move-object/from16 v16, v10

    move-object v10, v11

    move-wide/from16 v4, v21

    move v11, v7

    move-object/from16 v7, v27

    goto/16 :goto_3

    :cond_25
    move-wide/from16 v21, v4

    move-object/from16 v27, v7

    if-lez v19, :cond_26

    sget-object v14, Lcom/samsung/android/nexus/particle/emitter/Particle;->sPool:Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedListPool;

    move-object/from16 v15, v27

    move-object/from16 v16, v20

    invoke-virtual/range {v14 .. v19}, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->transferFrom(Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;Lcom/samsung/android/nexus/particle/emitter/Particle;Lcom/samsung/android/nexus/particle/emitter/Particle;Lcom/samsung/android/nexus/particle/emitter/Particle;I)V

    :cond_26
    move-object/from16 v0, v27

    iget v1, v0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->size:I

    if-nez v1, :cond_27

    iget-object v0, v0, Lcom/samsung/android/nexus/particle/emitter/World$WorldParticleLinkedList;->this$0:Lcom/samsung/android/nexus/particle/emitter/World;

    iget-object v0, v0, Lcom/samsung/android/nexus/particle/emitter/World;->mFrameController:Lcom/samsung/android/nexus/particle/emitter/FrameController;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/particle/emitter/FrameController;->startFrameRateDown()V

    :cond_27
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v0, v0, v21

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    :cond_28
    :goto_1b
    return-void
.end method
