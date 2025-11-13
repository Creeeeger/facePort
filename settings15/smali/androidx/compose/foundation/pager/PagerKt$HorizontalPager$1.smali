.class final Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $$changed1:I

.field final synthetic $$default:I

.field final synthetic $beyondViewportPageCount:I

.field final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field final synthetic $flingBehavior:Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

.field final synthetic $key:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $pageContent:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4;"
        }
    .end annotation
.end field

.field final synthetic $pageNestedScrollConnection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

.field final synthetic $pageSize:Landroidx/compose/foundation/pager/PageSize;

.field final synthetic $pageSpacing:F

.field final synthetic $reverseLayout:Z

.field final synthetic $snapPosition:Landroidx/compose/foundation/gestures/snapping/SnapPosition;

.field final synthetic $state:Landroidx/compose/foundation/pager/PagerState;

.field final synthetic $userScrollEnabled:Z

.field final synthetic $verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Lkotlin/jvm/functions/Function4;III)V
    .locals 2

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$1;->$state:Landroidx/compose/foundation/pager/PagerState;

    move-object v1, p2

    iput-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$1;->$modifier:Landroidx/compose/ui/Modifier;

    move-object v1, p3

    iput-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    move-object v1, p4

    iput-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$1;->$pageSize:Landroidx/compose/foundation/pager/PageSize;

    move v1, p5

    iput v1, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$1;->$beyondViewportPageCount:I

    move v1, p6

    iput v1, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$1;->$pageSpacing:F

    move-object v1, p7

    iput-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$1;->$verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    move-object v1, p8

    iput-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$1;->$flingBehavior:Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

    move v1, p9

    iput-boolean v1, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$1;->$userScrollEnabled:Z

    move v1, p10

    iput-boolean v1, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$1;->$reverseLayout:Z

    move-object v1, p11

    iput-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$1;->$key:Lkotlin/jvm/functions/Function1;

    move-object v1, p12

    iput-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$1;->$pageNestedScrollConnection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-object v1, p13

    iput-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$1;->$snapPosition:Landroidx/compose/foundation/gestures/snapping/SnapPosition;

    move-object/from16 v1, p14

    iput-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$1;->$pageContent:Lkotlin/jvm/functions/Function4;

    move/from16 v1, p15

    iput v1, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$1;->$$changed:I

    move/from16 v1, p16

    iput v1, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$1;->$$changed1:I

    move/from16 v1, p17

    iput v1, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$1;->$$default:I

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    check-cast v15, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    iget-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$1;->$state:Landroidx/compose/foundation/pager/PagerState;

    iget-object v2, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$1;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v3, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    iget-object v4, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$1;->$pageSize:Landroidx/compose/foundation/pager/PageSize;

    iget v5, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$1;->$beyondViewportPageCount:I

    iget v6, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$1;->$pageSpacing:F

    iget-object v7, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$1;->$verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    iget-object v8, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$1;->$flingBehavior:Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

    iget-boolean v9, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$1;->$userScrollEnabled:Z

    iget-boolean v10, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$1;->$reverseLayout:Z

    iget-object v11, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$1;->$key:Lkotlin/jvm/functions/Function1;

    iget-object v12, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$1;->$pageNestedScrollConnection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    iget-object v13, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$1;->$snapPosition:Landroidx/compose/foundation/gestures/snapping/SnapPosition;

    iget-object v14, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$1;->$pageContent:Lkotlin/jvm/functions/Function4;

    move-object/from16 p1, v1

    iget v1, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$1;->$$changed:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v16

    iget v1, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$1;->$$changed1:I

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v17

    iget v0, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$1;->$$default:I

    move/from16 v18, v0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v18}, Landroidx/compose/foundation/pager/PagerKt;->HorizontalPager-oI3XNZo(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
