.class public final Landroidx/compose/animation/core/ArcSpline;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;


# direct methods
.method public constructor <init>([I[F[[F)V
    .locals 22

    move-object/from16 v0, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    new-array v3, v1, [[Landroidx/compose/animation/core/ArcSpline$Arc;

    const/4 v4, 0x0

    move v6, v2

    move v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_5

    aget v8, p1, v5

    const/4 v9, 0x2

    const/4 v10, 0x3

    if-eqz v8, :cond_0

    if-eq v8, v2, :cond_3

    if-eq v8, v9, :cond_2

    if-eq v8, v10, :cond_1

    const/4 v10, 0x4

    if-eq v8, v10, :cond_0

    const/4 v10, 0x5

    if-eq v8, v10, :cond_0

    goto :goto_3

    :cond_0
    move v7, v10

    goto :goto_3

    :cond_1
    if-ne v6, v2, :cond_3

    goto :goto_2

    :goto_1
    move v7, v6

    goto :goto_3

    :cond_2
    :goto_2
    move v6, v9

    goto :goto_1

    :cond_3
    move v6, v2

    goto :goto_1

    :goto_3
    aget-object v8, p3, v5

    array-length v10, v8

    div-int/2addr v10, v9

    array-length v8, v8

    rem-int/2addr v8, v9

    add-int/2addr v8, v10

    new-array v9, v8, [Landroidx/compose/animation/core/ArcSpline$Arc;

    move v15, v4

    :goto_4
    if-ge v15, v8, :cond_4

    mul-int/lit8 v10, v15, 0x2

    new-instance v18, Landroidx/compose/animation/core/ArcSpline$Arc;

    aget v12, v0, v5

    add-int/lit8 v11, v5, 0x1

    aget v13, v0, v11

    aget-object v14, p3, v5

    aget v16, v14, v10

    add-int/lit8 v17, v10, 0x1

    aget v19, v14, v17

    aget-object v11, p3, v11

    aget v20, v11, v10

    aget v17, v11, v17

    move-object/from16 v10, v18

    move v11, v7

    move/from16 v14, v16

    move/from16 v21, v15

    move/from16 v15, v19

    move/from16 v16, v20

    invoke-direct/range {v10 .. v17}, Landroidx/compose/animation/core/ArcSpline$Arc;-><init>(IFFFFFF)V

    aput-object v18, v9, v21

    add-int/lit8 v15, v21, 0x1

    goto :goto_4

    :cond_4
    aput-object v9, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    move-object/from16 v5, p0

    iput-object v3, v5, Landroidx/compose/animation/core/ArcSpline;->arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    return-void
.end method
