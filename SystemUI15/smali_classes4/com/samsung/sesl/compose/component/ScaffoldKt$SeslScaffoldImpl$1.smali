.class final Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldImpl$1;
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

.field final synthetic $floatingActionButton:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $floatingActionButtonPosition:I

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
.method public constructor <init>(ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Lcom/samsung/sesl/compose/component/SeslAppBarScrollBehavior;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function2;",
            "Lkotlin/jvm/functions/Function3;",
            "Lkotlin/jvm/functions/Function2;",
            "Lkotlin/jvm/functions/Function2;",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "Lkotlin/jvm/functions/Function2;",
            "Lcom/samsung/sesl/compose/component/SeslAppBarScrollBehavior;",
            ")V"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldImpl$1;->$floatingActionButtonPosition:I

    iput-object p2, p0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldImpl$1;->$topBar:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldImpl$1;->$content:Lkotlin/jvm/functions/Function3;

    iput-object p4, p0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldImpl$1;->$snackbarHost:Lkotlin/jvm/functions/Function2;

    iput-object p5, p0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldImpl$1;->$floatingActionButton:Lkotlin/jvm/functions/Function2;

    iput-object p6, p0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldImpl$1;->$contentWindowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p7, p0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldImpl$1;->$bottomBar:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    and-int/lit8 p1, p1, 0xb

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    move-object p1, v7

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget v0, p0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldImpl$1;->$floatingActionButtonPosition:I

    iget-object v1, p0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldImpl$1;->$topBar:Lkotlin/jvm/functions/Function2;

    iget-object v2, p0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldImpl$1;->$content:Lkotlin/jvm/functions/Function3;

    iget-object v3, p0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldImpl$1;->$snackbarHost:Lkotlin/jvm/functions/Function2;

    iget-object v4, p0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldImpl$1;->$floatingActionButton:Lkotlin/jvm/functions/Function2;

    iget-object v5, p0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldImpl$1;->$contentWindowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object v6, p0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldImpl$1;->$bottomBar:Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/samsung/sesl/compose/component/ScaffoldKt;->access$SeslScaffoldLayout-p6Yxe3E(ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
