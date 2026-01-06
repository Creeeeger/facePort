.class Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;
.super Ljava/lang/Object;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CycleOscillator"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CycleOscillator"

.field static final UNSET:I = -0x1


# instance fields
.field mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

.field public mCustomConstraints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;"
        }
    .end annotation
.end field

.field mOffset:[F

.field mOscillator:Landroidx/constraintlayout/motion/utils/Oscillator;

.field mPathLength:F

.field mPeriod:[F

.field mPosition:[D

.field mScale:[F

.field mSplineSlopeCache:[D

.field mSplineValueCache:[D

.field mValues:[F

.field private final mVariesBy:I

.field mWaveShape:I


# direct methods
.method constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/constraintlayout/motion/utils/Oscillator;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/Oscillator;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/motion/utils/Oscillator;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mCustomConstraints:Ljava/util/HashMap;

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mWaveShape:I

    iput p2, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mVariesBy:I

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/motion/utils/Oscillator;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/utils/Oscillator;->setType(I)V

    new-array v0, p3, [F

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mValues:[F

    new-array v0, p3, [D

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    new-array v0, p3, [F

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    new-array v0, p3, [F

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOffset:[F

    new-array v0, p3, [F

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mScale:[F

    return-void
.end method

.method private get(Ljava/lang/String;Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;)Landroidx/constraintlayout/widget/ConstraintAttribute;
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintAttribute;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getType()Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    move-result-object v1

    if-ne v1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConstraintAttribute is already a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getType()Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintAttribute;

    invoke-direct {v0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintAttribute;-><init>(Ljava/lang/String;Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;)V

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getSlope(F)D
    .locals 9

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    float-to-double v3, p1

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    invoke-virtual {v0, v3, v4, v5}, Landroidx/constraintlayout/motion/utils/CurveFit;->getSlope(D[D)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    float-to-double v3, p1

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    invoke-virtual {v0, v3, v4, v5}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    const-wide/16 v3, 0x0

    aput-wide v3, v0, v1

    aput-wide v3, v0, v2

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/motion/utils/Oscillator;

    float-to-double v3, p1

    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/motion/utils/Oscillator;->getValue(D)D

    move-result-wide v3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/motion/utils/Oscillator;

    float-to-double v5, p1

    invoke-virtual {v0, v5, v6}, Landroidx/constraintlayout/motion/utils/Oscillator;->getSlope(D)D

    move-result-wide v5

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    aget-wide v7, v0, v1

    aget-wide v0, v0, v2

    mul-double/2addr v0, v3

    add-double/2addr v7, v0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    aget-wide v0, v0, v2

    mul-double/2addr v0, v5

    add-double/2addr v7, v0

    return-wide v7
.end method

.method public getValues(F)D
    .locals 6

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    float-to-double v3, p1

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    invoke-virtual {v0, v3, v4, v5}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOffset:[F

    aget v3, v3, v2

    float-to-double v3, v3

    aput-wide v3, v0, v2

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mValues:[F

    aget v3, v3, v2

    float-to-double v3, v3

    aput-wide v3, v0, v1

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    aget-wide v2, v0, v2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/motion/utils/Oscillator;

    float-to-double v4, p1

    invoke-virtual {v0, v4, v5}, Landroidx/constraintlayout/motion/utils/Oscillator;->getValue(D)D

    move-result-wide v4

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    aget-wide v0, v0, v1

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public setPoint(IIFFF)V
    .locals 5

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    int-to-double v1, p2

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    aput-wide v1, v0, p1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    aput p3, v0, p1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOffset:[F

    aput p4, v0, p1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mValues:[F

    aput p5, v0, p1

    return-void
.end method

.method public setup(F)V
    .locals 10

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPathLength:F

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    array-length v0, v0

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    const-class v0, D

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mValues:[F

    array-length v4, v2

    add-int/2addr v4, v3

    new-array v4, v4, [D

    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    array-length v2, v2

    add-int/2addr v2, v3

    new-array v2, v2, [D

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    aget-wide v4, v2, v1

    const-wide/16 v6, 0x0

    cmpl-double v2, v4, v6

    if-lez v2, :cond_0

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/motion/utils/Oscillator;

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    aget v4, v4, v1

    invoke-virtual {v2, v6, v7, v4}, Landroidx/constraintlayout/motion/utils/Oscillator;->addPoint(DF)V

    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    array-length v4, v2

    sub-int/2addr v4, v3

    aget-wide v5, v2, v4

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v5, v7

    if-gez v2, :cond_1

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/motion/utils/Oscillator;

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    aget v5, v5, v4

    invoke-virtual {v2, v7, v8, v5}, Landroidx/constraintlayout/motion/utils/Oscillator;->addPoint(DF)V

    :cond_1
    const/4 v2, 0x0

    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_3

    aget-object v5, v0, v2

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOffset:[F

    aget v6, v6, v2

    float-to-double v6, v6

    aput-wide v6, v5, v1

    const/4 v5, 0x0

    :goto_1
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mValues:[F

    array-length v7, v6

    if-ge v5, v7, :cond_2

    aget-object v7, v0, v5

    aget v6, v6, v5

    float-to-double v8, v6

    aput-wide v8, v7, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/motion/utils/Oscillator;

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    aget-wide v6, v6, v2

    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    aget v8, v8, v2

    invoke-virtual {v5, v6, v7, v8}, Landroidx/constraintlayout/motion/utils/Oscillator;->addPoint(DF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/motion/utils/Oscillator;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/utils/Oscillator;->normalize()V

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    array-length v5, v2

    if-le v5, v3, :cond_4

    invoke-static {v1, v2, v0}, Landroidx/constraintlayout/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/motion/utils/CurveFit;

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    :goto_2
    return-void
.end method
