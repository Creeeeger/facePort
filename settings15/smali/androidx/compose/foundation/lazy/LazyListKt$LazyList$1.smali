.class final Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;
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

.field final synthetic $beyondBoundsItemCount:I

.field final synthetic $content:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field final synthetic $flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

.field final synthetic $horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

.field final synthetic $horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field final synthetic $isVertical:Z

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $reverseLayout:Z

.field final synthetic $state:Landroidx/compose/foundation/lazy/LazyListState;

.field final synthetic $userScrollEnabled:Z

.field final synthetic $verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

.field final synthetic $verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZILandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;III)V
    .locals 2

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$modifier:Landroidx/compose/ui/Modifier;

    move-object v1, p2

    iput-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    move-object v1, p3

    iput-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    move v1, p4

    iput-boolean v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$reverseLayout:Z

    move v1, p5

    iput-boolean v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$isVertical:Z

    move-object v1, p6

    iput-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    move v1, p7

    iput-boolean v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$userScrollEnabled:Z

    move v1, p8

    iput v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$beyondBoundsItemCount:I

    move-object v1, p9

    iput-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    move-object v1, p10

    iput-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-object v1, p11

    iput-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    move-object v1, p12

    iput-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-object v1, p13

    iput-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$content:Lkotlin/jvm/functions/Function1;

    move/from16 v1, p14

    iput v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$$changed:I

    move/from16 v1, p15

    iput v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$$changed1:I

    move/from16 v1, p16

    iput v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$$default:I

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    check-cast v14, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v2, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v3, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    iget-boolean v4, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$reverseLayout:Z

    iget-boolean v5, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$isVertical:Z

    iget-object v6, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    iget-boolean v7, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$userScrollEnabled:Z

    iget v8, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$beyondBoundsItemCount:I

    iget-object v9, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    iget-object v10, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iget-object v11, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    iget-object v12, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iget-object v13, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$content:Lkotlin/jvm/functions/Function1;

    iget v15, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$$changed:I

    or-int/lit8 v15, v15, 0x1

    invoke-static {v15}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v15

    move-object/from16 p1, v1

    iget v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$$changed1:I

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v16

    iget v0, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$$default:I

    move/from16 v17, v0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v17}, Landroidx/compose/foundation/lazy/LazyListKt;->LazyList(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZILandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
