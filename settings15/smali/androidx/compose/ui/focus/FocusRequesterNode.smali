.class public final Landroidx/compose/ui/focus/FocusRequesterNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/compose/ui/focus/FocusRequesterModifierNode;


# instance fields
.field public focusRequester:Landroidx/compose/ui/focus/FocusRequester;


# virtual methods
.method public final onAttach()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusRequesterNode;->focusRequester:Landroidx/compose/ui/focus/FocusRequester;

    iget-object v0, v0, Landroidx/compose/ui/focus/FocusRequester;->focusRequesterNodes:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public final onDetach()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusRequesterNode;->focusRequester:Landroidx/compose/ui/focus/FocusRequester;

    iget-object v0, v0, Landroidx/compose/ui/focus/FocusRequester;->focusRequesterNodes:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    return-void
.end method
