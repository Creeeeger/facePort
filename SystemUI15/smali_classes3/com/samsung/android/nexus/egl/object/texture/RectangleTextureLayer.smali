.class public final Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;
.super Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DEFAULT_INDICES:[S

.field public static final DEFAULT_VERTICES:[F


# instance fields
.field public final mObjectRect:Landroid/graphics/Rect;

.field public final mRotationMatrix:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->DEFAULT_VERTICES:[F

    const/4 v0, 0x6

    new-array v0, v0, [S

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->DEFAULT_INDICES:[S

    return-void

    :array_0
    .array-data 4
        -0x41000000    # -0.5f
        0x3f000000    # 0.5f
        0x0
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x0
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        0x0
        0x3f000000    # 0.5f
        -0x41000000    # -0.5f
        0x0
    .end array-data

    :array_1
    .array-data 2
        0x0s
        0x2s
        0x3s
        0x0s
        0x3s
        0x1s
    .end array-data
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;-><init>(Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->DEFAULT_VERTICES:[F

    sget-object v1, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->DEFAULT_COORD:[F

    sget-object v2, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->DEFAULT_INDICES:[S

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;-><init>(Landroid/graphics/Bitmap;[F[F[S)V

    const/16 p2, 0x10

    new-array p2, p2, [F

    iput-object p2, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mRotationMatrix:[F

    iput-object p1, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mObjectRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final generateElementNameList()[Ljava/lang/String;
    .locals 0

    const-string p0, "aPosition"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final generateElementSizeList()[I
    .locals 0

    const/4 p0, 0x3

    filled-new-array {p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public final init()V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->init()V

    iget-object v7, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mRotationMatrix:[F

    invoke-static {v7, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v8, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mRotationMatrix:[F

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v7, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mObjectRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    iget-object v9, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mObjectRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v8

    neg-float v10, v7

    new-array v11, v3, [F

    aput v10, v11, v6

    aput v9, v11, v5

    aput v4, v11, v2

    aput v4, v11, v1

    new-array v12, v3, [F

    aput v7, v12, v6

    aput v9, v12, v5

    aput v4, v12, v2

    aput v4, v12, v1

    neg-float v9, v9

    new-array v13, v3, [F

    aput v10, v13, v6

    aput v9, v13, v5

    aput v4, v13, v2

    aput v4, v13, v1

    new-array v10, v3, [F

    aput v7, v10, v6

    aput v9, v10, v5

    aput v4, v10, v2

    aput v4, v10, v1

    iget-object v7, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mObjectRect:Landroid/graphics/Rect;

    iget v9, v7, Landroid/graphics/Rect;->left:I

    iget v14, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v14

    int-to-float v9, v9

    div-float/2addr v9, v8

    iget v14, v7, Landroid/graphics/Rect;->top:I

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v14, v7

    int-to-float v7, v14

    div-float/2addr v7, v8

    add-float/2addr v9, v4

    add-float/2addr v7, v4

    iget-object v8, v0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v8, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, v0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    aget v8, v11, v6

    add-float/2addr v8, v9

    aget v11, v11, v5

    add-float/2addr v11, v7

    aget v14, v12, v6

    add-float/2addr v14, v9

    aget v12, v12, v5

    add-float/2addr v12, v7

    aget v15, v13, v6

    add-float/2addr v15, v9

    aget v13, v13, v5

    add-float/2addr v13, v7

    aget v16, v10, v6

    add-float v16, v16, v9

    aget v9, v10, v5

    add-float/2addr v9, v7

    const/16 v7, 0xc

    new-array v7, v7, [F

    aput v8, v7, v6

    aput v11, v7, v5

    aput v4, v7, v2

    aput v14, v7, v1

    aput v12, v7, v3

    const/4 v1, 0x5

    aput v4, v7, v1

    const/4 v1, 0x6

    aput v15, v7, v1

    const/4 v1, 0x7

    aput v13, v7, v1

    const/16 v1, 0x8

    aput v4, v7, v1

    const/16 v1, 0x9

    aput v16, v7, v1

    const/16 v1, 0xa

    aput v9, v7, v1

    const/16 v1, 0xb

    aput v4, v7, v1

    invoke-virtual {v0, v7}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    return-void
.end method
