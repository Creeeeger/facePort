.class public final Landroidx/compose/ui/node/UiApplier;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/compose/runtime/Applier;


# instance fields
.field public current:Ljava/lang/Object;

.field public final root:Ljava/lang/Object;

.field public final stack:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/node/UiApplier;->root:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/node/UiApplier;->stack:Ljava/util/List;

    iput-object p1, p0, Landroidx/compose/ui/node/UiApplier;->current:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/UiApplier;->stack:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/compose/ui/node/UiApplier;->root:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/compose/ui/node/UiApplier;->current:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/compose/ui/node/UiApplier;->root:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->removeAll$ui_release()V

    return-void
.end method

.method public final down(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/UiApplier;->stack:Ljava/util/List;

    iget-object v1, p0, Landroidx/compose/ui/node/UiApplier;->current:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Landroidx/compose/ui/node/UiApplier;->current:Ljava/lang/Object;

    return-void
.end method

.method public final getCurrent()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/UiApplier;->current:Ljava/lang/Object;

    return-object p0
.end method

.method public final insertBottomUp(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Landroidx/compose/ui/node/LayoutNode;

    iget-object p0, p0, Landroidx/compose/ui/node/UiApplier;->current:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/LayoutNode;->insertAt$ui_release(ILandroidx/compose/ui/node/LayoutNode;)V

    return-void
.end method

.method public final bridge synthetic insertTopDown(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Landroidx/compose/ui/node/LayoutNode;

    return-void
.end method

.method public final move(III)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/UiApplier;->current:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/node/LayoutNode;->move$ui_release(III)V

    return-void
.end method

.method public final onEndChanges()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/UiApplier;->root:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/node/LayoutNode;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    if-eqz p0, :cond_0

    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->onEndApplyChanges()V

    :cond_0
    return-void
.end method

.method public final remove(II)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/UiApplier;->current:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/LayoutNode;->removeAt$ui_release(II)V

    return-void
.end method

.method public final up()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/UiApplier;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/node/UiApplier;->stack:Ljava/util/List;

    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/node/UiApplier;->current:Ljava/lang/Object;

    return-void

    :cond_0
    const-string p0, "empty stack"

    invoke-static {p0}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
