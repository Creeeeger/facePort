.class public final Lcom/samsung/android/nexus/particle/emitter/EmissionRule;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final applyParentFactorCheckIndexList:[I

.field public final applyParentFactorCheckList:[Z

.field public applyParentFactorCheckListCount:I

.field public final beginFraction:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

.field public final beginTime:Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

.field public final configValues:[Z

.field public final emissionAngle:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

.field public final emitterCellCount:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

.field public final emitterCellOffset:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

.field public final emitterShapeBounds:Landroid/graphics/RectF;

.field public final emitterShapePath:Landroid/graphics/Path;

.field public final initialVelocity:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

.field public intervalFraction:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

.field public final intervalTime:Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

.field public final mDirectionMode:I

.field public final mMatrix:Landroid/graphics/Matrix;

.field public final mRotatedEmitterShapePath:Landroid/graphics/Path;

.field public final mShapeScaleMode:I

.field public pathPointerOffsetXArray:[F

.field public pathPointerOffsetYArray:[F

.field public pathPointerVelocitiesX:[F

.field public pathPointerVelocitiesY:[F

.field public pathTanXArray:[F

.field public pathTanYArray:[F

.field public pointerSize:I

.field public shapeBaseScale:F

.field public final shapeScale:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

.field public final shapeScaleX:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

.field public final shapeScaleY:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->mDirectionMode:I

    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->mShapeScaleMode:I

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->mRotatedEmitterShapePath:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->mMatrix:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emitterShapeBounds:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emitterShapePath:Landroid/graphics/Path;

    new-instance v1, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(F)V

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->shapeScale:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    new-instance v1, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-direct {v1, v2}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(F)V

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->shapeScaleX:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    new-instance v1, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-direct {v1, v2}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(F)V

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->shapeScaleY:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->shapeBaseScale:F

    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pointerSize:I

    new-instance v1, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emitterCellCount:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    new-instance v1, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(FF)V

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emitterCellOffset:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    new-instance v1, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-direct {v1, v4}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(F)V

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->initialVelocity:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    new-instance v1, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-direct {v1, v4}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(F)V

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emissionAngle:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    new-instance v1, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

    const-wide/16 v4, 0x0

    invoke-direct {v1, v4, v5}, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;-><init>(J)V

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->beginTime:Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->beginFraction:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    new-instance v2, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

    const-wide/16 v4, 0x3e8

    invoke-direct {v2, v4, v5}, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;-><init>(J)V

    iput-object v2, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->intervalTime:Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->intervalFraction:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    sget-object v1, Lcom/samsung/android/nexus/particle/emitter/FactorType;->WIDTH:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    sget v1, Lcom/samsung/android/nexus/particle/emitter/FactorType$Holder;->sCount:I

    mul-int/lit8 v1, v1, 0x3

    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->applyParentFactorCheckList:[Z

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->applyParentFactorCheckIndexList:[I

    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->applyParentFactorCheckListCount:I

    sget-object v1, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;->APPLY_PARENT_ANGULAR_VELOCITY:Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;

    sget v1, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType$Holder;->sCount:I

    new-array v2, v1, [Z

    sget-object v4, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType$Holder;->sValuesCache:[Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v5, v4, v0

    iget-boolean v5, v5, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;->defaultValue:Z

    aput-boolean v5, v2, v0

    add-int/2addr v0, v3

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->configValues:[Z

    invoke-virtual {p0}, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->setShapeType()V

    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;->POS_X:Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->applyParentFactorValue(Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;)V

    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;->POS_Y:Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->applyParentFactorValue(Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/nexus/particle/emitter/EmissionRule;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput v2, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->mDirectionMode:I

    iput v2, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->mShapeScaleMode:I

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->mRotatedEmitterShapePath:Landroid/graphics/Path;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->mMatrix:Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emitterShapeBounds:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emitterShapePath:Landroid/graphics/Path;

    new-instance v5, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v6}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(F)V

    iput-object v5, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->shapeScale:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    new-instance v7, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-direct {v7, v6}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(F)V

    iput-object v7, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->shapeScaleX:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    new-instance v8, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-direct {v8, v6}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(F)V

    iput-object v8, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->shapeScaleY:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    iput v6, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->shapeBaseScale:F

    iput v2, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pointerSize:I

    new-instance v9, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;-><init>(I)V

    iput-object v9, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emitterCellCount:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    new-instance v11, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    const/4 v12, 0x0

    invoke-direct {v11, v12, v6}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(FF)V

    iput-object v11, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emitterCellOffset:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    new-instance v6, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-direct {v6, v12}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(F)V

    iput-object v6, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->initialVelocity:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    new-instance v13, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-direct {v13, v12}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(F)V

    iput-object v13, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emissionAngle:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    new-instance v12, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

    const-wide/16 v14, 0x0

    invoke-direct {v12, v14, v15}, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;-><init>(J)V

    iput-object v12, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->beginTime:Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

    const/4 v14, 0x0

    iput-object v14, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->beginFraction:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    new-instance v15, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

    move-object/from16 v16, v11

    const-wide/16 v10, 0x3e8

    invoke-direct {v15, v10, v11}, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;-><init>(J)V

    iput-object v15, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->intervalTime:Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

    iput-object v14, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->intervalFraction:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    sget-object v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->WIDTH:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    sget v10, Lcom/samsung/android/nexus/particle/emitter/FactorType$Holder;->sCount:I

    mul-int/lit8 v10, v10, 0x3

    new-array v11, v10, [Z

    iput-object v11, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->applyParentFactorCheckList:[Z

    new-array v14, v10, [I

    iput-object v14, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->applyParentFactorCheckIndexList:[I

    iput v2, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->applyParentFactorCheckListCount:I

    sget-object v17, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;->APPLY_PARENT_ANGULAR_VELOCITY:Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;

    sget v2, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType$Holder;->sCount:I

    move-object/from16 v18, v14

    new-array v14, v2, [Z

    sget-object v19, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType$Holder;->sValuesCache:[Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;

    move/from16 v20, v10

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v2, :cond_0

    move/from16 v21, v2

    aget-object v2, v19, v10

    iget-boolean v2, v2, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;->defaultValue:Z

    aput-boolean v2, v14, v10

    const/4 v2, 0x1

    add-int/2addr v10, v2

    move/from16 v2, v21

    goto :goto_0

    :cond_0
    move/from16 v21, v2

    iput-object v14, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->configValues:[Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->setShapeType()V

    sget-object v2, Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;->POS_X:Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;

    invoke-virtual {v0, v2}, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->applyParentFactorValue(Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;)V

    sget-object v2, Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;->POS_Y:Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;

    invoke-virtual {v0, v2}, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->applyParentFactorValue(Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;)V

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v2, v1, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emitterShapeBounds:Landroid/graphics/RectF;

    invoke-virtual {v3, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v2, v1, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emitterShapePath:Landroid/graphics/Path;

    invoke-virtual {v4, v2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget v2, v1, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->mShapeScaleMode:I

    iput v2, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->mShapeScaleMode:I

    iget-object v2, v1, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->shapeScale:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-virtual {v5, v2}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->set(Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;)V

    iget-object v2, v1, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->shapeScaleX:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-virtual {v7, v2}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->set(Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;)V

    iget-object v2, v1, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->shapeScaleY:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-virtual {v8, v2}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->set(Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;)V

    iget v2, v1, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->shapeBaseScale:F

    iput v2, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->shapeBaseScale:F

    iget-object v2, v1, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emitterCellCount:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    iget v3, v2, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMin:I

    iput v3, v9, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMin:I

    iget v2, v2, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMax:I

    iput v2, v9, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMax:I

    invoke-virtual {v9}, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->onRangeUpdated()V

    iget-object v2, v1, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emitterCellOffset:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    move-object/from16 v3, v16

    invoke-virtual {v3, v2}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->set(Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;)V

    iget-object v2, v1, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emissionAngle:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-virtual {v13, v2}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->set(Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;)V

    iget-object v2, v1, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->initialVelocity:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-virtual {v6, v2}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->set(Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;)V

    iget v2, v9, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMax:I

    iput v2, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pointerSize:I

    new-array v3, v2, [F

    iput-object v3, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathTanXArray:[F

    new-array v3, v2, [F

    iput-object v3, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathTanYArray:[F

    new-array v3, v2, [F

    iput-object v3, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathPointerOffsetXArray:[F

    new-array v3, v2, [F

    iput-object v3, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathPointerOffsetYArray:[F

    new-array v3, v2, [F

    iput-object v3, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathPointerVelocitiesX:[F

    new-array v2, v2, [F

    iput-object v2, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathPointerVelocitiesY:[F

    iget-object v2, v1, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->beginTime:Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

    iget-wide v3, v2, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMin:J

    iput-wide v3, v12, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMin:J

    iget-wide v2, v2, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMax:J

    iput-wide v2, v12, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMax:J

    invoke-virtual {v12}, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->onRangeUpdated()V

    iget-object v2, v1, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->intervalTime:Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

    iget-wide v3, v2, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMin:J

    iput-wide v3, v15, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMin:J

    iget-wide v2, v2, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMax:J

    iput-wide v2, v15, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMax:J

    invoke-virtual {v15}, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->onRangeUpdated()V

    iget-object v2, v1, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->beginFraction:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    if-eqz v2, :cond_2

    new-instance v3, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-direct {v3, v2}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;)V

    iput-object v3, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->beginFraction:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    :cond_2
    iget-object v2, v1, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->intervalFraction:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    if-eqz v2, :cond_3

    new-instance v3, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-direct {v3, v2}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;)V

    iput-object v3, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->intervalFraction:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    :cond_3
    iget v2, v1, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->mDirectionMode:I

    iput v2, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->mDirectionMode:I

    iget-object v2, v1, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->applyParentFactorCheckList:[Z

    move/from16 v10, v20

    const/4 v3, 0x0

    invoke-static {v2, v3, v11, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v1, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->applyParentFactorCheckIndexList:[I

    move-object/from16 v4, v18

    invoke-static {v2, v3, v4, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, v1, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->applyParentFactorCheckListCount:I

    iput v2, v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->applyParentFactorCheckListCount:I

    iget-object v0, v1, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->configValues:[Z

    move/from16 v1, v21

    invoke-static {v0, v3, v14, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    return-void
.end method


# virtual methods
.method public final applyParentFactorValue(Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;)V
    .locals 3

    iget-object p1, p1, Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;->factorType:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget p1, p1, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    iget-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->applyParentFactorCheckList:[Z

    aget-boolean v1, v0, p1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    aput-boolean v2, v0, p1

    iget v0, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->applyParentFactorCheckListCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->applyParentFactorCheckListCount:I

    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->applyParentFactorCheckIndexList:[I

    aput p1, p0, v0

    :cond_0
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;

    invoke-direct {v0, p0}, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;-><init>(Lcom/samsung/android/nexus/particle/emitter/EmissionRule;)V

    return-object v0
.end method

.method public final setShapeType()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emitterShapeBounds:Landroid/graphics/RectF;

    const/high16 v1, -0x41000000    # -0.5f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emitterShapePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->shapeBaseScale:F

    iget-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emitterShapePath:Landroid/graphics/Path;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emitterShapePath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/graphics/Path;->close()V

    return-void
.end method
