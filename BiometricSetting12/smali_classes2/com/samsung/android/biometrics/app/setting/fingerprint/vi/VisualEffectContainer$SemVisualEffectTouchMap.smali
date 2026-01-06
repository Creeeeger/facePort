.class Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;
.super Ljava/lang/Object;
.source "VisualEffectContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SemVisualEffectTouchMap"
.end annotation


# instance fields
.field private final EDGE_X:[I

.field private final EDGE_Y:[I

.field private final SEARCH_X:[I

.field private final SEARCH_Y:[I

.field private mCheckArray:[[I

.field private mEffectPath:Landroid/graphics/Path;

.field private mHeight:I

.field private final mTouchMapReader:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;

.field private mWidth:I

.field final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;

    invoke-direct {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->mTouchMapReader:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->mWidth:I

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->mHeight:I

    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->EDGE_X:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->EDGE_Y:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->SEARCH_X:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->SEARCH_Y:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x1
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x0
        -0x1
    .end array-data

    :array_3
    .array-data 4
        -0x1
        0x0
        0x1
        0x0
    .end array-data
.end method

.method private calculateClipOutPath(Ljava/util/ArrayList;)Landroid/graphics/Path;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[F>;)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    move-object/from16 v0, p1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v2, 0x0

    move v10, v2

    :goto_0
    if-ge v10, v9, :cond_1

    rem-int v2, v10, v9

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, [F

    add-int/lit8 v2, v10, 0x1

    rem-int/2addr v2, v9

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, [F

    add-int/lit8 v2, v10, 0x2

    rem-int/2addr v2, v9

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, [F

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v10, :cond_0

    aget v5, v11, v3

    aget v6, v12, v3

    add-float/2addr v5, v6

    div-float/2addr v5, v2

    aget v6, v11, v4

    aget v7, v12, v4

    add-float/2addr v6, v7

    div-float/2addr v6, v2

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    :cond_0
    aget v5, v11, v3

    aget v6, v12, v3

    add-float/2addr v5, v6

    div-float/2addr v5, v2

    aget v6, v11, v4

    aget v7, v12, v4

    add-float/2addr v6, v7

    div-float/2addr v6, v2

    aget v7, v12, v3

    aget v8, v12, v4

    aget v14, v12, v3

    aget v3, v13, v3

    add-float/2addr v14, v3

    div-float/2addr v14, v2

    aget v3, v12, v4

    aget v4, v13, v4

    add-float/2addr v3, v4

    div-float v15, v3, v2

    move-object v2, v1

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v14

    move v8, v15

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    :cond_2
    return-object v1
.end method

.method private eraseNeighborArray(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v2, v0, 0x2

    if-le v1, v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getOuterLine([[I)Ljava/util/ArrayList;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[I)",
            "Ljava/util/ArrayList<",
            "[F>;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v6, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->getWidth()I

    move-result v8

    iget-object v0, v6, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->getHeight()I

    move-result v9

    int-to-float v0, v8

    const/4 v10, 0x0

    aget-object v1, v7, v10

    array-length v1, v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, v9

    array-length v2, v7

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, v6, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->mTouchMapReader:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;

    iget v4, v4, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->displayHCellMax:I

    const/4 v5, -0x1

    const/4 v12, 0x2

    if-eq v4, v5, :cond_6

    iget-object v4, v6, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->mTouchMapReader:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;

    iget v4, v4, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->displayVCellMax:I

    if-eq v4, v5, :cond_6

    iget-object v4, v6, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    invoke-static {v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->access$700(Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v4

    iget-object v14, v6, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    invoke-virtual {v14}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->getDisplayRotation()I

    move-result v14

    if-eqz v14, :cond_1

    if-ne v14, v12, :cond_0

    goto :goto_0

    :cond_0
    move v15, v10

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v15, 0x1

    :goto_1
    iget-object v5, v6, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->mTouchMapReader:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;

    if-eqz v15, :cond_2

    iget v5, v5, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->displayHCellMax:I

    goto :goto_2

    :cond_2
    iget v5, v5, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->displayVCellMax:I

    :goto_2
    int-to-float v5, v5

    iget-object v13, v6, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->mTouchMapReader:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;

    if-eqz v15, :cond_3

    iget v13, v13, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->displayVCellMax:I

    goto :goto_3

    :cond_3
    iget v13, v13, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->displayHCellMax:I

    :goto_3
    int-to-float v13, v13

    iget-object v12, v6, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->mTouchMapReader:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;

    if-eqz v15, :cond_4

    iget v12, v12, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->displayHCellSize:I

    goto :goto_4

    :cond_4
    iget v12, v12, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->displayVCellSize:I

    :goto_4
    int-to-float v12, v12

    iget-object v10, v6, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->mTouchMapReader:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;

    if-eqz v15, :cond_5

    iget v10, v10, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->displayVCellSize:I

    goto :goto_5

    :cond_5
    iget v10, v10, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->displayHCellSize:I

    :goto_5
    int-to-float v10, v10

    iget v11, v4, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    div-float v0, v11, v5

    iget v11, v4, Landroid/graphics/Point;->y:I

    int-to-float v11, v11

    div-float v1, v11, v13

    packed-switch v14, :pswitch_data_0

    move v10, v0

    move v11, v1

    move v12, v2

    move v13, v3

    goto :goto_6

    :pswitch_0
    int-to-float v11, v9

    mul-float v21, v1, v10

    sub-float v11, v11, v21

    const/high16 v20, 0x40000000    # 2.0f

    div-float v3, v11, v20

    move v10, v0

    move v11, v1

    move v12, v2

    move v13, v3

    goto :goto_6

    :pswitch_1
    const/high16 v20, 0x40000000    # 2.0f

    int-to-float v11, v8

    mul-float v21, v0, v12

    sub-float v11, v11, v21

    div-float v2, v11, v20

    move v10, v0

    move v11, v1

    move v12, v2

    move v13, v3

    goto :goto_6

    :pswitch_2
    const/high16 v20, 0x40000000    # 2.0f

    int-to-float v11, v8

    mul-float v21, v0, v12

    sub-float v2, v11, v21

    int-to-float v11, v9

    mul-float v21, v1, v10

    sub-float v11, v11, v21

    div-float v3, v11, v20

    move v10, v0

    move v11, v1

    move v12, v2

    move v13, v3

    goto :goto_6

    :pswitch_3
    const/high16 v20, 0x40000000    # 2.0f

    int-to-float v11, v8

    mul-float v21, v0, v12

    sub-float v11, v11, v21

    div-float v2, v11, v20

    int-to-float v11, v9

    mul-float v21, v1, v10

    sub-float v3, v11, v21

    move v10, v0

    move v11, v1

    move v12, v2

    move v13, v3

    goto :goto_6

    :cond_6
    move v10, v0

    move v11, v1

    move v12, v2

    move v13, v3

    :goto_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    array-length v0, v7

    const/4 v1, 0x0

    aget-object v2, v7, v1

    array-length v2, v2

    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x1

    aput v2, v4, v5

    aput v0, v4, v1

    const-class v0, I

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, v6, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->mCheckArray:[[I

    const/4 v0, 0x4

    new-array v2, v0, [[I

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    aput-object v4, v2, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    const/4 v4, 0x1

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v2, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    const/4 v15, 0x3

    aput-object v1, v2, v15

    move-object/from16 v21, v2

    const/4 v1, 0x0

    aget-object v2, v7, v1

    array-length v1, v2

    div-int/2addr v1, v3

    array-length v2, v7

    div-int/2addr v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v5, v1

    move/from16 v22, v3

    move v3, v4

    move v4, v2

    :goto_7
    if-ge v3, v0, :cond_e

    rem-int/lit8 v1, v3, 0x2

    if-nez v1, :cond_7

    add-int/lit8 v22, v22, 0x1

    move/from16 v1, v22

    goto :goto_8

    :cond_7
    move/from16 v1, v22

    :goto_8
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_d

    if-ltz v4, :cond_a

    if-ltz v5, :cond_a

    array-length v0, v7

    if-ge v4, v0, :cond_a

    const/4 v0, 0x0

    aget-object v15, v7, v0

    array-length v15, v15

    if-ge v5, v15, :cond_a

    aget-object v15, v7, v4

    aget v15, v15, v5

    const/4 v0, 0x1

    if-ne v15, v0, :cond_8

    goto :goto_b

    :cond_8
    aget-object v15, v21, v3

    const/16 v17, 0x0

    aget v15, v15, v17

    add-int/2addr v5, v15

    aget-object v15, v21, v3

    aget v15, v15, v0

    add-int/2addr v4, v15

    const/4 v0, 0x3

    if-ne v3, v0, :cond_9

    add-int/lit8 v0, v1, -0x1

    if-ne v2, v0, :cond_9

    array-length v0, v7

    const/4 v15, 0x2

    div-int/2addr v0, v15

    if-ge v1, v0, :cond_9

    const/4 v0, -0x1

    goto :goto_a

    :cond_9
    move v0, v3

    :goto_a
    move v3, v0

    add-int/lit8 v2, v2, 0x1

    const/4 v0, 0x4

    const/4 v15, 0x3

    goto :goto_9

    :cond_a
    :goto_b
    if-ltz v4, :cond_c

    if-ltz v5, :cond_c

    array-length v0, v7

    if-ge v4, v0, :cond_c

    const/4 v0, 0x0

    aget-object v15, v7, v0

    array-length v0, v15

    if-lt v5, v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x5

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x4

    :goto_d
    move v3, v0

    :cond_d
    const/4 v0, 0x1

    add-int/2addr v3, v0

    move/from16 v22, v1

    const/4 v0, 0x4

    const/4 v15, 0x3

    goto :goto_7

    :cond_e
    const/4 v0, 0x1

    const/4 v1, 0x6

    if-ne v3, v1, :cond_12

    aget-object v1, v7, v4

    aget v1, v1, v5

    if-ne v1, v0, :cond_12

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, p1

    move/from16 v16, v3

    move v3, v5

    move/from16 v23, v4

    move v7, v5

    move v5, v15

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->searchNeighborBlock(Ljava/util/ArrayList;[[IIII)V

    new-instance v0, Landroid/graphics/Point;

    move/from16 v2, v23

    invoke-direct {v0, v7, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {v6, v14}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->eraseNeighborArray(Ljava/util/ArrayList;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    const/4 v4, 0x2

    new-array v5, v4, [F

    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    mul-float/2addr v4, v10

    add-float/2addr v4, v12

    const/4 v15, 0x0

    aput v4, v5, v15

    iget v4, v3, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    mul-float/2addr v4, v11

    add-float/2addr v4, v13

    const/4 v15, 0x1

    aput v4, v5, v15

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_f
    const/4 v1, 0x0

    :goto_f
    const/4 v3, 0x3

    if-ge v1, v3, :cond_11

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_10
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v5, v15, :cond_10

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [F

    add-int/lit8 v23, v5, 0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v24

    rem-int v3, v23, v24

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    move/from16 v23, v2

    const/4 v2, 0x2

    new-array v6, v2, [F

    const/16 v18, 0x0

    aget v19, v15, v18

    aget v24, v3, v18

    add-float v19, v19, v24

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    aput v19, v6, v18

    const/16 v17, 0x1

    aget v19, v15, v17

    aget v24, v3, v17

    add-float v19, v19, v24

    div-float v19, v19, v20

    aput v19, v6, v17

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x3

    move-object/from16 v6, p0

    move/from16 v2, v23

    goto :goto_10

    :cond_10
    move/from16 v23, v2

    const/4 v2, 0x2

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/high16 v20, 0x40000000    # 2.0f

    move-object v0, v4

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v6, p0

    move/from16 v2, v23

    goto :goto_f

    :cond_11
    return-object v0

    :cond_12
    move/from16 v16, v3

    move/from16 v23, v4

    move v7, v5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x0
    .end array-data
.end method

.method private getRotationMap([[II)[[I
    .locals 9

    const-class v0, I

    const/4 v1, 0x0

    aget-object v2, p1, v1

    array-length v2, v2

    array-length v3, p1

    move-object v4, p1

    const/4 v5, 0x2

    const/4 v6, 0x1

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    new-array v5, v5, [I

    aput v3, v5, v6

    aput v2, v5, v1

    invoke-static {v0, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [[I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v5, v4, v1

    sub-int v7, v3, v0

    sub-int/2addr v7, v6

    aget-object v8, p1, v0

    aget v8, v8, v1

    aput v8, v5, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    goto :goto_6

    :pswitch_1
    new-array v5, v5, [I

    aput v2, v5, v6

    aput v3, v5, v1

    invoke-static {v0, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [[I

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_3

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_2

    sub-int v5, v3, v0

    sub-int/2addr v5, v6

    aget-object v5, v4, v5

    sub-int v7, v2, v1

    sub-int/2addr v7, v6

    aget-object v8, p1, v0

    aget v8, v8, v1

    aput v8, v5, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    goto :goto_6

    :pswitch_2
    new-array v5, v5, [I

    aput v3, v5, v6

    aput v2, v5, v1

    invoke-static {v0, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [[I

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v3, :cond_5

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v2, :cond_4

    sub-int v5, v2, v1

    sub-int/2addr v5, v6

    aget-object v5, v4, v5

    aget-object v7, p1, v0

    aget v7, v7, v1

    aput v7, v5, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    nop

    :goto_6
    return-object v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private searchNeighborBlock(Ljava/util/ArrayList;[[IIII)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Point;",
            ">;[[IIII)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    iget-object v0, v6, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->mCheckArray:[[I

    aget-object v1, v0, p4

    aget v1, v1, p3

    const/4 v8, 0x1

    if-ne v1, v8, :cond_0

    return-void

    :cond_0
    aget-object v0, v0, p4

    aput v8, v0, p3

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    const/4 v0, 0x4

    if-ge v9, v0, :cond_6

    add-int v1, p5, v9

    rem-int/lit8 v10, v1, 0x4

    iget-object v1, v6, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->EDGE_Y:[I

    aget v1, v1, v10

    add-int v11, p4, v1

    iget-object v1, v6, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->EDGE_X:[I

    aget v1, v1, v10

    add-int v12, p3, v1

    iget-object v1, v6, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->SEARCH_X:[I

    aget v1, v1, v10

    add-int v13, p3, v1

    iget-object v1, v6, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->SEARCH_Y:[I

    aget v1, v1, v10

    add-int v14, p4, v1

    aget-object v1, v7, p4

    aget v1, v1, p3

    if-ne v1, v8, :cond_4

    const/4 v1, 0x0

    if-ltz v14, :cond_2

    if-ltz v13, :cond_2

    array-length v2, v7

    if-ge v14, v2, :cond_2

    aget-object v2, v7, v1

    array-length v2, v2

    if-ge v13, v2, :cond_2

    aget-object v2, v7, v14

    aget v2, v2, v13

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v15, p1

    goto :goto_2

    :cond_2
    :goto_1
    if-ltz v14, :cond_3

    if-lez v13, :cond_3

    array-length v0, v7

    if-ge v14, v0, :cond_3

    aget-object v0, v7, v1

    array-length v0, v0

    if-ge v13, v0, :cond_3

    iget-object v0, v6, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->mCheckArray:[[I

    aget-object v0, v0, v14

    aput v8, v0, v13

    :cond_3
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v12, v11}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v15, p1

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    move-object/from16 v15, p1

    :goto_2
    iget-object v1, v6, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->mCheckArray:[[I

    aget-object v1, v1, v14

    aget v1, v1, v13

    if-ne v1, v8, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v10, -0x1

    add-int/2addr v1, v0

    rem-int/lit8 v5, v1, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v13

    move v4, v14

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->searchNeighborBlock(Ljava/util/ArrayList;[[IIII)V

    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_6
    move-object/from16 v15, p1

    return-void
.end method


# virtual methods
.method setClipOutPath(Landroid/graphics/Canvas;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->mEffectPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->mEffectPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    :cond_0
    return-void
.end method

.method setScreenSize(II)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->mWidth:I

    iput p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->mHeight:I

    return-void
.end method

.method declared-synchronized updateTouchMapFromFile()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->mWidth:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->mHeight:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->mTouchMapReader:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->readTouchMatrix(Ljava/lang/String;)[[I

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->getDisplayRotation()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->getRotationMap([[II)[[I

    move-result-object v1

    move-object v0, v1

    invoke-direct {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->getOuterLine([[I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->calculateClipOutPath(Ljava/util/ArrayList;)Landroid/graphics/Path;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->mEffectPath:Landroid/graphics/Path;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
