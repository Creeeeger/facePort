.class public final Landroidx/compose/ui/focus/FocusChangedNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/compose/ui/focus/FocusEventModifierNode;


# instance fields
.field public focusState:Landroidx/compose/ui/focus/FocusStateImpl;

.field public onFocusChanged:Lkotlin/jvm/functions/Function1;


# virtual methods
.method public final onFocusEvent(Landroidx/compose/ui/focus/FocusStateImpl;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusChangedNode;->focusState:Landroidx/compose/ui/focus/FocusStateImpl;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusChangedNode;->focusState:Landroidx/compose/ui/focus/FocusStateImpl;

    iget-object p0, p0, Landroidx/compose/ui/focus/FocusChangedNode;->onFocusChanged:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
