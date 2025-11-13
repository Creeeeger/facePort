.class public abstract Landroidx/constraintlayout/core/motion/utils/CurveFit;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;
    .locals 3

    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v1, :cond_0

    move p0, v2

    :cond_0
    if-eqz p0, :cond_2

    if-eq p0, v2, :cond_1

    new-instance p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;-><init>([D[[D)V

    return-object p0

    :cond_1
    new-instance p0, Landroidx/constraintlayout/core/motion/utils/CurveFit$Constant;

    const/4 v0, 0x0

    aget-wide v1, p1, v0

    aget-object p1, p2, v0

    invoke-direct {p0, v1, v2, p1}, Landroidx/constraintlayout/core/motion/utils/CurveFit$Constant;-><init>(D[D)V

    return-object p0

    :cond_2
    new-instance p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;-><init>([D[[D)V

    return-object p0
.end method


# virtual methods
.method public abstract getPos(D)D
.end method

.method public abstract getPos(D[D)V
.end method

.method public abstract getPos(D[F)V
.end method

.method public abstract getSlope(D)D
.end method

.method public abstract getSlope(D[D)V
.end method

.method public abstract getTimePoints()[D
.end method
