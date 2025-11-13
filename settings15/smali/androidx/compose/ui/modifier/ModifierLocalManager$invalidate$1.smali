.class final Landroidx/compose/ui/modifier/ModifierLocalManager$invalidate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/ui/modifier/ModifierLocalManager;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/modifier/ModifierLocalManager;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/modifier/ModifierLocalManager$invalidate$1;->this$0:Landroidx/compose/ui/modifier/ModifierLocalManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    iget-object p0, p0, Landroidx/compose/ui/modifier/ModifierLocalManager$invalidate$1;->this$0:Landroidx/compose/ui/modifier/ModifierLocalManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->invalidated:Z

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->removed:Landroidx/compose/runtime/collection/MutableVector;

    iget v3, v2, Landroidx/compose/runtime/collection/MutableVector;->size:I

    iget-object v4, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->removedLocal:Landroidx/compose/runtime/collection/MutableVector;

    if-lez v3, :cond_2

    iget-object v5, v2, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    move v6, v0

    :cond_0
    aget-object v7, v5, v6

    check-cast v7, Landroidx/compose/ui/node/LayoutNode;

    iget-object v8, v4, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object v8, v8, v6

    check-cast v8, Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    iget-object v7, v7, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v7, v7, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v9, v7, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v9, :cond_1

    invoke-static {v7, v8, v1}, Landroidx/compose/ui/modifier/ModifierLocalManager;->invalidateConsumersOfNodeForKey(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/modifier/ProvidableModifierLocal;Ljava/util/Set;)V

    :cond_1
    add-int/lit8 v6, v6, 0x1

    if-lt v6, v3, :cond_0

    :cond_2
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    iget-object v2, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->inserted:Landroidx/compose/runtime/collection/MutableVector;

    iget v3, v2, Landroidx/compose/runtime/collection/MutableVector;->size:I

    iget-object p0, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->insertedLocal:Landroidx/compose/runtime/collection/MutableVector;

    if-lez v3, :cond_5

    iget-object v4, v2, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    :cond_3
    aget-object v5, v4, v0

    check-cast v5, Landroidx/compose/ui/node/BackwardsCompatNode;

    iget-object v6, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object v6, v6, v0

    check-cast v6, Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    iget-boolean v7, v5, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v7, :cond_4

    invoke-static {v5, v6, v1}, Landroidx/compose/ui/modifier/ModifierLocalManager;->invalidateConsumersOfNodeForKey(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/modifier/ProvidableModifierLocal;Ljava/util/Set;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v3, :cond_3

    :cond_5
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/node/BackwardsCompatNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/BackwardsCompatNode;->updateModifierLocalConsumer()V

    goto :goto_0

    :cond_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
