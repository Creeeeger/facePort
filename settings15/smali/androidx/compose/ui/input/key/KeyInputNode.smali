.class public final Landroidx/compose/ui/input/key/KeyInputNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/compose/ui/input/key/KeyInputModifierNode;


# instance fields
.field public onEvent:Lkotlin/jvm/functions/Function1;

.field public onPreEvent:Lkotlin/jvm/functions/Function1;


# virtual methods
.method public final onKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object p0, p0, Landroidx/compose/ui/input/key/KeyInputNode;->onEvent:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    new-instance v0, Landroidx/compose/ui/input/key/KeyEvent;

    invoke-direct {v0, p1}, Landroidx/compose/ui/input/key/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onPreKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object p0, p0, Landroidx/compose/ui/input/key/KeyInputNode;->onPreEvent:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    new-instance v0, Landroidx/compose/ui/input/key/KeyEvent;

    invoke-direct {v0, p1}, Landroidx/compose/ui/input/key/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
