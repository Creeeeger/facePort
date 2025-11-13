.class public final Landroidx/compose/animation/core/ArcSpline;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

.field public final isExtrapolate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/animation/core/ArcSpline$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/animation/core/ArcSpline$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>([I[F[[F)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/compose/animation/core/ArcSpline;->isExtrapolate:Z

    array-length v3, v1

    sub-int/2addr v3, v2

    new-array v4, v3, [[Landroidx/compose/animation/core/ArcSpline$Arc;

    const/4 v5, 0x0

    move v7, v2

    move v8, v7

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_5

    aget v9, p1, v6

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-eqz v9, :cond_0

    if-eq v9, v2, :cond_3

    if-eq v9, v11, :cond_2

    if-eq v9, v10, :cond_1

    const/4 v10, 0x4

    if-eq v9, v10, :cond_0

    const/4 v10, 0x5

    if-eq v9, v10, :cond_0

    goto :goto_3

    :cond_0
    move v8, v10

    goto :goto_3

    :cond_1
    if-ne v7, v2, :cond_3

    goto :goto_2

    :goto_1
    move v8, v7

    goto :goto_3

    :cond_2
    :goto_2
    move v7, v11

    goto :goto_1

    :cond_3
    move v7, v2

    goto :goto_1

    :goto_3
    aget-object v9, p3, v6

    array-length v10, v9

    div-int/2addr v10, v11

    array-length v9, v9

    rem-int/2addr v9, v11

    add-int/2addr v9, v10

    new-array v10, v9, [Landroidx/compose/animation/core/ArcSpline$Arc;

    move v11, v5

    :goto_4
    if-ge v11, v9, :cond_4

    mul-int/lit8 v12, v11, 0x2

    new-instance v20, Landroidx/compose/animation/core/ArcSpline$Arc;

    aget v14, v1, v6

    add-int/lit8 v13, v6, 0x1

    aget v15, v1, v13

    aget-object v16, p3, v6

    aget v17, v16, v12

    add-int/lit8 v18, v12, 0x1

    aget v19, v16, v18

    aget-object v13, p3, v13

    aget v21, v13, v12

    aget v22, v13, v18

    move-object/from16 v12, v20

    move v13, v8

    move/from16 v16, v17

    move/from16 v17, v19

    move/from16 v18, v21

    move/from16 v19, v22

    invoke-direct/range {v12 .. v19}, Landroidx/compose/animation/core/ArcSpline$Arc;-><init>(IFFFFFF)V

    aput-object v20, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_4
    aput-object v10, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    iput-object v4, v0, Landroidx/compose/animation/core/ArcSpline;->arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    return-void
.end method
