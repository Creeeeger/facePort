.class public final Lcom/android/systemui/statusbar/events/ViewState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final contentDescription:Ljava/lang/String;

.field public final cornerIndex:I

.field public final designatedCorner:Landroid/view/View;

.field public final isDotBlocked:Z

.field public final landscapeRect:Landroid/graphics/Rect;

.field public final layoutRtl:Z

.field public final paddingTop:I

.field public final portraitRect:Landroid/graphics/Rect;

.field public final qsExpanded:Z

.field public final rotation:I

.field public final seascapeRect:Landroid/graphics/Rect;

.field public final shadeExpanded:Z

.field public final stableInsetLeft:I

.field public final stableInsetRight:I

.field public final statusBarPaddingLeft:I

.field public final statusBarPaddingRight:I

.field public final systemPrivacyEventIsActive:Z

.field public final upsideDownRect:Landroid/graphics/Rect;

.field public final viewInitialized:Z


# direct methods
.method public constructor <init>()V
    .locals 22

    move-object/from16 v0, p0

    const v20, 0x7ffff

    const/16 v21, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v0 .. v21}, Lcom/android/systemui/statusbar/events/ViewState;-><init>(ZZZZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIILandroid/view/View;Ljava/lang/String;IIIIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZZZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIILandroid/view/View;Ljava/lang/String;IIIIZ)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/events/ViewState;->viewInitialized:Z

    move v1, p2

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/events/ViewState;->systemPrivacyEventIsActive:Z

    move v1, p3

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/events/ViewState;->shadeExpanded:Z

    move v1, p4

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/events/ViewState;->qsExpanded:Z

    move-object v1, p5

    iput-object v1, v0, Lcom/android/systemui/statusbar/events/ViewState;->portraitRect:Landroid/graphics/Rect;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/statusbar/events/ViewState;->landscapeRect:Landroid/graphics/Rect;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/systemui/statusbar/events/ViewState;->upsideDownRect:Landroid/graphics/Rect;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/systemui/statusbar/events/ViewState;->seascapeRect:Landroid/graphics/Rect;

    move v1, p9

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/events/ViewState;->layoutRtl:Z

    move v1, p10

    iput v1, v0, Lcom/android/systemui/statusbar/events/ViewState;->rotation:I

    move v1, p11

    iput v1, v0, Lcom/android/systemui/statusbar/events/ViewState;->paddingTop:I

    move v1, p12

    iput v1, v0, Lcom/android/systemui/statusbar/events/ViewState;->cornerIndex:I

    move-object v1, p13

    iput-object v1, v0, Lcom/android/systemui/statusbar/events/ViewState;->designatedCorner:Landroid/view/View;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/statusbar/events/ViewState;->contentDescription:Ljava/lang/String;

    move/from16 v1, p15

    iput v1, v0, Lcom/android/systemui/statusbar/events/ViewState;->statusBarPaddingLeft:I

    move/from16 v1, p16

    iput v1, v0, Lcom/android/systemui/statusbar/events/ViewState;->statusBarPaddingRight:I

    move/from16 v1, p17

    iput v1, v0, Lcom/android/systemui/statusbar/events/ViewState;->stableInsetLeft:I

    move/from16 v1, p18

    iput v1, v0, Lcom/android/systemui/statusbar/events/ViewState;->stableInsetRight:I

    move/from16 v1, p19

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/events/ViewState;->isDotBlocked:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZZZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIILandroid/view/View;Ljava/lang/String;IIIIZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 20

    move/from16 v0, p20

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    move-object v6, v7

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    move-object v8, v7

    goto :goto_5

    :cond_5
    move-object/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    move-object v9, v7

    goto :goto_6

    :cond_6
    move-object/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    move-object v10, v7

    goto :goto_7

    :cond_7
    move-object/from16 v10, p8

    :goto_7
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_8

    const/4 v11, 0x0

    goto :goto_8

    :cond_8
    move/from16 v11, p9

    :goto_8
    and-int/lit16 v12, v0, 0x200

    if-eqz v12, :cond_9

    const/4 v12, 0x0

    goto :goto_9

    :cond_9
    move/from16 v12, p10

    :goto_9
    and-int/lit16 v13, v0, 0x400

    if-eqz v13, :cond_a

    const/4 v13, 0x0

    goto :goto_a

    :cond_a
    move/from16 v13, p11

    :goto_a
    and-int/lit16 v14, v0, 0x800

    if-eqz v14, :cond_b

    const/4 v14, -0x1

    goto :goto_b

    :cond_b
    move/from16 v14, p12

    :goto_b
    and-int/lit16 v15, v0, 0x1000

    if-eqz v15, :cond_c

    move-object v15, v7

    goto :goto_c

    :cond_c
    move-object/from16 v15, p13

    :goto_c
    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_d

    goto :goto_d

    :cond_d
    move-object/from16 v7, p14

    :goto_d
    and-int/lit16 v2, v0, 0x4000

    const/16 v16, 0xa

    if-eqz v2, :cond_e

    move/from16 v2, v16

    goto :goto_e

    :cond_e
    move/from16 v2, p15

    :goto_e
    const v17, 0x8000

    and-int v17, v0, v17

    if-eqz v17, :cond_f

    goto :goto_f

    :cond_f
    move/from16 v16, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_10

    const/16 v17, 0x0

    goto :goto_10

    :cond_10
    move/from16 v17, p17

    :goto_10
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_11

    const/16 v18, 0x0

    goto :goto_11

    :cond_11
    move/from16 v18, p18

    :goto_11
    const/high16 v19, 0x40000

    and-int v0, v0, v19

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    goto :goto_12

    :cond_12
    move/from16 v0, p19

    :goto_12
    move/from16 p1, v1

    move/from16 p2, v3

    move/from16 p3, v4

    move/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v8

    move-object/from16 p7, v9

    move-object/from16 p8, v10

    move/from16 p9, v11

    move/from16 p10, v12

    move/from16 p11, v13

    move/from16 p12, v14

    move-object/from16 p13, v15

    move-object/from16 p14, v7

    move/from16 p15, v2

    move/from16 p16, v16

    move/from16 p17, v17

    move/from16 p18, v18

    move/from16 p19, v0

    invoke-direct/range {p0 .. p19}, Lcom/android/systemui/statusbar/events/ViewState;-><init>(ZZZZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIILandroid/view/View;Ljava/lang/String;IIIIZ)V

    return-void
.end method

.method public static copy$default(Lcom/android/systemui/statusbar/events/ViewState;ZZZZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIILandroid/view/View;Ljava/lang/String;IIIIZI)Lcom/android/systemui/statusbar/events/ViewState;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p20

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/events/ViewState;->viewInitialized:Z

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/events/ViewState;->systemPrivacyEventIsActive:Z

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/events/ViewState;->shadeExpanded:Z

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/events/ViewState;->qsExpanded:Z

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/android/systemui/statusbar/events/ViewState;->portraitRect:Landroid/graphics/Rect;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/android/systemui/statusbar/events/ViewState;->landscapeRect:Landroid/graphics/Rect;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/android/systemui/statusbar/events/ViewState;->upsideDownRect:Landroid/graphics/Rect;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/android/systemui/statusbar/events/ViewState;->seascapeRect:Landroid/graphics/Rect;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-boolean v10, v0, Lcom/android/systemui/statusbar/events/ViewState;->layoutRtl:Z

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget v11, v0, Lcom/android/systemui/statusbar/events/ViewState;->rotation:I

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget v12, v0, Lcom/android/systemui/statusbar/events/ViewState;->paddingTop:I

    goto :goto_a

    :cond_a
    move/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget v13, v0, Lcom/android/systemui/statusbar/events/ViewState;->cornerIndex:I

    goto :goto_b

    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/android/systemui/statusbar/events/ViewState;->designatedCorner:Landroid/view/View;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/android/systemui/statusbar/events/ViewState;->contentDescription:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget v15, v0, Lcom/android/systemui/statusbar/events/ViewState;->statusBarPaddingLeft:I

    goto :goto_e

    :cond_e
    move/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move/from16 p15, v15

    if-eqz v16, :cond_f

    iget v15, v0, Lcom/android/systemui/statusbar/events/ViewState;->statusBarPaddingRight:I

    goto :goto_f

    :cond_f
    move/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move/from16 p16, v15

    if-eqz v16, :cond_10

    iget v15, v0, Lcom/android/systemui/statusbar/events/ViewState;->stableInsetLeft:I

    goto :goto_10

    :cond_10
    move/from16 v15, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move/from16 p17, v15

    if-eqz v16, :cond_11

    iget v15, v0, Lcom/android/systemui/statusbar/events/ViewState;->stableInsetRight:I

    goto :goto_11

    :cond_11
    move/from16 v15, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v1, v1, v16

    if-eqz v1, :cond_12

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/events/ViewState;->isDotBlocked:Z

    goto :goto_12

    :cond_12
    move/from16 v1, p19

    :goto_12
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/statusbar/events/ViewState;

    move-object/from16 p0, v0

    move/from16 p1, v2

    move/from16 p2, v3

    move/from16 p3, v4

    move/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v12

    move/from16 p12, v13

    move-object/from16 p13, v14

    move/from16 p18, v15

    move/from16 p19, v1

    invoke-direct/range {p0 .. p19}, Lcom/android/systemui/statusbar/events/ViewState;-><init>(ZZZZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIILandroid/view/View;Ljava/lang/String;IIIIZ)V

    return-object v0
.end method


# virtual methods
.method public final contentRectForRotation(I)Landroid/graphics/Rect;
    .locals 2

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/ViewState;->seascapeRect:Landroid/graphics/Rect;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "not a rotation ("

    const-string v1, ")"

    invoke-static {p1, v0, v1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/ViewState;->upsideDownRect:Landroid/graphics/Rect;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/ViewState;->landscapeRect:Landroid/graphics/Rect;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/ViewState;->portraitRect:Landroid/graphics/Rect;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/events/ViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/events/ViewState;

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/events/ViewState;->viewInitialized:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/events/ViewState;->viewInitialized:Z

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/events/ViewState;->systemPrivacyEventIsActive:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/events/ViewState;->systemPrivacyEventIsActive:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/events/ViewState;->shadeExpanded:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/events/ViewState;->shadeExpanded:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/events/ViewState;->qsExpanded:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/events/ViewState;->qsExpanded:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/events/ViewState;->portraitRect:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/systemui/statusbar/events/ViewState;->portraitRect:Landroid/graphics/Rect;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/events/ViewState;->landscapeRect:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/systemui/statusbar/events/ViewState;->landscapeRect:Landroid/graphics/Rect;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/events/ViewState;->upsideDownRect:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/systemui/statusbar/events/ViewState;->upsideDownRect:Landroid/graphics/Rect;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/events/ViewState;->seascapeRect:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/systemui/statusbar/events/ViewState;->seascapeRect:Landroid/graphics/Rect;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/events/ViewState;->layoutRtl:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/events/ViewState;->layoutRtl:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lcom/android/systemui/statusbar/events/ViewState;->rotation:I

    iget v3, p1, Lcom/android/systemui/statusbar/events/ViewState;->rotation:I

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget v1, p0, Lcom/android/systemui/statusbar/events/ViewState;->paddingTop:I

    iget v3, p1, Lcom/android/systemui/statusbar/events/ViewState;->paddingTop:I

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget v1, p0, Lcom/android/systemui/statusbar/events/ViewState;->cornerIndex:I

    iget v3, p1, Lcom/android/systemui/statusbar/events/ViewState;->cornerIndex:I

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/android/systemui/statusbar/events/ViewState;->designatedCorner:Landroid/view/View;

    iget-object v3, p1, Lcom/android/systemui/statusbar/events/ViewState;->designatedCorner:Landroid/view/View;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/android/systemui/statusbar/events/ViewState;->contentDescription:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/statusbar/events/ViewState;->contentDescription:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget v1, p0, Lcom/android/systemui/statusbar/events/ViewState;->statusBarPaddingLeft:I

    iget v3, p1, Lcom/android/systemui/statusbar/events/ViewState;->statusBarPaddingLeft:I

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    iget v1, p0, Lcom/android/systemui/statusbar/events/ViewState;->statusBarPaddingRight:I

    iget v3, p1, Lcom/android/systemui/statusbar/events/ViewState;->statusBarPaddingRight:I

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget v1, p0, Lcom/android/systemui/statusbar/events/ViewState;->stableInsetLeft:I

    iget v3, p1, Lcom/android/systemui/statusbar/events/ViewState;->stableInsetLeft:I

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget v1, p0, Lcom/android/systemui/statusbar/events/ViewState;->stableInsetRight:I

    iget v3, p1, Lcom/android/systemui/statusbar/events/ViewState;->stableInsetRight:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/events/ViewState;->isDotBlocked:Z

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/events/ViewState;->isDotBlocked:Z

    if-eq p0, p1, :cond_14

    return v2

    :cond_14
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/events/ViewState;->viewInitialized:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/events/ViewState;->systemPrivacyEventIsActive:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/events/ViewState;->shadeExpanded:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/events/ViewState;->qsExpanded:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/events/ViewState;->portraitRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/events/ViewState;->landscapeRect:Landroid/graphics/Rect;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Rect;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/events/ViewState;->upsideDownRect:Landroid/graphics/Rect;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Rect;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/events/ViewState;->seascapeRect:Landroid/graphics/Rect;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Landroid/graphics/Rect;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/events/ViewState;->layoutRtl:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/events/ViewState;->rotation:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/events/ViewState;->paddingTop:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/events/ViewState;->cornerIndex:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/events/ViewState;->designatedCorner:Landroid/view/View;

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/events/ViewState;->contentDescription:Ljava/lang/String;

    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/statusbar/events/ViewState;->statusBarPaddingLeft:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/events/ViewState;->statusBarPaddingRight:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/events/ViewState;->stableInsetLeft:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/events/ViewState;->stableInsetRight:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/events/ViewState;->isDotBlocked:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/ViewState;->portraitRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/ViewState;->landscapeRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/statusbar/events/ViewState;->upsideDownRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/statusbar/events/ViewState;->seascapeRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/statusbar/events/ViewState;->designatedCorner:Landroid/view/View;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ViewState(viewInitialized="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/events/ViewState;->viewInitialized:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", systemPrivacyEventIsActive="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/events/ViewState;->systemPrivacyEventIsActive:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", shadeExpanded="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/events/ViewState;->shadeExpanded:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", qsExpanded="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/events/ViewState;->qsExpanded:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", portraitRect="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", landscapeRect="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", upsideDownRect="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", seascapeRect="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", layoutRtl="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/events/ViewState;->layoutRtl:Z

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", rotation="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/statusbar/events/ViewState;->rotation:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", paddingTop="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/statusbar/events/ViewState;->paddingTop:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", cornerIndex="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/statusbar/events/ViewState;->cornerIndex:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", designatedCorner="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", contentDescription="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/ViewState;->contentDescription:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", statusBarPaddingLeft="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/statusbar/events/ViewState;->statusBarPaddingLeft:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", statusBarPaddingRight="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/statusbar/events/ViewState;->statusBarPaddingRight:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", stableInsetLeft="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/statusbar/events/ViewState;->stableInsetLeft:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", stableInsetRight="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/statusbar/events/ViewState;->stableInsetRight:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isDotBlocked="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/events/ViewState;->isDotBlocked:Z

    const-string v0, ")"

    invoke-static {v5, p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
