.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/StepCurve;
.super Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;
.source "StepCurve.java"


# static fields
.field private static final blacklist DEBUG:Z


# instance fields
.field blacklist mCurveFit:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;


# direct methods
.method public constructor blacklist <init>([FII)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;-><init>()V

    invoke-static {p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/StepCurve;->genSpline([FII)Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/StepCurve;->mCurveFit:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;

    return-void
.end method

.method private static blacklist genSpline([FII)Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;
    .locals 18

    move/from16 v0, p2

    mul-int/lit8 v1, v0, 0x3

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    add-int/lit8 v3, v0, -0x1

    int-to-double v4, v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    div-double v4, v6, v4

    new-array v2, v2, [I

    const/4 v8, 0x1

    aput v8, v2, v8

    const/4 v8, 0x0

    aput v1, v2, v8

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    new-array v9, v1, [D

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v0, :cond_1

    add-int v11, v10, p1

    aget v11, p0, v11

    float-to-double v11, v11

    add-int v13, v10, v3

    aget-object v13, v2, v13

    aput-wide v11, v13, v8

    add-int v13, v10, v3

    int-to-double v14, v10

    mul-double/2addr v14, v4

    aput-wide v14, v9, v13

    if-lez v10, :cond_0

    mul-int/lit8 v13, v3, 0x2

    add-int/2addr v13, v10

    aget-object v13, v2, v13

    add-double v14, v11, v6

    aput-wide v14, v13, v8

    mul-int/lit8 v13, v3, 0x2

    add-int/2addr v13, v10

    int-to-double v14, v10

    mul-double/2addr v14, v4

    add-double/2addr v14, v6

    aput-wide v14, v9, v13

    add-int/lit8 v13, v10, -0x1

    aget-object v13, v2, v13

    sub-double v14, v11, v6

    sub-double/2addr v14, v4

    aput-wide v14, v13, v8

    add-int/lit8 v13, v10, -0x1

    int-to-double v14, v10

    mul-double/2addr v14, v4

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    add-double v14, v14, v16

    sub-double/2addr v14, v4

    aput-wide v14, v9, v13

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    new-instance v6, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;

    invoke-direct {v6, v9, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;-><init>([D[[D)V

    return-object v6
.end method


# virtual methods
.method public blacklist get(F)F
    .locals 4

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/StepCurve;->mCurveFit:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;

    float-to-double v1, p1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->getPos(DI)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public blacklist getDiff(F)F
    .locals 4

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/StepCurve;->mCurveFit:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;

    float-to-double v1, p1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->getSlope(DI)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method
