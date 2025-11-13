.class final Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldImpl$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $$changed1:I

.field final synthetic $$default:I

.field final synthetic $bottomBar:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $containerColor:J

.field final synthetic $content:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3;"
        }
    .end annotation
.end field

.field final synthetic $contentColor:J

.field final synthetic $contentWindowInsets:Landroidx/compose/foundation/layout/WindowInsets;

.field final synthetic $floatingActionButton:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $floatingActionButtonPosition:I

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $scrollBehavior:Lcom/samsung/sesl/compose/component/SeslAppBarScrollBehavior;

.field final synthetic $snackbarHost:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $topBar:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lcom/samsung/sesl/compose/component/SeslAppBarScrollBehavior;Lkotlin/jvm/functions/Function3;III)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function2;",
            "Lkotlin/jvm/functions/Function2;",
            "Lkotlin/jvm/functions/Function2;",
            "Lkotlin/jvm/functions/Function2;",
            "IJJ",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "Lcom/samsung/sesl/compose/component/SeslAppBarScrollBehavior;",
            "Lkotlin/jvm/functions/Function3;",
            "III)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldImpl$2;->$modifier:Landroidx/compose/ui/Modifier;

    move-object v1, p2

    iput-object v1, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldImpl$2;->$topBar:Lkotlin/jvm/functions/Function2;

    move-object v1, p3

    iput-object v1, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldImpl$2;->$bottomBar:Lkotlin/jvm/functions/Function2;

    move-object v1, p4

    iput-object v1, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldImpl$2;->$snackbarHost:Lkotlin/jvm/functions/Function2;

    move-object v1, p5

    iput-object v1, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldImpl$2;->$floatingActionButton:Lkotlin/jvm/functions/Function2;

    move v1, p6

    iput v1, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldImpl$2;->$floatingActionButtonPosition:I

    move-wide v1, p7

    iput-wide v1, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldImpl$2;->$containerColor:J

    move-wide v1, p9

    iput-wide v1, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldImpl$2;->$contentColor:J

    move-object v1, p11

    iput-object v1, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldImpl$2;->$contentWindowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldImpl$2;->$content:Lkotlin/jvm/functions/Function3;

    move/from16 v1, p14

    iput v1, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldImpl$2;->$$changed:I

    move/from16 v1, p15

    iput v1, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldImpl$2;->$$changed1:I

    move/from16 v1, p16

    iput v1, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldImpl$2;->$$default:I

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    iget-object v1, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldImpl$2;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v2, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldImpl$2;->$topBar:Lkotlin/jvm/functions/Function2;

    iget-object v3, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldImpl$2;->$bottomBar:Lkotlin/jvm/functions/Function2;

    iget-object v4, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldImpl$2;->$snackbarHost:Lkotlin/jvm/functions/Function2;

    iget-object v5, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldImpl$2;->$floatingActionButton:Lkotlin/jvm/functions/Function2;

    iget v6, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldImpl$2;->$floatingActionButtonPosition:I

    iget-wide v7, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldImpl$2;->$containerColor:J

    iget-wide v9, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldImpl$2;->$contentColor:J

    iget-object v11, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldImpl$2;->$contentWindowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object v13, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldImpl$2;->$content:Lkotlin/jvm/functions/Function3;

    iget v14, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldImpl$2;->$$changed:I

    or-int/lit8 v14, v14, 0x1

    invoke-static {v14}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v14

    iget v15, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldImpl$2;->$$changed1:I

    invoke-static {v15}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v15

    iget v0, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldImpl$2;->$$default:I

    move/from16 v16, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-wide v6, v7

    move-wide v8, v9

    move-object v10, v11

    move-object v11, v13

    move v13, v14

    move v14, v15

    move/from16 v15, v16

    invoke-static/range {v0 .. v15}, Lcom/samsung/sesl/compose/component/ScaffoldKt;->SeslScaffoldImpl-uuOAFiU(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
