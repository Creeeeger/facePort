.class public Lcom/samsung/vekit/Panel/Panel;
.super Ljava/lang/Object;
.source "Panel.java"


# instance fields
.field private blacklist height:F

.field private blacklist matrix:Lcom/samsung/vekit/Common/Object/Matrix4;

.field private blacklist perspective:Lcom/samsung/vekit/Common/Object/Vector2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/vekit/Common/Object/Vector2<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist perspectiveMatrix:Lcom/samsung/vekit/Common/Object/Matrix4;

.field private blacklist position:Lcom/samsung/vekit/Common/Object/Vector3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/vekit/Common/Object/Vector3<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist quaternion:Lcom/samsung/vekit/Common/Object/Quaternion;

.field private blacklist rotation:Lcom/samsung/vekit/Common/Object/Vector3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/vekit/Common/Object/Vector3<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist scale:Lcom/samsung/vekit/Common/Object/Vector3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/vekit/Common/Object/Vector3<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist width:F


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput v0, p0, Lcom/samsung/vekit/Panel/Panel;->width:F

    iput v0, p0, Lcom/samsung/vekit/Panel/Panel;->height:F

    new-instance v0, Lcom/samsung/vekit/Common/Object/Vector2;

    invoke-direct {v0, v1, v1}, Lcom/samsung/vekit/Common/Object/Vector2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->perspective:Lcom/samsung/vekit/Common/Object/Vector2;

    new-instance v0, Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->perspectiveMatrix:Lcom/samsung/vekit/Common/Object/Matrix4;

    new-instance v0, Lcom/samsung/vekit/Common/Object/Quaternion;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->quaternion:Lcom/samsung/vekit/Common/Object/Quaternion;

    invoke-virtual {p0}, Lcom/samsung/vekit/Panel/Panel;->identity()Lcom/samsung/vekit/Panel/Panel;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/vekit/Panel/Panel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Panel/Panel;->width:F

    iput v0, p0, Lcom/samsung/vekit/Panel/Panel;->height:F

    new-instance v0, Lcom/samsung/vekit/Common/Object/Vector2;

    iget-object v1, p1, Lcom/samsung/vekit/Panel/Panel;->perspective:Lcom/samsung/vekit/Common/Object/Vector2;

    invoke-direct {v0, v1}, Lcom/samsung/vekit/Common/Object/Vector2;-><init>(Lcom/samsung/vekit/Common/Object/Vector2;)V

    iput-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->perspective:Lcom/samsung/vekit/Common/Object/Vector2;

    new-instance v0, Lcom/samsung/vekit/Common/Object/Vector3;

    iget-object v1, p1, Lcom/samsung/vekit/Panel/Panel;->position:Lcom/samsung/vekit/Common/Object/Vector3;

    invoke-direct {v0, v1}, Lcom/samsung/vekit/Common/Object/Vector3;-><init>(Lcom/samsung/vekit/Common/Object/Vector3;)V

    iput-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->position:Lcom/samsung/vekit/Common/Object/Vector3;

    new-instance v0, Lcom/samsung/vekit/Common/Object/Vector3;

    iget-object v1, p1, Lcom/samsung/vekit/Panel/Panel;->rotation:Lcom/samsung/vekit/Common/Object/Vector3;

    invoke-direct {v0, v1}, Lcom/samsung/vekit/Common/Object/Vector3;-><init>(Lcom/samsung/vekit/Common/Object/Vector3;)V

    iput-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->rotation:Lcom/samsung/vekit/Common/Object/Vector3;

    new-instance v0, Lcom/samsung/vekit/Common/Object/Quaternion;

    iget-object v1, p1, Lcom/samsung/vekit/Panel/Panel;->quaternion:Lcom/samsung/vekit/Common/Object/Quaternion;

    invoke-direct {v0, v1}, Lcom/samsung/vekit/Common/Object/Quaternion;-><init>(Lcom/samsung/vekit/Common/Object/Quaternion;)V

    iput-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->quaternion:Lcom/samsung/vekit/Common/Object/Quaternion;

    new-instance v0, Lcom/samsung/vekit/Common/Object/Vector3;

    iget-object v1, p1, Lcom/samsung/vekit/Panel/Panel;->scale:Lcom/samsung/vekit/Common/Object/Vector3;

    invoke-direct {v0, v1}, Lcom/samsung/vekit/Common/Object/Vector3;-><init>(Lcom/samsung/vekit/Common/Object/Vector3;)V

    iput-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->scale:Lcom/samsung/vekit/Common/Object/Vector3;

    new-instance v0, Lcom/samsung/vekit/Common/Object/Matrix4;

    iget-object v1, p1, Lcom/samsung/vekit/Panel/Panel;->matrix:Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-direct {v0, v1}, Lcom/samsung/vekit/Common/Object/Matrix4;-><init>(Lcom/samsung/vekit/Common/Object/Matrix4;)V

    iput-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->matrix:Lcom/samsung/vekit/Common/Object/Matrix4;

    new-instance v0, Lcom/samsung/vekit/Common/Object/Matrix4;

    iget-object v1, p1, Lcom/samsung/vekit/Panel/Panel;->perspectiveMatrix:Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-direct {v0, v1}, Lcom/samsung/vekit/Common/Object/Matrix4;-><init>(Lcom/samsung/vekit/Common/Object/Matrix4;)V

    iput-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->perspectiveMatrix:Lcom/samsung/vekit/Common/Object/Matrix4;

    iget v0, p1, Lcom/samsung/vekit/Panel/Panel;->width:F

    iput v0, p0, Lcom/samsung/vekit/Panel/Panel;->width:F

    iget v0, p1, Lcom/samsung/vekit/Panel/Panel;->height:F

    iput v0, p0, Lcom/samsung/vekit/Panel/Panel;->height:F

    return-void
.end method

.method private blacklist calculatePerspectiveMatrix()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/vekit/Panel/Panel;->perspective:Lcom/samsung/vekit/Common/Object/Vector2;

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Object/Vector2;->getX()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/samsung/vekit/Panel/Panel;->perspective:Lcom/samsung/vekit/Common/Object/Vector2;

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Object/Vector2;->getY()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/samsung/vekit/Panel/Panel;->perspectiveMatrix:Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Object/Matrix4;->identity()V

    return-void

    :cond_0
    const/16 v1, 0x8

    new-array v3, v1, [F

    fill-array-data v3, :array_0

    iget-object v4, v0, Lcom/samsung/vekit/Panel/Panel;->perspective:Lcom/samsung/vekit/Common/Object/Vector2;

    invoke-virtual {v4}, Lcom/samsung/vekit/Common/Object/Vector2;->getX()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double v10, v4, v8

    iget-object v4, v0, Lcom/samsung/vekit/Panel/Panel;->perspective:Lcom/samsung/vekit/Common/Object/Vector2;

    invoke-virtual {v4}, Lcom/samsung/vekit/Common/Object/Vector2;->getY()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v4, v4

    mul-double/2addr v4, v6

    div-double v12, v4, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    double-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    iget v6, v0, Lcom/samsung/vekit/Panel/Panel;->width:F

    iget v7, v0, Lcom/samsung/vekit/Panel/Panel;->height:F

    div-float/2addr v6, v7

    mul-float v14, v4, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    double-to-float v4, v6

    mul-float/2addr v4, v5

    iget v5, v0, Lcom/samsung/vekit/Panel/Panel;->height:F

    iget v6, v0, Lcom/samsung/vekit/Panel/Panel;->width:F

    div-float/2addr v5, v6

    mul-float v15, v4, v5

    cmpg-float v4, v14, v2

    if-gez v4, :cond_1

    const/4 v4, 0x0

    neg-float v5, v14

    move/from16 v16, v4

    move/from16 v17, v5

    goto :goto_0

    :cond_1
    move v4, v14

    const/4 v5, 0x0

    move/from16 v16, v4

    move/from16 v17, v5

    :goto_0
    cmpg-float v4, v15, v2

    if-gez v4, :cond_2

    const/4 v4, 0x0

    neg-float v5, v15

    move/from16 v18, v4

    move/from16 v19, v5

    goto :goto_1

    :cond_2
    move v4, v15

    const/4 v5, 0x0

    move/from16 v18, v4

    move/from16 v19, v5

    :goto_1
    sub-float v4, v2, v16

    const/high16 v5, 0x3f800000    # 1.0f

    add-float v6, v18, v5

    sub-float v7, v2, v17

    sub-float v8, v2, v18

    add-float v9, v17, v5

    sub-float v2, v2, v19

    add-float v20, v16, v5

    add-float v5, v19, v5

    new-array v1, v1, [F

    const/16 v21, 0x0

    aput v4, v1, v21

    const/4 v4, 0x1

    aput v6, v1, v4

    const/4 v6, 0x2

    aput v7, v1, v6

    const/4 v6, 0x3

    aput v8, v1, v6

    const/4 v6, 0x4

    aput v9, v1, v6

    const/4 v6, 0x5

    aput v2, v1, v6

    const/4 v2, 0x6

    aput v20, v1, v2

    const/4 v2, 0x7

    aput v5, v1, v2

    move-object v5, v1

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    array-length v2, v3

    shr-int/lit8 v9, v2, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v4, v1

    move-object v7, v3

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    const/16 v2, 0x9

    new-array v2, v2, [F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    invoke-direct {v0, v2}, Lcom/samsung/vekit/Panel/Panel;->setPerspectiveMatrix([F)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private blacklist setPerspectiveMatrix([F)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->perspectiveMatrix:Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/Object/Matrix4;->identity()V

    iget-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->perspectiveMatrix:Lcom/samsung/vekit/Common/Object/Matrix4;

    const/4 v1, 0x0

    aget v2, p1, v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    iget-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->perspectiveMatrix:Lcom/samsung/vekit/Common/Object/Matrix4;

    const/4 v1, 0x1

    aget v2, p1, v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    iget-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->perspectiveMatrix:Lcom/samsung/vekit/Common/Object/Matrix4;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    iget-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->perspectiveMatrix:Lcom/samsung/vekit/Common/Object/Matrix4;

    aget v1, p1, v1

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    iget-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->perspectiveMatrix:Lcom/samsung/vekit/Common/Object/Matrix4;

    aget v1, p1, v3

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v1}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    iget-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->perspectiveMatrix:Lcom/samsung/vekit/Common/Object/Matrix4;

    aget v1, p1, v3

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v1}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    iget-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->perspectiveMatrix:Lcom/samsung/vekit/Common/Object/Matrix4;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    iget-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->perspectiveMatrix:Lcom/samsung/vekit/Common/Object/Matrix4;

    aget v3, p1, v3

    const/4 v4, 0x7

    invoke-virtual {v0, v4, v3}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    iget-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->perspectiveMatrix:Lcom/samsung/vekit/Common/Object/Matrix4;

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    iget-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->perspectiveMatrix:Lcom/samsung/vekit/Common/Object/Matrix4;

    const/16 v5, 0x9

    invoke-virtual {v0, v5, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    iget-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->perspectiveMatrix:Lcom/samsung/vekit/Common/Object/Matrix4;

    const/16 v5, 0xa

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v0, v5, v6}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    iget-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->perspectiveMatrix:Lcom/samsung/vekit/Common/Object/Matrix4;

    const/16 v5, 0xb

    invoke-virtual {v0, v5, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    iget-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->perspectiveMatrix:Lcom/samsung/vekit/Common/Object/Matrix4;

    const/16 v5, 0xc

    aget v1, p1, v1

    invoke-virtual {v0, v5, v1}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    iget-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->perspectiveMatrix:Lcom/samsung/vekit/Common/Object/Matrix4;

    const/16 v1, 0xd

    aget v4, p1, v4

    invoke-virtual {v0, v1, v4}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    iget-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->perspectiveMatrix:Lcom/samsung/vekit/Common/Object/Matrix4;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    iget-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->perspectiveMatrix:Lcom/samsung/vekit/Common/Object/Matrix4;

    const/16 v1, 0xf

    aget v2, p1, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    return-void
.end method

.method private blacklist updateMatrix()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->matrix:Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/Object/Matrix4;->identity()V

    iget-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->matrix:Lcom/samsung/vekit/Common/Object/Matrix4;

    iget-object v1, p0, Lcom/samsung/vekit/Panel/Panel;->scale:Lcom/samsung/vekit/Common/Object/Vector3;

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Object/Vector3;->getX()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/vekit/Panel/Panel;->scale:Lcom/samsung/vekit/Common/Object/Vector3;

    invoke-virtual {v2}, Lcom/samsung/vekit/Common/Object/Vector3;->getY()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/vekit/Panel/Panel;->scale:Lcom/samsung/vekit/Common/Object/Vector3;

    invoke-virtual {v3}, Lcom/samsung/vekit/Common/Object/Vector3;->getZ()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/vekit/Common/Object/Matrix4;->scale(FFF)Lcom/samsung/vekit/Common/Object/Matrix4;

    iget-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->matrix:Lcom/samsung/vekit/Common/Object/Matrix4;

    iget-object v1, p0, Lcom/samsung/vekit/Panel/Panel;->rotation:Lcom/samsung/vekit/Common/Object/Vector3;

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Object/Vector3;->getX()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/vekit/Panel/Panel;->rotation:Lcom/samsung/vekit/Common/Object/Vector3;

    invoke-virtual {v2}, Lcom/samsung/vekit/Common/Object/Vector3;->getY()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/vekit/Panel/Panel;->rotation:Lcom/samsung/vekit/Common/Object/Vector3;

    invoke-virtual {v3}, Lcom/samsung/vekit/Common/Object/Vector3;->getZ()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/vekit/Common/Object/Matrix4;->rotate(FFF)Lcom/samsung/vekit/Common/Object/Matrix4;

    iget-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->matrix:Lcom/samsung/vekit/Common/Object/Matrix4;

    iget-object v1, p0, Lcom/samsung/vekit/Panel/Panel;->position:Lcom/samsung/vekit/Common/Object/Vector3;

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Object/Vector3;->getX()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/vekit/Panel/Panel;->position:Lcom/samsung/vekit/Common/Object/Vector3;

    invoke-virtual {v2}, Lcom/samsung/vekit/Common/Object/Vector3;->getY()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/vekit/Panel/Panel;->position:Lcom/samsung/vekit/Common/Object/Vector3;

    invoke-virtual {v3}, Lcom/samsung/vekit/Common/Object/Vector3;->getZ()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/vekit/Common/Object/Matrix4;->translate(FFF)Lcom/samsung/vekit/Common/Object/Matrix4;

    return-void
.end method


# virtual methods
.method public blacklist clone()Lcom/samsung/vekit/Panel/Panel;
    .locals 1

    new-instance v0, Lcom/samsung/vekit/Panel/Panel;

    invoke-direct {v0, p0}, Lcom/samsung/vekit/Panel/Panel;-><init>(Lcom/samsung/vekit/Panel/Panel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/vekit/Panel/Panel;->clone()Lcom/samsung/vekit/Panel/Panel;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getHeight()F
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Panel/Panel;->height:F

    return v0
.end method

.method public blacklist getMatrix()Lcom/samsung/vekit/Common/Object/Matrix4;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->matrix:Lcom/samsung/vekit/Common/Object/Matrix4;

    return-object v0
.end method

.method public blacklist getPerspective()Lcom/samsung/vekit/Common/Object/Vector2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/vekit/Common/Object/Vector2<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->perspective:Lcom/samsung/vekit/Common/Object/Vector2;

    return-object v0
.end method

.method public blacklist getPosition()Lcom/samsung/vekit/Common/Object/Vector3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/vekit/Common/Object/Vector3<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->position:Lcom/samsung/vekit/Common/Object/Vector3;

    return-object v0
.end method

.method public blacklist getQuaternion()Lcom/samsung/vekit/Common/Object/Quaternion;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->quaternion:Lcom/samsung/vekit/Common/Object/Quaternion;

    return-object v0
.end method

.method public blacklist getRotation()Lcom/samsung/vekit/Common/Object/Vector3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/vekit/Common/Object/Vector3<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->rotation:Lcom/samsung/vekit/Common/Object/Vector3;

    return-object v0
.end method

.method public blacklist getScale()Lcom/samsung/vekit/Common/Object/Vector3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/vekit/Common/Object/Vector3<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->scale:Lcom/samsung/vekit/Common/Object/Vector3;

    return-object v0
.end method

.method public blacklist getWidth()F
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Panel/Panel;->width:F

    return v0
.end method

.method public blacklist identity()Lcom/samsung/vekit/Panel/Panel;
    .locals 2

    new-instance v0, Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->matrix:Lcom/samsung/vekit/Common/Object/Matrix4;

    new-instance v0, Lcom/samsung/vekit/Common/Object/Vector3;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1, v1, v1}, Lcom/samsung/vekit/Common/Object/Vector3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->position:Lcom/samsung/vekit/Common/Object/Vector3;

    new-instance v0, Lcom/samsung/vekit/Common/Object/Vector3;

    invoke-direct {v0, v1, v1, v1}, Lcom/samsung/vekit/Common/Object/Vector3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->rotation:Lcom/samsung/vekit/Common/Object/Vector3;

    new-instance v0, Lcom/samsung/vekit/Common/Object/Vector3;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1, v1, v1}, Lcom/samsung/vekit/Common/Object/Vector3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->scale:Lcom/samsung/vekit/Common/Object/Vector3;

    sget-object v0, Lcom/samsung/vekit/Common/Object/Quaternion;->IDENTITY:Lcom/samsung/vekit/Common/Object/Quaternion;

    iput-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->quaternion:Lcom/samsung/vekit/Common/Object/Quaternion;

    return-object p0
.end method

.method public blacklist rotate(FFF)Lcom/samsung/vekit/Panel/Panel;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->matrix:Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/vekit/Common/Object/Matrix4;->rotate(FFF)Lcom/samsung/vekit/Common/Object/Matrix4;

    iget-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->matrix:Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-virtual {p0, v0}, Lcom/samsung/vekit/Panel/Panel;->setMatrix(Lcom/samsung/vekit/Common/Object/Matrix4;)Lcom/samsung/vekit/Panel/Panel;

    return-object p0
.end method

.method public blacklist rotate(Lcom/samsung/vekit/Common/Object/Vector3;)Lcom/samsung/vekit/Panel/Panel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/Vector3<",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/samsung/vekit/Panel/Panel;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector3;->getX()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector3;->getY()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector3;->getZ()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/vekit/Panel/Panel;->rotate(FFF)Lcom/samsung/vekit/Panel/Panel;

    move-result-object v0

    return-object v0
.end method

.method public blacklist rotate(Lcom/samsung/vekit/Common/Type/AxisType;F)Lcom/samsung/vekit/Panel/Panel;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->matrix:Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/vekit/Common/Object/Matrix4;->rotate(Lcom/samsung/vekit/Common/Type/AxisType;F)Lcom/samsung/vekit/Common/Object/Matrix4;

    iget-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->matrix:Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-virtual {p0, v0}, Lcom/samsung/vekit/Panel/Panel;->setMatrix(Lcom/samsung/vekit/Common/Object/Matrix4;)Lcom/samsung/vekit/Panel/Panel;

    return-object p0
.end method

.method public blacklist scale(FFF)Lcom/samsung/vekit/Panel/Panel;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->matrix:Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/vekit/Common/Object/Matrix4;->scale(FFF)Lcom/samsung/vekit/Common/Object/Matrix4;

    iget-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->matrix:Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-virtual {p0, v0}, Lcom/samsung/vekit/Panel/Panel;->setMatrix(Lcom/samsung/vekit/Common/Object/Matrix4;)Lcom/samsung/vekit/Panel/Panel;

    return-object p0
.end method

.method public blacklist scale(Lcom/samsung/vekit/Common/Object/Vector3;)Lcom/samsung/vekit/Panel/Panel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/Vector3<",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/samsung/vekit/Panel/Panel;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector3;->getX()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector3;->getY()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector3;->getZ()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/vekit/Panel/Panel;->scale(FFF)Lcom/samsung/vekit/Panel/Panel;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setHeight(F)Lcom/samsung/vekit/Panel/Panel;
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Panel/Panel;->height:F

    invoke-direct {p0}, Lcom/samsung/vekit/Panel/Panel;->calculatePerspectiveMatrix()V

    return-object p0
.end method

.method public blacklist setMatrix(Lcom/samsung/vekit/Common/Object/Matrix4;)Lcom/samsung/vekit/Panel/Panel;
    .locals 8

    iput-object p1, p0, Lcom/samsung/vekit/Panel/Panel;->matrix:Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Matrix4;->getScale()Lcom/samsung/vekit/Common/Object/Vector3;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->scale:Lcom/samsung/vekit/Common/Object/Vector3;

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Matrix4;->getPosition()Lcom/samsung/vekit/Common/Object/Vector3;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->position:Lcom/samsung/vekit/Common/Object/Vector3;

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Matrix4;->getPureRotationMatrix()Lcom/samsung/vekit/Common/Object/Matrix4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/Object/Matrix4;->getQuaternion()Lcom/samsung/vekit/Common/Object/Quaternion;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/vekit/Panel/Panel;->quaternion:Lcom/samsung/vekit/Common/Object/Quaternion;

    iget-object v1, p0, Lcom/samsung/vekit/Panel/Panel;->quaternion:Lcom/samsung/vekit/Common/Object/Quaternion;

    iget-object v2, p0, Lcom/samsung/vekit/Panel/Panel;->quaternion:Lcom/samsung/vekit/Common/Object/Quaternion;

    iget-wide v2, v2, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3ee4f8b580000000L    # 9.999999747378752E-6

    cmpg-double v2, v2, v4

    const-wide/16 v6, 0x0

    if-gez v2, :cond_0

    move-wide v2, v6

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/vekit/Panel/Panel;->quaternion:Lcom/samsung/vekit/Common/Object/Quaternion;

    iget-wide v2, v2, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    :goto_0
    iput-wide v2, v1, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-object v1, p0, Lcom/samsung/vekit/Panel/Panel;->quaternion:Lcom/samsung/vekit/Common/Object/Quaternion;

    iget-object v2, p0, Lcom/samsung/vekit/Panel/Panel;->quaternion:Lcom/samsung/vekit/Common/Object/Quaternion;

    iget-wide v2, v2, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    move-wide v2, v6

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/samsung/vekit/Panel/Panel;->quaternion:Lcom/samsung/vekit/Common/Object/Quaternion;

    iget-wide v2, v2, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    :goto_1
    iput-wide v2, v1, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iget-object v1, p0, Lcom/samsung/vekit/Panel/Panel;->quaternion:Lcom/samsung/vekit/Common/Object/Quaternion;

    iget-object v2, p0, Lcom/samsung/vekit/Panel/Panel;->quaternion:Lcom/samsung/vekit/Common/Object/Quaternion;

    iget-wide v2, v2, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2

    move-wide v2, v6

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/samsung/vekit/Panel/Panel;->quaternion:Lcom/samsung/vekit/Common/Object/Quaternion;

    iget-wide v2, v2, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    :goto_2
    iput-wide v2, v1, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    iget-object v1, p0, Lcom/samsung/vekit/Panel/Panel;->quaternion:Lcom/samsung/vekit/Common/Object/Quaternion;

    iget-object v2, p0, Lcom/samsung/vekit/Panel/Panel;->quaternion:Lcom/samsung/vekit/Common/Object/Quaternion;

    iget-wide v2, v2, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-gez v2, :cond_3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/samsung/vekit/Panel/Panel;->quaternion:Lcom/samsung/vekit/Common/Object/Quaternion;

    iget-wide v6, v2, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    :goto_3
    iput-wide v6, v1, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    iget-object v1, p0, Lcom/samsung/vekit/Panel/Panel;->quaternion:Lcom/samsung/vekit/Common/Object/Quaternion;

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Object/Quaternion;->getRotation()Lcom/samsung/vekit/Common/Object/Vector3;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/vekit/Panel/Panel;->rotation:Lcom/samsung/vekit/Common/Object/Vector3;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rotation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Panel/Panel;->rotation:Lcom/samsung/vekit/Common/Object/Vector3;

    invoke-virtual {v2}, Lcom/samsung/vekit/Common/Object/Vector3;->getX()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/vekit/Panel/Panel;->rotation:Lcom/samsung/vekit/Common/Object/Vector3;

    invoke-virtual {v3}, Lcom/samsung/vekit/Common/Object/Vector3;->getY()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/vekit/Panel/Panel;->rotation:Lcom/samsung/vekit/Common/Object/Vector3;

    invoke-virtual {v3}, Lcom/samsung/vekit/Common/Object/Vector3;->getZ()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Panel"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scale : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/vekit/Panel/Panel;->scale:Lcom/samsung/vekit/Common/Object/Vector3;

    invoke-virtual {v4}, Lcom/samsung/vekit/Common/Object/Vector3;->getX()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/vekit/Panel/Panel;->scale:Lcom/samsung/vekit/Common/Object/Vector3;

    invoke-virtual {v4}, Lcom/samsung/vekit/Common/Object/Vector3;->getY()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/vekit/Panel/Panel;->scale:Lcom/samsung/vekit/Common/Object/Vector3;

    invoke-virtual {v4}, Lcom/samsung/vekit/Common/Object/Vector3;->getZ()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "position : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/vekit/Panel/Panel;->position:Lcom/samsung/vekit/Common/Object/Vector3;

    invoke-virtual {v4}, Lcom/samsung/vekit/Common/Object/Vector3;->getX()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/vekit/Panel/Panel;->position:Lcom/samsung/vekit/Common/Object/Vector3;

    invoke-virtual {v4}, Lcom/samsung/vekit/Common/Object/Vector3;->getY()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/vekit/Panel/Panel;->position:Lcom/samsung/vekit/Common/Object/Vector3;

    invoke-virtual {v4}, Lcom/samsung/vekit/Common/Object/Vector3;->getZ()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "quaternion : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/vekit/Panel/Panel;->quaternion:Lcom/samsung/vekit/Common/Object/Quaternion;

    invoke-virtual {v4}, Lcom/samsung/vekit/Common/Object/Quaternion;->getX()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/vekit/Panel/Panel;->quaternion:Lcom/samsung/vekit/Common/Object/Quaternion;

    invoke-virtual {v4}, Lcom/samsung/vekit/Common/Object/Quaternion;->getY()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/vekit/Panel/Panel;->quaternion:Lcom/samsung/vekit/Common/Object/Quaternion;

    invoke-virtual {v4}, Lcom/samsung/vekit/Common/Object/Quaternion;->getZ()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Panel/Panel;->quaternion:Lcom/samsung/vekit/Common/Object/Quaternion;

    invoke-virtual {v2}, Lcom/samsung/vekit/Common/Object/Quaternion;->getW()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public blacklist setPerspective(FF)Lcom/samsung/vekit/Panel/Panel;
    .locals 3

    new-instance v0, Lcom/samsung/vekit/Common/Object/Vector2;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Object/Vector2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/vekit/Panel/Panel;->setPerspective(Lcom/samsung/vekit/Common/Object/Vector2;)Lcom/samsung/vekit/Panel/Panel;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setPerspective(Lcom/samsung/vekit/Common/Object/Vector2;)Lcom/samsung/vekit/Panel/Panel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/Vector2<",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/samsung/vekit/Panel/Panel;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->perspective:Lcom/samsung/vekit/Common/Object/Vector2;

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector2;->getX()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector2;->getY()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/vekit/Common/Object/Vector2;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/samsung/vekit/Panel/Panel;->calculatePerspectiveMatrix()V

    return-object p0
.end method

.method public blacklist setPosition(FFF)Lcom/samsung/vekit/Panel/Panel;
    .locals 4

    new-instance v0, Lcom/samsung/vekit/Common/Object/Vector3;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/vekit/Common/Object/Vector3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/vekit/Panel/Panel;->setPosition(Lcom/samsung/vekit/Common/Object/Vector3;)Lcom/samsung/vekit/Panel/Panel;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setPosition(Lcom/samsung/vekit/Common/Object/Vector3;)Lcom/samsung/vekit/Panel/Panel;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/Vector3<",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/samsung/vekit/Panel/Panel;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/vekit/Panel/Panel;->position:Lcom/samsung/vekit/Common/Object/Vector3;

    iget-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->matrix:Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector3;->getX()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    iget-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->matrix:Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector3;->getY()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    iget-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->matrix:Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector3;->getZ()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    return-object p0
.end method

.method public blacklist setQuaternion(Lcom/samsung/vekit/Common/Object/Quaternion;)Lcom/samsung/vekit/Panel/Panel;
    .locals 1

    iput-object p1, p0, Lcom/samsung/vekit/Panel/Panel;->quaternion:Lcom/samsung/vekit/Common/Object/Quaternion;

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Quaternion;->getRotation()Lcom/samsung/vekit/Common/Object/Vector3;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->rotation:Lcom/samsung/vekit/Common/Object/Vector3;

    invoke-direct {p0}, Lcom/samsung/vekit/Panel/Panel;->updateMatrix()V

    return-object p0
.end method

.method public blacklist setRotation(FFF)Lcom/samsung/vekit/Panel/Panel;
    .locals 4

    new-instance v0, Lcom/samsung/vekit/Common/Object/Vector3;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/vekit/Common/Object/Vector3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/vekit/Panel/Panel;->setRotation(Lcom/samsung/vekit/Common/Object/Vector3;)Lcom/samsung/vekit/Panel/Panel;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setRotation(Lcom/samsung/vekit/Common/Object/Vector3;)Lcom/samsung/vekit/Panel/Panel;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/Vector3<",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/samsung/vekit/Panel/Panel;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/vekit/Panel/Panel;->rotation:Lcom/samsung/vekit/Common/Object/Vector3;

    new-instance v0, Lcom/samsung/vekit/Common/Object/Quaternion;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->quaternion:Lcom/samsung/vekit/Common/Object/Quaternion;

    iget-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->quaternion:Lcom/samsung/vekit/Common/Object/Quaternion;

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector3;->getX()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector3;->getY()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector3;->getZ()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/vekit/Common/Object/Quaternion;->setRotation(FFF)V

    invoke-direct {p0}, Lcom/samsung/vekit/Panel/Panel;->updateMatrix()V

    return-object p0
.end method

.method public blacklist setRotation(Lcom/samsung/vekit/Common/Type/AxisType;F)Lcom/samsung/vekit/Panel/Panel;
    .locals 1

    new-instance v0, Lcom/samsung/vekit/Common/Object/Quaternion;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->quaternion:Lcom/samsung/vekit/Common/Object/Quaternion;

    iget-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->quaternion:Lcom/samsung/vekit/Common/Object/Quaternion;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/vekit/Common/Object/Quaternion;->setRotation(Lcom/samsung/vekit/Common/Type/AxisType;F)V

    iget-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->quaternion:Lcom/samsung/vekit/Common/Object/Quaternion;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/Object/Quaternion;->getRotation()Lcom/samsung/vekit/Common/Object/Vector3;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->rotation:Lcom/samsung/vekit/Common/Object/Vector3;

    invoke-direct {p0}, Lcom/samsung/vekit/Panel/Panel;->updateMatrix()V

    return-object p0
.end method

.method public blacklist setScale(FFF)Lcom/samsung/vekit/Panel/Panel;
    .locals 4

    new-instance v0, Lcom/samsung/vekit/Common/Object/Vector3;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/vekit/Common/Object/Vector3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/vekit/Panel/Panel;->setScale(Lcom/samsung/vekit/Common/Object/Vector3;)Lcom/samsung/vekit/Panel/Panel;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setScale(Lcom/samsung/vekit/Common/Object/Vector3;)Lcom/samsung/vekit/Panel/Panel;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/Vector3<",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/samsung/vekit/Panel/Panel;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/vekit/Panel/Panel;->scale:Lcom/samsung/vekit/Common/Object/Vector3;

    invoke-direct {p0}, Lcom/samsung/vekit/Panel/Panel;->updateMatrix()V

    return-object p0
.end method

.method public blacklist setSize(FF)Lcom/samsung/vekit/Panel/Panel;
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Panel/Panel;->width:F

    iput p2, p0, Lcom/samsung/vekit/Panel/Panel;->height:F

    invoke-direct {p0}, Lcom/samsung/vekit/Panel/Panel;->calculatePerspectiveMatrix()V

    return-object p0
.end method

.method public blacklist setWidth(F)Lcom/samsung/vekit/Panel/Panel;
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Panel/Panel;->width:F

    invoke-direct {p0}, Lcom/samsung/vekit/Panel/Panel;->calculatePerspectiveMatrix()V

    return-object p0
.end method

.method public blacklist translate(FFF)Lcom/samsung/vekit/Panel/Panel;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->matrix:Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/vekit/Common/Object/Matrix4;->translate(FFF)Lcom/samsung/vekit/Common/Object/Matrix4;

    iget-object v0, p0, Lcom/samsung/vekit/Panel/Panel;->matrix:Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-virtual {p0, v0}, Lcom/samsung/vekit/Panel/Panel;->setMatrix(Lcom/samsung/vekit/Common/Object/Matrix4;)Lcom/samsung/vekit/Panel/Panel;

    return-object p0
.end method

.method public blacklist translate(Lcom/samsung/vekit/Common/Object/Vector3;)Lcom/samsung/vekit/Panel/Panel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/Vector3<",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/samsung/vekit/Panel/Panel;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector3;->getX()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector3;->getY()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector3;->getZ()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/vekit/Panel/Panel;->translate(FFF)Lcom/samsung/vekit/Panel/Panel;

    move-result-object v0

    return-object v0
.end method
