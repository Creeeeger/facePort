.class final Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1;
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
.field final synthetic $bottomBar:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $content:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3;"
        }
    .end annotation
.end field

.field final synthetic $contentWindowInsets:Landroidx/compose/foundation/layout/WindowInsets;

.field final synthetic $fab:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $fabPosition:I

.field final synthetic $snackbar:Lkotlin/jvm/functions/Function2;
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
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ILandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2;",
            "Lkotlin/jvm/functions/Function2;",
            "Lkotlin/jvm/functions/Function2;",
            "I",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "Lkotlin/jvm/functions/Function2;",
            "Lkotlin/jvm/functions/Function3;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1;->$topBar:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1;->$snackbar:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1;->$fab:Lkotlin/jvm/functions/Function2;

    iput p4, p0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1;->$fabPosition:I

    iput-object p5, p0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1;->$contentWindowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p6, p0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1;->$bottomBar:Lkotlin/jvm/functions/Function2;

    iput-object p7, p0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1;->$content:Lkotlin/jvm/functions/Function3;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    check-cast v13, Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    move-object/from16 v1, p2

    check-cast v1, Landroidx/compose/ui/unit/Constraints;

    iget-wide v2, v1, Landroidx/compose/ui/unit/Constraints;->value:J

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v14

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v15

    const/4 v5, 0x0

    const/16 v8, 0xa

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIII)J

    move-result-wide v8

    new-instance v12, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;

    iget-object v2, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1;->$topBar:Lkotlin/jvm/functions/Function2;

    iget-object v3, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1;->$snackbar:Lkotlin/jvm/functions/Function2;

    iget-object v4, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1;->$fab:Lkotlin/jvm/functions/Function2;

    iget v5, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1;->$fabPosition:I

    iget-object v7, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1;->$contentWindowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object v10, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1;->$bottomBar:Lkotlin/jvm/functions/Function2;

    iget-object v11, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1;->$content:Lkotlin/jvm/functions/Function3;

    move-object v0, v12

    move-object v1, v13

    move v6, v14

    move-object/from16 v16, v12

    move v12, v15

    invoke-direct/range {v0 .. v12}, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;-><init>(Landroidx/compose/ui/layout/SubcomposeMeasureScope;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IILandroidx/compose/foundation/layout/WindowInsets;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;I)V

    move-object/from16 v0, v16

    invoke-static {v13, v14, v15, v0}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method
