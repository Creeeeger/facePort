.class public Lcom/samsung/vekit/Common/Object/Quaternion;
.super Ljava/lang/Object;
.source "Quaternion.java"


# static fields
.field public static final blacklist EPSILON:F = 1.0E-5f

.field public static final blacklist IDENTITY:Lcom/samsung/vekit/Common/Object/Quaternion;

.field public static final blacklist ZERO:Lcom/samsung/vekit/Common/Object/Quaternion;


# instance fields
.field public blacklist w:D

.field public blacklist x:D

.field public blacklist y:D

.field public blacklist z:D


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/vekit/Common/Object/Quaternion;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/samsung/vekit/Common/Object/Quaternion;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/vekit/Common/Object/Quaternion;->ZERO:Lcom/samsung/vekit/Common/Object/Quaternion;

    new-instance v0, Lcom/samsung/vekit/Common/Object/Quaternion;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/samsung/vekit/Common/Object/Quaternion;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/vekit/Common/Object/Quaternion;->IDENTITY:Lcom/samsung/vekit/Common/Object/Quaternion;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    return-void
.end method

.method public constructor blacklist <init>(DDDD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iput-wide p3, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iput-wide p5, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    iput-wide p7, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    return-void
.end method

.method public constructor blacklist <init>(FFFF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    float-to-double v0, p2

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    float-to-double v0, p3

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    float-to-double v0, p4

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/vekit/Common/Object/Quaternion;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-wide v0, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iget-wide v0, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    iget-wide v0, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/vekit/Common/Object/Vector3;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/Vector3<",
            "Ljava/lang/Float;",
            ">;F)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Common/Object/Quaternion;->setRotation(Lcom/samsung/vekit/Common/Object/Vector3;F)V

    return-void
.end method

.method private blacklist clamp(FFF)F
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist add(Lcom/samsung/vekit/Common/Object/Quaternion;)Lcom/samsung/vekit/Common/Object/Quaternion;
    .locals 12

    new-instance v9, Lcom/samsung/vekit/Common/Object/Quaternion;

    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-wide v2, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    add-double v1, v0, v2

    iget-wide v3, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iget-wide v5, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    add-double/2addr v3, v5

    iget-wide v5, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    iget-wide v7, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    add-double/2addr v5, v7

    iget-wide v7, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    iget-wide v10, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    add-double/2addr v7, v10

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/samsung/vekit/Common/Object/Quaternion;-><init>(DDDD)V

    return-object v9
.end method

.method public blacklist conjugate()V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    neg-double v0, v0

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    neg-double v0, v0

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    neg-double v0, v0

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    neg-double v0, v0

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    return-void
.end method

.method public blacklist divide(F)Lcom/samsung/vekit/Common/Object/Quaternion;
    .locals 7

    new-instance v0, Lcom/samsung/vekit/Common/Object/Quaternion;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/Quaternion;-><init>()V

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3727c5ac    # 1.0E-5f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    return-object v0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, p1

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    double-to-float v2, v2

    mul-float/2addr v2, v1

    iget-wide v3, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    double-to-float v3, v3

    mul-float/2addr v3, v1

    iget-wide v4, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    double-to-float v4, v4

    mul-float/2addr v4, v1

    iget-wide v5, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    double-to-float v5, v5

    mul-float/2addr v5, v1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/samsung/vekit/Common/Object/Quaternion;->set(FFFF)V

    return-object v0
.end method

.method public blacklist dot(Lcom/samsung/vekit/Common/Object/Quaternion;)F
    .locals 6

    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-wide v2, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iget-wide v4, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    iget-wide v4, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    iget-wide v4, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public blacklist equals(Lcom/samsung/vekit/Common/Object/Quaternion;D)Z
    .locals 6

    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-wide v2, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, p2

    const/4 v1, 0x1

    if-gez v0, :cond_0

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iget-wide v4, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v0, v2, p2

    if-gez v0, :cond_0

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    iget-wide v4, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v0, v2, p2

    if-gez v0, :cond_0

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    iget-wide v4, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v0, v2, p2

    if-gez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Lcom/samsung/vekit/Common/Object/Quaternion;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/Quaternion;-><init>()V

    iget-wide v2, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    neg-double v2, v2

    iput-wide v2, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-wide v2, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    neg-double v2, v2

    iput-wide v2, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iget-wide v2, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    neg-double v2, v2

    iput-wide v2, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    iget-wide v2, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    neg-double v2, v2

    iput-wide v2, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-wide v4, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, p2

    if-gez v2, :cond_1

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iget-wide v4, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, p2

    if-gez v2, :cond_1

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    iget-wide v4, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, p2

    if-gez v2, :cond_1

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    iget-wide v4, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, p2

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist getMatrix()Lcom/samsung/vekit/Common/Object/Matrix4;
    .locals 31

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-wide v3, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    mul-double/2addr v1, v3

    iget-wide v3, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-wide v5, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    mul-double/2addr v3, v5

    iget-wide v5, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iget-wide v7, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    mul-double/2addr v5, v7

    iget-wide v7, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-wide v9, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    mul-double/2addr v7, v9

    iget-wide v9, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iget-wide v11, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    mul-double/2addr v9, v11

    iget-wide v11, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    iget-wide v13, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    mul-double/2addr v11, v13

    iget-wide v13, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    move-wide v15, v9

    iget-wide v9, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    mul-double/2addr v13, v9

    iget-wide v9, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    move-wide/from16 v17, v13

    iget-wide v13, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    mul-double/2addr v9, v13

    iget-wide v13, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    move-wide/from16 v19, v7

    iget-wide v7, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    mul-double/2addr v13, v7

    iget-wide v7, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    move-wide/from16 v21, v9

    iget-wide v9, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    mul-double/2addr v7, v9

    new-instance v9, Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-direct {v9}, Lcom/samsung/vekit/Common/Object/Matrix4;-><init>()V

    sub-double v23, v1, v5

    sub-double v23, v23, v11

    move-wide/from16 v25, v11

    add-double v10, v23, v7

    double-to-float v10, v10

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v11, v10}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    add-double v23, v3, v13

    add-double v23, v23, v3

    add-double v11, v23, v13

    double-to-float v11, v11

    const/4 v12, 0x1

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v12, v11}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    sub-double v23, v19, v21

    add-double v23, v23, v19

    move-wide/from16 v27, v13

    sub-double v12, v23, v21

    double-to-float v12, v12

    const/4 v13, 0x2

    invoke-virtual {v9, v10, v13, v12}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    const/4 v12, 0x3

    const/4 v14, 0x0

    invoke-virtual {v9, v10, v12, v14}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    sub-double v23, v3, v27

    add-double v23, v23, v3

    sub-double v11, v23, v27

    double-to-float v11, v11

    const/4 v12, 0x1

    invoke-virtual {v9, v12, v10, v11}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    neg-double v10, v1

    add-double/2addr v10, v5

    sub-double v10, v10, v25

    add-double/2addr v10, v7

    double-to-float v10, v10

    invoke-virtual {v9, v12, v12, v10}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    add-double v10, v15, v17

    add-double/2addr v10, v15

    add-double v10, v10, v17

    double-to-float v10, v10

    invoke-virtual {v9, v12, v13, v10}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    const/4 v10, 0x3

    invoke-virtual {v9, v12, v10, v14}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    add-double v29, v19, v21

    add-double v29, v29, v19

    add-double v11, v29, v21

    double-to-float v10, v11

    const/4 v11, 0x0

    invoke-virtual {v9, v13, v11, v10}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    sub-double v11, v15, v17

    add-double/2addr v11, v15

    sub-double v11, v11, v17

    double-to-float v11, v11

    const/4 v12, 0x1

    invoke-virtual {v9, v13, v12, v11}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    neg-double v10, v1

    sub-double/2addr v10, v5

    add-double v10, v10, v25

    add-double/2addr v10, v7

    double-to-float v10, v10

    invoke-virtual {v9, v13, v13, v10}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    const/4 v10, 0x3

    invoke-virtual {v9, v13, v10, v14}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11, v14}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11, v14}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    invoke-virtual {v9, v10, v13, v14}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10, v10, v11}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    return-object v9
.end method

.method public blacklist getPitch()D
    .locals 6

    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-wide v4, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    const-wide/high16 v2, -0x4000000000000000L    # -2.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getRoll()D
    .locals 8

    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    iget-wide v4, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    iget-wide v4, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-wide v6, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iget-wide v6, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    iget-wide v6, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getRotation()Lcom/samsung/vekit/Common/Object/Vector3;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/vekit/Common/Object/Vector3<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/Object/Quaternion;->getMatrix()Lcom/samsung/vekit/Common/Object/Matrix4;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->get(II)F

    move-result v3

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/vekit/Common/Object/Quaternion;->clamp(FFF)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->get(II)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3feffffde7210be9L    # 0.999999

    cmpg-double v4, v4, v6

    const/4 v5, 0x1

    if-gez v4, :cond_0

    invoke-virtual {v0, v1, v5}, Lcom/samsung/vekit/Common/Object/Matrix4;->get(II)F

    move-result v4

    neg-float v4, v4

    float-to-double v6, v4

    invoke-virtual {v0, v1, v1}, Lcom/samsung/vekit/Common/Object/Matrix4;->get(II)F

    move-result v1

    float-to-double v8, v1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v1, v6

    invoke-virtual {v0, v5, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->get(II)F

    move-result v4

    neg-float v4, v4

    float-to-double v4, v4

    invoke-virtual {v0, v2, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->get(II)F

    move-result v2

    float-to-double v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v2, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v5, v1}, Lcom/samsung/vekit/Common/Object/Matrix4;->get(II)F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v5, v5}, Lcom/samsung/vekit/Common/Object/Matrix4;->get(II)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    double-to-float v1, v1

    const/4 v2, 0x0

    :goto_0
    new-instance v4, Lcom/samsung/vekit/Common/Object/Vector3;

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    float-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    double-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/vekit/Common/Object/Vector3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4
.end method

.method public blacklist getW()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    return-wide v0
.end method

.method public blacklist getX()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    return-wide v0
.end method

.method public blacklist getY()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    return-wide v0
.end method

.method public blacklist getYaw()D
    .locals 8

    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    iget-wide v4, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    iget-wide v4, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-wide v6, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iget-wide v6, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    iget-wide v6, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getZ()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    return-wide v0
.end method

.method public blacklist invert()Lcom/samsung/vekit/Common/Object/Quaternion;
    .locals 2

    new-instance v0, Lcom/samsung/vekit/Common/Object/Quaternion;

    invoke-direct {v0, p0}, Lcom/samsung/vekit/Common/Object/Quaternion;-><init>(Lcom/samsung/vekit/Common/Object/Quaternion;)V

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/Object/Quaternion;->conjugate()V

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/Object/Quaternion;->lengthSquared()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/vekit/Common/Object/Quaternion;->divide(F)Lcom/samsung/vekit/Common/Object/Quaternion;

    move-result-object v1

    return-object v1
.end method

.method public blacklist length()F
    .locals 6

    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iget-wide v4, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    iget-wide v4, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    iget-wide v4, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public blacklist lengthSquared()F
    .locals 6

    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iget-wide v4, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    iget-wide v4, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    iget-wide v4, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public blacklist multiply(F)Lcom/samsung/vekit/Common/Object/Quaternion;
    .locals 12

    new-instance v9, Lcom/samsung/vekit/Common/Object/Quaternion;

    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    float-to-double v2, p1

    mul-double v1, v0, v2

    iget-wide v3, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    float-to-double v5, p1

    mul-double/2addr v3, v5

    iget-wide v5, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    float-to-double v7, p1

    mul-double/2addr v5, v7

    iget-wide v7, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    float-to-double v10, p1

    mul-double/2addr v7, v10

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/samsung/vekit/Common/Object/Quaternion;-><init>(DDDD)V

    return-object v9
.end method

.method public blacklist multiply(Lcom/samsung/vekit/Common/Object/Quaternion;)Lcom/samsung/vekit/Common/Object/Quaternion;
    .locals 14

    new-instance v9, Lcom/samsung/vekit/Common/Object/Quaternion;

    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    iget-wide v2, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-wide v4, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iget-wide v4, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    iget-wide v4, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    mul-double/2addr v2, v4

    sub-double v1, v0, v2

    iget-wide v3, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    iget-wide v5, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    mul-double/2addr v3, v5

    iget-wide v5, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-wide v7, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    mul-double/2addr v5, v7

    sub-double/2addr v3, v5

    iget-wide v5, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iget-wide v7, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    iget-wide v5, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    iget-wide v7, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    iget-wide v5, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    iget-wide v7, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    mul-double/2addr v5, v7

    iget-wide v7, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-wide v10, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    mul-double/2addr v7, v10

    add-double/2addr v5, v7

    iget-wide v7, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iget-wide v10, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    mul-double/2addr v7, v10

    sub-double/2addr v5, v7

    iget-wide v7, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    iget-wide v10, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    mul-double/2addr v7, v10

    add-double/2addr v5, v7

    iget-wide v7, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    iget-wide v10, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    mul-double/2addr v7, v10

    iget-wide v10, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-wide v12, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    mul-double/2addr v10, v12

    sub-double/2addr v7, v10

    iget-wide v10, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iget-wide v12, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    mul-double/2addr v10, v12

    sub-double/2addr v7, v10

    iget-wide v10, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    iget-wide v12, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    mul-double/2addr v10, v12

    sub-double/2addr v7, v10

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/samsung/vekit/Common/Object/Quaternion;-><init>(DDDD)V

    return-object v9
.end method

.method public blacklist normalize()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/Object/Quaternion;->length()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-wide v1, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    float-to-double v3, v0

    div-double/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-wide v1, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    float-to-double v3, v0

    div-double/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iget-wide v1, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    float-to-double v3, v0

    div-double/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    iget-wide v1, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    float-to-double v3, v0

    div-double/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    return-void
.end method

.method public blacklist normalized()Lcom/samsung/vekit/Common/Object/Quaternion;
    .locals 1

    new-instance v0, Lcom/samsung/vekit/Common/Object/Quaternion;

    invoke-direct {v0, p0}, Lcom/samsung/vekit/Common/Object/Quaternion;-><init>(Lcom/samsung/vekit/Common/Object/Quaternion;)V

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/Object/Quaternion;->normalize()V

    return-object v0
.end method

.method public blacklist set(DDDD)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iput-wide p3, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iput-wide p5, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    iput-wide p7, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    return-void
.end method

.method public blacklist set(FFFF)V
    .locals 2

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    float-to-double v0, p2

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    float-to-double v0, p3

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    float-to-double v0, p4

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    return-void
.end method

.method public blacklist setMatrix(Lcom/samsung/vekit/Common/Object/Matrix4;)V
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Matrix4;->getPureRotationMatrix()Lcom/samsung/vekit/Common/Object/Matrix4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/Object/Matrix4;->getQuaternion()Lcom/samsung/vekit/Common/Object/Quaternion;

    move-result-object v0

    iget-wide v1, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iput-wide v1, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-wide v1, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iput-wide v1, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iget-wide v1, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    iput-wide v1, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    iget-wide v1, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    iput-wide v1, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    return-void
.end method

.method public blacklist setRotation(FFF)V
    .locals 11

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v0, v3

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    div-float v5, v1, v3

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    div-float v6, v2, v3

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    div-float v7, v0, v3

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    div-float v8, v1, v3

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    div-float v3, v2, v3

    float-to-double v9, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v3, v9

    mul-float v9, v7, v5

    mul-float/2addr v9, v6

    mul-float v10, v4, v8

    mul-float/2addr v10, v3

    add-float/2addr v9, v10

    float-to-double v9, v9

    iput-wide v9, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    mul-float v9, v4, v8

    mul-float/2addr v9, v6

    mul-float v10, v7, v5

    mul-float/2addr v10, v3

    sub-float/2addr v9, v10

    float-to-double v9, v9

    iput-wide v9, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    mul-float v9, v4, v5

    mul-float/2addr v9, v3

    mul-float v10, v7, v8

    mul-float/2addr v10, v6

    add-float/2addr v9, v10

    float-to-double v9, v9

    iput-wide v9, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    mul-float v9, v4, v5

    mul-float/2addr v9, v6

    mul-float v10, v7, v8

    mul-float/2addr v10, v3

    sub-float/2addr v9, v10

    float-to-double v9, v9

    iput-wide v9, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    return-void
.end method

.method public blacklist setRotation(Lcom/samsung/vekit/Common/Object/Vector3;F)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/Vector3<",
            "Ljava/lang/Float;",
            ">;F)V"
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

    new-instance v1, Lcom/samsung/vekit/Common/Object/Vector3;

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector3;->getX()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector3;->getY()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    div-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector3;->getZ()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    div-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/vekit/Common/Object/Vector3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    float-to-double v6, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    mul-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Object/Vector3;->getX()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v4, v2

    float-to-double v4, v4

    iput-wide v4, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Object/Vector3;->getY()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v4, v2

    float-to-double v4, v4

    iput-wide v4, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Object/Vector3;->getZ()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v4, v2

    float-to-double v4, v4

    iput-wide v4, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    float-to-double v4, v3

    iput-wide v4, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    return-void
.end method

.method public blacklist setRotation(Lcom/samsung/vekit/Common/Type/AxisType;F)V
    .locals 3

    sget-object v0, Lcom/samsung/vekit/Common/Object/Quaternion$1;->$SwitchMap$com$samsung$vekit$Common$Type$AxisType:[I

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Type/AxisType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Lcom/samsung/vekit/Common/Object/Vector3;

    invoke-direct {v0, v2, v2, v1}, Lcom/samsung/vekit/Common/Object/Vector3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p2}, Lcom/samsung/vekit/Common/Object/Quaternion;->setRotation(Lcom/samsung/vekit/Common/Object/Vector3;F)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/samsung/vekit/Common/Object/Vector3;

    invoke-direct {v0, v2, v1, v2}, Lcom/samsung/vekit/Common/Object/Vector3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p2}, Lcom/samsung/vekit/Common/Object/Quaternion;->setRotation(Lcom/samsung/vekit/Common/Object/Vector3;F)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/samsung/vekit/Common/Object/Vector3;

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/vekit/Common/Object/Vector3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p2}, Lcom/samsung/vekit/Common/Object/Quaternion;->setRotation(Lcom/samsung/vekit/Common/Object/Vector3;F)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setW(D)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    return-void
.end method

.method public blacklist setX(D)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    return-void
.end method

.method public blacklist setY(D)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    return-void
.end method

.method public blacklist setZ(D)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    return-void
.end method

.method public blacklist substract(Lcom/samsung/vekit/Common/Object/Quaternion;)Lcom/samsung/vekit/Common/Object/Quaternion;
    .locals 12

    new-instance v9, Lcom/samsung/vekit/Common/Object/Quaternion;

    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-wide v2, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    sub-double v1, v0, v2

    iget-wide v3, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iget-wide v5, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    sub-double/2addr v3, v5

    iget-wide v5, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    iget-wide v7, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    sub-double/2addr v5, v7

    iget-wide v7, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    iget-wide v10, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    sub-double/2addr v7, v10

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/samsung/vekit/Common/Object/Quaternion;-><init>(DDDD)V

    return-object v9
.end method
