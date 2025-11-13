.class public Lcom/samsung/vekit/Common/Object/Matrix4;
.super Ljava/lang/Object;
.source "Matrix4.java"


# instance fields
.field private final blacklist TAG:Ljava/lang/String;

.field private blacklist matrix:[[D


# direct methods
.method public constructor blacklist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Matrix4"

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x4

    aput v2, v0, v1

    const/4 v1, 0x0

    aput v2, v0, v1

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/Object/Matrix4;->identity()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/vekit/Common/Object/Matrix4;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Matrix4"

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x4

    aput v2, v0, v1

    const/4 v1, 0x0

    aput v2, v0, v1

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Common/Object/Matrix4;->setMatrix(Lcom/samsung/vekit/Common/Object/Matrix4;)V

    return-void
.end method

.method public constructor blacklist <init>([F)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Matrix4"

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x4

    aput v2, v0, v1

    const/4 v1, 0x0

    aput v2, v0, v1

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Common/Object/Matrix4;->set([F)V

    return-void
.end method

.method public constructor blacklist <init>([[D)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Matrix4"

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x4

    aput v2, v0, v1

    const/4 v1, 0x0

    aput v2, v0, v1

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Common/Object/Matrix4;->set([[D)V

    return-void
.end method

.method private blacklist getScale(Lcom/samsung/vekit/Common/Object/Vector3;)F
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/Vector3<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector3;->getX()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector3;->getX()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector3;->getY()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector3;->getY()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector3;->getZ()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector3;->getZ()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public blacklist divide(D)Lcom/samsung/vekit/Common/Object/Matrix4;
    .locals 7

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    const-string v0, "Matrix4"

    const-string v1, "Non zero divider required"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/Matrix4;-><init>()V

    return-object v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x4

    aput v2, v0, v1

    const/4 v1, 0x0

    aput v2, v0, v1

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v1

    iget-object v5, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v5, v5, v1

    aget-wide v5, v5, v3

    div-double/2addr v5, p1

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-direct {v1, v0}, Lcom/samsung/vekit/Common/Object/Matrix4;-><init>([[D)V

    return-object v1
.end method

.method public blacklist get(II)F
    .locals 2

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v0, v0, p2

    aget-wide v0, v0, p1

    double-to-float v0, v0

    return v0
.end method

.method public blacklist getAxisX()Lcom/samsung/vekit/Common/Object/Vector3;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/vekit/Common/Object/Vector3<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/vekit/Common/Object/Vector3;

    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget-wide v3, v1, v2

    double-to-float v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v4, 0x1

    aget-object v3, v3, v4

    aget-wide v3, v3, v2

    double-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v5, 0x2

    aget-object v4, v4, v5

    aget-wide v4, v4, v2

    double-to-float v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/vekit/Common/Object/Vector3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public blacklist getAxisY()Lcom/samsung/vekit/Common/Object/Vector3;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/vekit/Common/Object/Vector3<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/vekit/Common/Object/Vector3;

    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget-wide v3, v1, v2

    double-to-float v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v2

    aget-wide v3, v3, v2

    double-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v5, 0x2

    aget-object v4, v4, v5

    aget-wide v4, v4, v2

    double-to-float v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/vekit/Common/Object/Vector3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public blacklist getAxisZ()Lcom/samsung/vekit/Common/Object/Vector3;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/vekit/Common/Object/Vector3<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/vekit/Common/Object/Vector3;

    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x2

    aget-wide v3, v1, v2

    double-to-float v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v4, 0x1

    aget-object v3, v3, v4

    aget-wide v3, v3, v2

    double-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v4, v4, v2

    aget-wide v4, v4, v2

    double-to-float v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/vekit/Common/Object/Vector3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public blacklist getColumn(I)Lcom/samsung/vekit/Common/Object/Vector4;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/samsung/vekit/Common/Object/Vector4<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/vekit/Common/Object/Vector4;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/samsung/vekit/Common/Object/Vector4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v1, v1, p1

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/vekit/Common/Object/Vector4;->setX(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v1, v1, p1

    const/4 v2, 0x1

    aget-wide v1, v1, v2

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/vekit/Common/Object/Vector4;->setY(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v1, v1, p1

    const/4 v2, 0x2

    aget-wide v1, v1, v2

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/vekit/Common/Object/Vector4;->setZ(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v1, v1, p1

    const/4 v2, 0x3

    aget-wide v1, v1, v2

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/vekit/Common/Object/Vector4;->setW(Ljava/lang/Object;)V

    return-object v0
.end method

.method public blacklist getPosition()Lcom/samsung/vekit/Common/Object/Vector3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/vekit/Common/Object/Vector3<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/vekit/Common/Object/Vector3;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v1}, Lcom/samsung/vekit/Common/Object/Matrix4;->get(II)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/samsung/vekit/Common/Object/Matrix4;->get(II)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {p0, v2, v4}, Lcom/samsung/vekit/Common/Object/Matrix4;->get(II)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/vekit/Common/Object/Vector3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public blacklist getPureRotationMatrix()Lcom/samsung/vekit/Common/Object/Matrix4;
    .locals 14

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/Object/Matrix4;->getScale()Lcom/samsung/vekit/Common/Object/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/Object/Vector3;->getX()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/Object/Matrix4;->getScale()Lcom/samsung/vekit/Common/Object/Vector3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/vekit/Common/Object/Vector3;->getY()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/Object/Matrix4;->getScale()Lcom/samsung/vekit/Common/Object/Vector3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/vekit/Common/Object/Vector3;->getZ()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v4, v4

    new-instance v6, Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-direct {v6}, Lcom/samsung/vekit/Common/Object/Matrix4;-><init>()V

    double-to-float v7, v0

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v8, v7}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    double-to-float v7, v2

    const/4 v9, 0x1

    invoke-virtual {v6, v9, v9, v7}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    double-to-float v7, v4

    const/4 v10, 0x2

    invoke-virtual {v6, v10, v10, v7}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    invoke-virtual {v6}, Lcom/samsung/vekit/Common/Object/Matrix4;->inverse()Lcom/samsung/vekit/Common/Object/Matrix4;

    move-result-object v7

    new-instance v11, Lcom/samsung/vekit/Common/Object/Matrix4;

    iget-object v12, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    invoke-direct {v11, v12}, Lcom/samsung/vekit/Common/Object/Matrix4;-><init>([[D)V

    const/4 v12, 0x3

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v8, v13}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    invoke-virtual {v11, v12, v9, v13}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    invoke-virtual {v11, v12, v10, v13}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    invoke-virtual {v11, v7}, Lcom/samsung/vekit/Common/Object/Matrix4;->multiply(Lcom/samsung/vekit/Common/Object/Matrix4;)Lcom/samsung/vekit/Common/Object/Matrix4;

    move-result-object v8

    return-object v8
.end method

.method public blacklist getQuaternion()Lcom/samsung/vekit/Common/Object/Quaternion;
    .locals 13

    new-instance v0, Lcom/samsung/vekit/Common/Object/Quaternion;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/Quaternion;-><init>()V

    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget-wide v3, v1, v2

    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v5, 0x1

    aget-object v1, v1, v5

    aget-wide v6, v1, v5

    add-double/2addr v3, v6

    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v6, 0x2

    aget-object v1, v1, v6

    aget-wide v7, v1, v6

    add-double/2addr v3, v7

    double-to-float v1, v3

    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    const/high16 v4, 0x3f000000    # 0.5f

    if-lez v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v1

    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v3, v7

    mul-float v7, v3, v4

    float-to-double v7, v7

    iput-wide v7, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    div-float/2addr v4, v3

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v6

    aget-wide v7, v3, v5

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v5

    aget-wide v9, v3, v6

    sub-double/2addr v7, v9

    double-to-float v3, v7

    mul-float/2addr v3, v4

    float-to-double v7, v3

    iput-wide v7, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v2

    aget-wide v7, v3, v6

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v6

    aget-wide v9, v3, v2

    sub-double/2addr v7, v9

    double-to-float v3, v7

    mul-float/2addr v3, v4

    float-to-double v6, v3

    iput-wide v6, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v5

    aget-wide v6, v3, v2

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v3, v2

    aget-wide v2, v2, v5

    sub-double/2addr v6, v2

    double-to-float v2, v6

    mul-float/2addr v2, v4

    float-to-double v2, v2

    iput-wide v2, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    goto/16 :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v2

    aget-wide v7, v3, v2

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v5

    aget-wide v9, v3, v5

    cmpl-double v3, v7, v9

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v2

    aget-wide v9, v3, v2

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v6

    aget-wide v11, v3, v6

    cmpl-double v3, v9, v11

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v2

    aget-wide v9, v3, v2

    add-double/2addr v9, v7

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v5

    aget-wide v7, v3, v5

    sub-double/2addr v9, v7

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v6

    aget-wide v7, v3, v6

    sub-double/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v3, v7

    mul-float v7, v3, v4

    float-to-double v7, v7

    iput-wide v7, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    div-float/2addr v4, v3

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v2

    aget-wide v7, v3, v5

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v5

    aget-wide v9, v3, v2

    add-double/2addr v7, v9

    double-to-float v3, v7

    mul-float/2addr v3, v4

    float-to-double v7, v3

    iput-wide v7, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v2

    aget-wide v7, v3, v6

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v6

    aget-wide v2, v3, v2

    add-double/2addr v7, v2

    double-to-float v2, v7

    mul-float/2addr v2, v4

    float-to-double v2, v2

    iput-wide v2, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    iget-object v2, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v6

    aget-wide v2, v2, v5

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v5, v7, v5

    aget-wide v5, v5, v6

    sub-double/2addr v2, v5

    double-to-float v2, v2

    mul-float/2addr v2, v4

    float-to-double v2, v2

    iput-wide v2, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    goto/16 :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v5

    aget-wide v9, v3, v5

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v6

    aget-wide v11, v3, v6

    cmpl-double v3, v9, v11

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v5

    aget-wide v9, v3, v5

    add-double/2addr v9, v7

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v2

    aget-wide v7, v3, v2

    sub-double/2addr v9, v7

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v6

    aget-wide v7, v3, v6

    sub-double/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v3, v7

    mul-float v7, v3, v4

    float-to-double v7, v7

    iput-wide v7, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    div-float/2addr v4, v3

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v2

    aget-wide v7, v3, v5

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v5

    aget-wide v9, v3, v2

    add-double/2addr v7, v9

    double-to-float v3, v7

    mul-float/2addr v3, v4

    float-to-double v7, v3

    iput-wide v7, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v5

    aget-wide v7, v3, v6

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v6

    aget-wide v9, v3, v5

    add-double/2addr v7, v9

    double-to-float v3, v7

    mul-float/2addr v3, v4

    float-to-double v7, v3

    iput-wide v7, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v2

    aget-wide v7, v3, v6

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v6

    aget-wide v2, v3, v2

    sub-double/2addr v7, v2

    double-to-float v2, v7

    mul-float/2addr v2, v4

    float-to-double v2, v2

    iput-wide v2, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v6

    aget-wide v9, v3, v6

    add-double/2addr v9, v7

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v2

    aget-wide v7, v3, v2

    sub-double/2addr v9, v7

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v5

    aget-wide v7, v3, v5

    sub-double/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v3, v7

    mul-float v7, v3, v4

    float-to-double v7, v7

    iput-wide v7, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    div-float/2addr v4, v3

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v2

    aget-wide v7, v3, v6

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v6

    aget-wide v9, v3, v2

    add-double/2addr v7, v9

    double-to-float v3, v7

    mul-float/2addr v3, v4

    float-to-double v7, v3

    iput-wide v7, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v5

    aget-wide v7, v3, v6

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v6

    aget-wide v9, v3, v5

    add-double/2addr v7, v9

    double-to-float v3, v7

    mul-float/2addr v3, v4

    float-to-double v6, v3

    iput-wide v6, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v5

    aget-wide v6, v3, v2

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v3, v2

    aget-wide v2, v2, v5

    sub-double/2addr v6, v2

    double-to-float v2, v6

    mul-float/2addr v2, v4

    float-to-double v2, v2

    iput-wide v2, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    :goto_0
    return-object v0
.end method

.method public blacklist getRotation()Lcom/samsung/vekit/Common/Object/Vector3;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/vekit/Common/Object/Vector3<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/Object/Matrix4;->getPureRotationMatrix()Lcom/samsung/vekit/Common/Object/Matrix4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/Object/Matrix4;->getQuaternion()Lcom/samsung/vekit/Common/Object/Quaternion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Object/Quaternion;->getRotation()Lcom/samsung/vekit/Common/Object/Vector3;

    move-result-object v2

    return-object v2
.end method

.method public blacklist getRow(I)Lcom/samsung/vekit/Common/Object/Vector4;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/samsung/vekit/Common/Object/Vector4<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/vekit/Common/Object/Vector4;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/samsung/vekit/Common/Object/Vector4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget-wide v1, v1, p1

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/vekit/Common/Object/Vector4;->setX(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v2, 0x1

    aget-object v1, v1, v2

    aget-wide v1, v1, p1

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/vekit/Common/Object/Vector4;->setY(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v2, 0x2

    aget-object v1, v1, v2

    aget-wide v1, v1, p1

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/vekit/Common/Object/Vector4;->setZ(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v2, 0x3

    aget-object v1, v1, v2

    aget-wide v1, v1, p1

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/vekit/Common/Object/Vector4;->setW(Ljava/lang/Object;)V

    return-object v0
.end method

.method public blacklist getScale()Lcom/samsung/vekit/Common/Object/Vector3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/vekit/Common/Object/Vector3<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/vekit/Common/Object/Vector3;

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/Object/Matrix4;->getAxisX()Lcom/samsung/vekit/Common/Object/Vector3;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/vekit/Common/Object/Matrix4;->getScale(Lcom/samsung/vekit/Common/Object/Vector3;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/Object/Matrix4;->getAxisY()Lcom/samsung/vekit/Common/Object/Vector3;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->getScale(Lcom/samsung/vekit/Common/Object/Vector3;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/Object/Matrix4;->getAxisZ()Lcom/samsung/vekit/Common/Object/Vector3;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/vekit/Common/Object/Matrix4;->getScale(Lcom/samsung/vekit/Common/Object/Vector3;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/vekit/Common/Object/Vector3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public blacklist identity()V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    if-ne v0, v2, :cond_0

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v3, v2

    goto :goto_2

    :cond_0
    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v0

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public blacklist inverse()Lcom/samsung/vekit/Common/Object/Matrix4;
    .locals 37

    move-object/from16 v0, p0

    new-instance v1, Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-direct {v1}, Lcom/samsung/vekit/Common/Object/Matrix4;-><init>()V

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v4, 0x2

    aget-wide v5, v2, v4

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v7, 0x1

    aget-object v2, v2, v7

    const/4 v8, 0x3

    aget-wide v9, v2, v8

    mul-double/2addr v5, v9

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v7

    aget-wide v9, v2, v4

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v3

    aget-wide v11, v2, v8

    mul-double/2addr v9, v11

    sub-double/2addr v5, v9

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v3

    aget-wide v9, v2, v4

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v4

    aget-wide v11, v2, v8

    mul-double/2addr v9, v11

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v4

    aget-wide v11, v2, v4

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v3

    aget-wide v13, v2, v8

    mul-double/2addr v11, v13

    sub-double/2addr v9, v11

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v3

    aget-wide v11, v2, v4

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v8

    aget-wide v13, v2, v8

    mul-double/2addr v11, v13

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v8

    aget-wide v13, v2, v4

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v3

    aget-wide v15, v2, v8

    mul-double/2addr v13, v15

    sub-double/2addr v11, v13

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v7

    aget-wide v13, v2, v4

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v4

    aget-wide v15, v2, v8

    mul-double/2addr v13, v15

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v4

    aget-wide v15, v2, v4

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v7

    aget-wide v17, v2, v8

    mul-double v15, v15, v17

    sub-double/2addr v13, v15

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v7

    aget-wide v15, v2, v4

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v8

    aget-wide v17, v2, v8

    mul-double v15, v15, v17

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v8

    aget-wide v17, v2, v4

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v7

    aget-wide v19, v2, v8

    mul-double v17, v17, v19

    sub-double v15, v15, v17

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v4

    aget-wide v17, v2, v4

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v8

    aget-wide v19, v2, v8

    mul-double v17, v17, v19

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v8

    aget-wide v19, v2, v4

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v4

    aget-wide v21, v2, v8

    mul-double v19, v19, v21

    sub-double v17, v17, v19

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v7

    aget-wide v19, v2, v7

    mul-double v19, v19, v17

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v4

    aget-wide v21, v2, v7

    mul-double v21, v21, v15

    sub-double v19, v19, v21

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v8

    aget-wide v21, v2, v7

    mul-double v21, v21, v13

    add-double v19, v19, v21

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v3

    aget-wide v21, v2, v7

    mul-double v21, v21, v17

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v4

    aget-wide v23, v2, v7

    mul-double v23, v23, v11

    sub-double v21, v21, v23

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v8

    aget-wide v23, v2, v7

    mul-double v23, v23, v9

    move-wide/from16 v25, v5

    add-double v4, v21, v23

    neg-double v4, v4

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v3

    aget-wide v21, v6, v7

    mul-double v21, v21, v15

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v7

    aget-wide v23, v6, v7

    mul-double v23, v23, v11

    sub-double v21, v21, v23

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v8

    aget-wide v23, v6, v7

    mul-double v23, v23, v25

    add-double v21, v21, v23

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v3

    aget-wide v23, v6, v7

    mul-double v23, v23, v13

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v7

    aget-wide v27, v6, v7

    mul-double v27, v27, v9

    sub-double v23, v23, v27

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v2, 0x2

    aget-object v6, v6, v2

    aget-wide v27, v6, v7

    mul-double v27, v27, v25

    move-wide/from16 v29, v9

    add-double v8, v23, v27

    neg-double v8, v8

    iget-object v10, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v10, v10, v3

    aget-wide v23, v10, v3

    mul-double v23, v23, v19

    iget-object v10, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v10, v10, v7

    aget-wide v27, v10, v3

    mul-double v27, v27, v4

    add-double v23, v23, v27

    iget-object v10, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v2, 0x2

    aget-object v10, v10, v2

    aget-wide v27, v10, v3

    mul-double v27, v27, v21

    add-double v23, v23, v27

    iget-object v10, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v6, 0x3

    aget-object v10, v10, v6

    aget-wide v27, v10, v3

    mul-double v27, v27, v8

    add-double v23, v23, v27

    const-wide/high16 v27, 0x3ff0000000000000L    # 1.0

    div-double v27, v27, v23

    mul-double v6, v19, v27

    double-to-float v6, v6

    invoke-virtual {v1, v3, v6}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    mul-double v6, v4, v27

    double-to-float v6, v6

    const/4 v7, 0x1

    invoke-virtual {v1, v7, v6}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    mul-double v2, v21, v27

    double-to-float v2, v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    move-wide/from16 v31, v4

    mul-double v3, v8, v27

    double-to-float v3, v3

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v3}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v7

    const/4 v4, 0x0

    aget-wide v23, v3, v4

    mul-double v23, v23, v17

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v2, 0x2

    aget-object v3, v3, v2

    aget-wide v33, v3, v4

    mul-double v33, v33, v15

    sub-double v23, v23, v33

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v5, 0x3

    aget-object v3, v3, v5

    aget-wide v33, v3, v4

    mul-double v33, v33, v13

    add-double v2, v23, v33

    neg-double v2, v2

    mul-double v2, v2, v27

    double-to-float v2, v2

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v4

    aget-wide v2, v2, v4

    mul-double v23, v17, v2

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v3, 0x2

    aget-object v5, v2, v3

    aget-wide v33, v5, v4

    mul-double v33, v33, v11

    sub-double v23, v23, v33

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v5, 0x3

    aget-object v3, v3, v5

    aget-wide v33, v3, v4

    mul-double v33, v33, v29

    add-double v23, v23, v33

    mul-double v2, v23, v27

    double-to-float v2, v2

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v4

    aget-wide v2, v2, v4

    mul-double/2addr v2, v15

    iget-object v7, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v10, 0x1

    aget-object v7, v7, v10

    aget-wide v23, v7, v4

    mul-double v23, v23, v11

    sub-double v2, v2, v23

    iget-object v7, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v6, 0x3

    aget-object v7, v7, v6

    aget-wide v23, v7, v4

    mul-double v23, v23, v25

    add-double v2, v2, v23

    neg-double v2, v2

    mul-double v2, v2, v27

    double-to-float v2, v2

    const/4 v3, 0x6

    invoke-virtual {v1, v3, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v4

    aget-wide v2, v2, v4

    mul-double/2addr v2, v13

    iget-object v7, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v10, 0x1

    aget-object v7, v7, v10

    aget-wide v23, v7, v4

    mul-double v23, v23, v29

    sub-double v23, v2, v23

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v3, 0x2

    aget-object v5, v2, v3

    aget-wide v33, v5, v4

    mul-double v33, v33, v25

    add-double v23, v23, v33

    mul-double v2, v23, v27

    double-to-float v2, v2

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v4

    const/4 v3, 0x1

    aget-wide v23, v2, v3

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v3

    const/4 v6, 0x3

    aget-wide v33, v2, v6

    mul-double v23, v23, v33

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v3

    aget-wide v33, v2, v3

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v4

    aget-wide v35, v2, v6

    mul-double v33, v33, v35

    sub-double v25, v23, v33

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v4

    aget-wide v23, v2, v3

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v5, 0x2

    aget-object v2, v2, v5

    aget-wide v33, v2, v6

    mul-double v23, v23, v33

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v2, v5

    aget-wide v33, v7, v3

    iget-object v5, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v5, v5, v4

    aget-wide v35, v5, v6

    mul-double v33, v33, v35

    sub-double v29, v23, v33

    iget-object v5, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v5, v5, v4

    aget-wide v23, v5, v3

    iget-object v5, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v5, v5, v6

    aget-wide v33, v5, v6

    mul-double v33, v33, v23

    iget-object v5, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v5, v5, v6

    aget-wide v35, v5, v3

    iget-object v5, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v5, v5, v4

    aget-wide v4, v5, v6

    mul-double v35, v35, v4

    sub-double v33, v33, v35

    iget-object v4, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v4, v4, v3

    aget-wide v4, v4, v3

    iget-object v7, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v2, 0x2

    aget-object v7, v7, v2

    aget-wide v10, v7, v6

    mul-double/2addr v4, v10

    iget-object v7, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v10, v7, v3

    iget-object v7, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v3

    aget-wide v35, v7, v6

    mul-double v10, v10, v35

    sub-double/2addr v4, v10

    iget-object v7, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v3

    aget-wide v10, v7, v3

    iget-object v7, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v6

    aget-wide v12, v7, v6

    mul-double/2addr v10, v12

    iget-object v7, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v6

    aget-wide v12, v7, v3

    iget-object v7, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v3

    aget-wide v35, v7, v6

    mul-double v12, v12, v35

    sub-double v11, v10, v12

    iget-object v7, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v2, 0x2

    aget-object v7, v7, v2

    aget-wide v13, v7, v3

    iget-object v7, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v6

    aget-wide v15, v7, v6

    mul-double/2addr v13, v15

    iget-object v7, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v6

    aget-wide v15, v7, v3

    iget-object v7, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v35, v7, v6

    mul-double v15, v15, v35

    sub-double/2addr v13, v15

    iget-object v7, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v3

    const/4 v3, 0x0

    aget-wide v15, v7, v3

    mul-double/2addr v15, v13

    iget-object v7, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v17, v7, v3

    mul-double v17, v17, v11

    sub-double v15, v15, v17

    iget-object v7, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v6, 0x3

    aget-object v7, v7, v6

    aget-wide v17, v7, v3

    mul-double v17, v17, v4

    add-double v15, v15, v17

    mul-double v6, v15, v27

    double-to-float v6, v6

    const/16 v7, 0x8

    invoke-virtual {v1, v7, v6}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v3

    aget-wide v6, v6, v3

    mul-double/2addr v6, v13

    iget-object v15, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v2, 0x2

    aget-object v15, v15, v2

    aget-wide v15, v15, v3

    mul-double v15, v15, v33

    sub-double v15, v6, v15

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v7, 0x3

    aget-object v17, v6, v7

    aget-wide v17, v17, v3

    mul-double v17, v17, v29

    add-double v6, v15, v17

    neg-double v6, v6

    mul-double v6, v6, v27

    double-to-float v6, v6

    const/16 v7, 0x9

    invoke-virtual {v1, v7, v6}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v3

    aget-wide v6, v6, v3

    mul-double/2addr v6, v11

    iget-object v15, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v10, 0x1

    aget-object v15, v15, v10

    aget-wide v15, v15, v3

    mul-double v15, v15, v33

    sub-double v15, v6, v15

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v7, 0x3

    aget-object v17, v6, v7

    aget-wide v17, v17, v3

    mul-double v17, v17, v25

    add-double v15, v15, v17

    mul-double v6, v15, v27

    double-to-float v6, v6

    const/16 v7, 0xa

    invoke-virtual {v1, v7, v6}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v3

    aget-wide v6, v6, v3

    mul-double/2addr v6, v4

    iget-object v15, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v10, 0x1

    aget-object v15, v15, v10

    aget-wide v15, v15, v3

    mul-double v15, v15, v29

    sub-double/2addr v6, v15

    iget-object v15, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v2, 0x2

    aget-object v15, v15, v2

    aget-wide v15, v15, v3

    mul-double v15, v15, v25

    add-double/2addr v6, v15

    neg-double v6, v6

    mul-double v6, v6, v27

    double-to-float v3, v6

    const/16 v6, 0xb

    invoke-virtual {v1, v6, v3}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v7, 0x1

    aget-object v3, v3, v7

    const/4 v2, 0x2

    aget-wide v15, v3, v2

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v6, 0x0

    aget-object v3, v3, v6

    aget-wide v17, v3, v7

    mul-double v15, v15, v17

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v6

    aget-wide v17, v3, v2

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v7

    aget-wide v35, v3, v7

    mul-double v17, v17, v35

    sub-double v15, v15, v17

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v2

    aget-wide v17, v3, v2

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v6, 0x0

    aget-object v3, v3, v6

    aget-wide v24, v3, v7

    mul-double v17, v17, v24

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v6

    aget-wide v25, v3, v2

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v2

    aget-wide v35, v3, v7

    mul-double v25, v25, v35

    sub-double v17, v17, v25

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v6, 0x3

    aget-object v3, v3, v6

    aget-wide v25, v3, v2

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v10, 0x0

    aget-object v3, v3, v10

    aget-wide v23, v3, v7

    mul-double v25, v25, v23

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v10

    aget-wide v29, v3, v2

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v6

    aget-wide v35, v3, v7

    mul-double v29, v29, v35

    sub-double v25, v25, v29

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v2

    aget-wide v29, v3, v2

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v7

    aget-wide v33, v3, v7

    mul-double v29, v29, v33

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v7

    aget-wide v33, v3, v2

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v2

    aget-wide v35, v3, v7

    mul-double v33, v33, v35

    sub-double v29, v29, v33

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v4, 0x3

    aget-object v3, v3, v4

    aget-wide v5, v3, v2

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v7

    aget-wide v33, v3, v7

    mul-double v5, v5, v33

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v7

    aget-wide v33, v3, v2

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v4

    aget-wide v35, v3, v7

    mul-double v33, v33, v35

    sub-double v11, v5, v33

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v4

    aget-wide v5, v3, v2

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v2

    aget-wide v33, v3, v7

    mul-double v33, v33, v5

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v2

    aget-wide v35, v3, v2

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v4

    aget-wide v3, v3, v7

    mul-double v35, v35, v3

    sub-double v33, v33, v35

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v7

    const/4 v4, 0x0

    aget-wide v13, v3, v4

    mul-double v13, v13, v33

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v2, 0x2

    aget-object v3, v3, v2

    aget-wide v23, v3, v4

    mul-double v23, v23, v11

    sub-double v13, v13, v23

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v5, 0x3

    aget-object v3, v3, v5

    aget-wide v23, v3, v4

    mul-double v23, v23, v29

    add-double v13, v13, v23

    neg-double v13, v13

    mul-double v13, v13, v27

    double-to-float v3, v13

    const/16 v5, 0xc

    invoke-virtual {v1, v5, v3}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v4

    aget-wide v13, v3, v4

    mul-double v13, v13, v33

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v2, 0x2

    aget-object v3, v3, v2

    aget-wide v23, v3, v4

    mul-double v23, v23, v25

    sub-double v13, v13, v23

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v5, 0x3

    aget-object v3, v3, v5

    aget-wide v23, v3, v4

    mul-double v23, v23, v17

    add-double v13, v13, v23

    mul-double v13, v13, v27

    double-to-float v3, v13

    const/16 v5, 0xd

    invoke-virtual {v1, v5, v3}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v4

    aget-wide v13, v3, v4

    mul-double/2addr v13, v11

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v5, 0x1

    aget-object v3, v3, v5

    aget-wide v23, v3, v4

    mul-double v23, v23, v25

    sub-double v13, v13, v23

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v5, 0x3

    aget-object v3, v3, v5

    aget-wide v5, v3, v4

    mul-double/2addr v5, v15

    add-double/2addr v13, v5

    neg-double v5, v13

    mul-double v5, v5, v27

    double-to-float v3, v5

    const/16 v5, 0xe

    invoke-virtual {v1, v5, v3}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v4

    aget-wide v5, v3, v4

    mul-double v5, v5, v29

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v7, 0x1

    aget-object v3, v3, v7

    aget-wide v13, v3, v4

    mul-double v13, v13, v17

    sub-double/2addr v5, v13

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v2, 0x2

    aget-object v2, v3, v2

    aget-wide v2, v2, v4

    mul-double/2addr v2, v15

    add-double/2addr v5, v2

    mul-double v5, v5, v27

    double-to-float v2, v5

    const/16 v3, 0xf

    invoke-virtual {v1, v3, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Object/Matrix4;->transpose()Lcom/samsung/vekit/Common/Object/Matrix4;

    move-result-object v2

    return-object v2
.end method

.method public blacklist multiply(Lcom/samsung/vekit/Common/Object/Matrix4;)Lcom/samsung/vekit/Common/Object/Matrix4;
    .locals 13

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x1

    const/4 v3, 0x4

    aput v3, v1, v2

    const/4 v4, 0x0

    aput v3, v1, v4

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    aget-object v3, v1, v4

    iget-object v5, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v5, v5, v4

    aget-wide v5, v5, v4

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v4

    aget-wide v7, v7, v4

    mul-double/2addr v5, v7

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v7, v7, v4

    iget-object v9, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v9, v9, v4

    aget-wide v9, v9, v2

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v7, v7, v4

    iget-object v9, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v9, v9, v4

    aget-wide v9, v9, v0

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v8, 0x3

    aget-object v7, v7, v8

    aget-wide v9, v7, v4

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v4

    aget-wide v11, v7, v8

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    aput-wide v5, v3, v4

    aget-object v3, v1, v2

    iget-object v5, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v5, v5, v4

    aget-wide v5, v5, v4

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v9, v7, v4

    mul-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v9, v7, v4

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v11, v7, v2

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v9, v7, v4

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v11, v7, v0

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v9, v7, v4

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v11, v7, v8

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    aput-wide v5, v3, v4

    aget-object v3, v1, v0

    iget-object v5, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v5, v5, v4

    aget-wide v5, v5, v4

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v9, v7, v4

    mul-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v9, v7, v4

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v11, v7, v2

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v9, v7, v4

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v11, v7, v0

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v9, v7, v4

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v11, v7, v8

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    aput-wide v5, v3, v4

    aget-object v3, v1, v8

    iget-object v5, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v5, v5, v4

    aget-wide v5, v5, v4

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v9, v7, v4

    mul-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v9, v7, v4

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v11, v7, v2

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v9, v7, v4

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v11, v7, v0

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v9, v7, v4

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v11, v7, v8

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    aput-wide v5, v3, v4

    aget-object v3, v1, v4

    iget-object v5, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v5, v5, v4

    aget-wide v5, v5, v2

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v4

    aget-wide v9, v7, v4

    mul-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v9, v7, v2

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v4

    aget-wide v11, v7, v2

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v9, v7, v2

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v4

    aget-wide v11, v7, v0

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v9, v7, v2

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v4

    aget-wide v11, v7, v8

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    aput-wide v5, v3, v2

    aget-object v3, v1, v2

    iget-object v5, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v5, v5, v4

    aget-wide v5, v5, v2

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v9, v7, v4

    mul-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v9, v7, v2

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v11, v7, v2

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v9, v7, v2

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v11, v7, v0

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v9, v7, v2

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v11, v7, v8

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    aput-wide v5, v3, v2

    aget-object v3, v1, v0

    iget-object v5, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v5, v5, v4

    aget-wide v5, v5, v2

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v9, v7, v4

    mul-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v9, v7, v2

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v11, v7, v2

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v9, v7, v2

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v11, v7, v0

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v9, v7, v2

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v11, v7, v8

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    aput-wide v5, v3, v2

    aget-object v3, v1, v8

    iget-object v5, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v5, v5, v4

    aget-wide v5, v5, v2

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v9, v7, v4

    mul-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v9, v7, v2

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v11, v7, v2

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v9, v7, v2

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v11, v7, v0

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v9, v7, v2

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v11, v7, v8

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    aput-wide v5, v3, v2

    aget-object v3, v1, v4

    iget-object v5, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v5, v5, v4

    aget-wide v5, v5, v0

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v4

    aget-wide v9, v7, v4

    mul-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v9, v7, v0

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v4

    aget-wide v11, v7, v2

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v9, v7, v0

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v4

    aget-wide v11, v7, v0

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v9, v7, v0

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v4

    aget-wide v11, v7, v8

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    aput-wide v5, v3, v0

    aget-object v3, v1, v2

    iget-object v5, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v5, v5, v4

    aget-wide v5, v5, v0

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v9, v7, v4

    mul-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v9, v7, v0

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v11, v7, v2

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v9, v7, v0

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v11, v7, v0

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v9, v7, v0

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v11, v7, v8

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    aput-wide v5, v3, v0

    aget-object v3, v1, v0

    iget-object v5, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v5, v5, v4

    aget-wide v5, v5, v0

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v9, v7, v4

    mul-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v9, v7, v0

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v11, v7, v2

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v9, v7, v0

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v11, v7, v0

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v9, v7, v0

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v11, v7, v8

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    aput-wide v5, v3, v0

    aget-object v3, v1, v8

    iget-object v5, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v5, v5, v4

    aget-wide v5, v5, v0

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v9, v7, v4

    mul-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v9, v7, v0

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v11, v7, v2

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v9, v7, v0

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v11, v7, v0

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v9, v7, v0

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v11, v7, v8

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    aput-wide v5, v3, v0

    aget-object v3, v1, v4

    iget-object v5, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v5, v5, v4

    aget-wide v5, v5, v8

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v4

    aget-wide v9, v7, v4

    mul-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v9, v7, v8

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v4

    aget-wide v11, v7, v2

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v9, v7, v8

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v4

    aget-wide v11, v7, v0

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v9, v7, v8

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v4

    aget-wide v11, v7, v8

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    aput-wide v5, v3, v8

    aget-object v3, v1, v2

    iget-object v5, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v5, v5, v4

    aget-wide v5, v5, v8

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v9, v7, v4

    mul-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v9, v7, v8

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v11, v7, v2

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v9, v7, v8

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v11, v7, v0

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v9, v7, v8

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v11, v7, v8

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    aput-wide v5, v3, v8

    aget-object v3, v1, v0

    iget-object v5, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v5, v5, v4

    aget-wide v5, v5, v8

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v9, v7, v4

    mul-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v9, v7, v8

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v11, v7, v2

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v9, v7, v8

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v11, v7, v0

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v9, v7, v8

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v11, v7, v8

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    aput-wide v5, v3, v8

    aget-object v3, v1, v8

    iget-object v5, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v5, v5, v4

    aget-wide v5, v5, v8

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v9, v7, v4

    mul-double/2addr v5, v9

    iget-object v4, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v4, v4, v2

    aget-wide v9, v4, v8

    iget-object v4, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v4, v4, v8

    aget-wide v11, v4, v2

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v2, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v0

    aget-wide v9, v2, v8

    iget-object v2, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v8

    aget-wide v11, v2, v0

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v0, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v0, v0, v8

    aget-wide v9, v0, v8

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v0, v0, v8

    aget-wide v11, v0, v8

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    aput-wide v5, v3, v8

    new-instance v0, Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-direct {v0, v1}, Lcom/samsung/vekit/Common/Object/Matrix4;-><init>([[D)V

    return-object v0
.end method

.method public blacklist rotate(FFF)Lcom/samsung/vekit/Common/Object/Matrix4;
    .locals 3

    new-instance v0, Lcom/samsung/vekit/Common/Object/Quaternion;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/Quaternion;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/vekit/Common/Object/Quaternion;->setRotation(FFF)V

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/Object/Quaternion;->getMatrix()Lcom/samsung/vekit/Common/Object/Matrix4;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/vekit/Common/Object/Matrix4;->multiply(Lcom/samsung/vekit/Common/Object/Matrix4;)Lcom/samsung/vekit/Common/Object/Matrix4;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->setMatrix(Lcom/samsung/vekit/Common/Object/Matrix4;)V

    return-object p0
.end method

.method public blacklist rotate(Lcom/samsung/vekit/Common/Object/Quaternion;)Lcom/samsung/vekit/Common/Object/Matrix4;
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Quaternion;->getMatrix()Lcom/samsung/vekit/Common/Object/Matrix4;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/vekit/Common/Object/Matrix4;->multiply(Lcom/samsung/vekit/Common/Object/Matrix4;)Lcom/samsung/vekit/Common/Object/Matrix4;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/vekit/Common/Object/Matrix4;->setMatrix(Lcom/samsung/vekit/Common/Object/Matrix4;)V

    return-object p0
.end method

.method public blacklist rotate(Lcom/samsung/vekit/Common/Type/AxisType;F)Lcom/samsung/vekit/Common/Object/Matrix4;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/vekit/Common/Object/Matrix4$1;->$SwitchMap$com$samsung$vekit$Common$Type$AxisType:[I

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Type/AxisType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :pswitch_1
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :pswitch_2
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    :goto_0
    new-instance v3, Lcom/samsung/vekit/Common/Object/Quaternion;

    new-instance v4, Lcom/samsung/vekit/Common/Object/Vector3;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/vekit/Common/Object/Vector3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v3, v4, p2}, Lcom/samsung/vekit/Common/Object/Quaternion;-><init>(Lcom/samsung/vekit/Common/Object/Vector3;F)V

    invoke-virtual {v3}, Lcom/samsung/vekit/Common/Object/Quaternion;->getMatrix()Lcom/samsung/vekit/Common/Object/Matrix4;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/samsung/vekit/Common/Object/Matrix4;->multiply(Lcom/samsung/vekit/Common/Object/Matrix4;)Lcom/samsung/vekit/Common/Object/Matrix4;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/vekit/Common/Object/Matrix4;->setMatrix(Lcom/samsung/vekit/Common/Object/Matrix4;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist scale(FFF)Lcom/samsung/vekit/Common/Object/Matrix4;
    .locals 2

    new-instance v0, Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/Matrix4;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1, p2}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v1, p3}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    invoke-virtual {v0, p0}, Lcom/samsung/vekit/Common/Object/Matrix4;->multiply(Lcom/samsung/vekit/Common/Object/Matrix4;)Lcom/samsung/vekit/Common/Object/Matrix4;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/vekit/Common/Object/Matrix4;->setMatrix(Lcom/samsung/vekit/Common/Object/Matrix4;)V

    return-object p0
.end method

.method public blacklist set(IF)V
    .locals 5

    div-int/lit8 v0, p1, 0x4

    rem-int/lit8 v1, p1, 0x4

    iget-object v2, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v1

    float-to-double v3, p2

    aput-wide v3, v2, v0

    return-void
.end method

.method public blacklist set(IIF)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v0, v0, p2

    float-to-double v1, p3

    aput-wide v1, v0, p1

    return-void
.end method

.method public blacklist set([F)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    div-int/lit8 v1, v0, 0x4

    rem-int/lit8 v2, v0, 0x4

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v2

    aget v4, p1, v0

    float-to-double v4, v4

    aput-wide v4, v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist set([[D)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist setMatrix(Lcom/samsung/vekit/Common/Object/Matrix4;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v2, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist toArray()[F
    .locals 8

    const/16 v0, 0x10

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v4

    aget-wide v6, v6, v2

    double-to-float v6, v6

    aput v6, v0, v1

    add-int/lit8 v4, v4, 0x1

    move v1, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v4, v4, v3

    aget-wide v4, v4, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist translate(FFF)Lcom/samsung/vekit/Common/Object/Matrix4;
    .locals 3

    new-instance v0, Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/Matrix4;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1, p1}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1, p2}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1, p3}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    invoke-virtual {v0, p0}, Lcom/samsung/vekit/Common/Object/Matrix4;->multiply(Lcom/samsung/vekit/Common/Object/Matrix4;)Lcom/samsung/vekit/Common/Object/Matrix4;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/vekit/Common/Object/Matrix4;->setMatrix(Lcom/samsung/vekit/Common/Object/Matrix4;)V

    return-object p0
.end method

.method public blacklist transpose()Lcom/samsung/vekit/Common/Object/Matrix4;
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x4

    aput v2, v0, v1

    const/4 v1, 0x0

    aput v2, v0, v1

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v1

    iget-object v5, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v5, v5, v3

    aget-wide v5, v5, v1

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-direct {v1, v0}, Lcom/samsung/vekit/Common/Object/Matrix4;-><init>([[D)V

    return-object v1
.end method
