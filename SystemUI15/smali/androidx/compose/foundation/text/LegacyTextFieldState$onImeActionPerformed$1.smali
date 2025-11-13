.class final Landroidx/compose/foundation/text/LegacyTextFieldState$onImeActionPerformed$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/text/LegacyTextFieldState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/text/LegacyTextFieldState;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/LegacyTextFieldState$onImeActionPerformed$1;->this$0:Landroidx/compose/foundation/text/LegacyTextFieldState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Landroidx/compose/ui/text/input/ImeAction;

    iget p1, p1, Landroidx/compose/ui/text/input/ImeAction;->value:I

    iget-object p0, p0, Landroidx/compose/foundation/text/LegacyTextFieldState$onImeActionPerformed$1;->this$0:Landroidx/compose/foundation/text/LegacyTextFieldState;

    iget-object p0, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->keyboardActionRunner:Landroidx/compose/foundation/text/KeyboardActionRunner;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/text/input/ImeAction;->Done:I

    invoke-static {p1, v0}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/compose/foundation/text/KeyboardActionRunner;->keyboardActions:Landroidx/compose/foundation/text/KeyboardActions;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    iget-object v1, v1, Landroidx/compose/foundation/text/KeyboardActions;->onDone:Lkotlin/jvm/functions/Function1;

    goto/16 :goto_7

    :cond_1
    sget v1, Landroidx/compose/ui/text/input/ImeAction;->Go:I

    invoke-static {p1, v1}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/compose/foundation/text/KeyboardActionRunner;->keyboardActions:Landroidx/compose/foundation/text/KeyboardActions;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v3

    :goto_1
    iget-object v1, v1, Landroidx/compose/foundation/text/KeyboardActions;->onGo:Lkotlin/jvm/functions/Function1;

    goto/16 :goto_7

    :cond_3
    sget v1, Landroidx/compose/ui/text/input/ImeAction;->Next:I

    invoke-static {p1, v1}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroidx/compose/foundation/text/KeyboardActionRunner;->keyboardActions:Landroidx/compose/foundation/text/KeyboardActions;

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, v3

    :goto_2
    iget-object v1, v1, Landroidx/compose/foundation/text/KeyboardActions;->onNext:Lkotlin/jvm/functions/Function1;

    goto :goto_7

    :cond_5
    sget v1, Landroidx/compose/ui/text/input/ImeAction;->Previous:I

    invoke-static {p1, v1}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroidx/compose/foundation/text/KeyboardActionRunner;->keyboardActions:Landroidx/compose/foundation/text/KeyboardActions;

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    move-object v1, v3

    :goto_3
    iget-object v1, v1, Landroidx/compose/foundation/text/KeyboardActions;->onPrevious:Lkotlin/jvm/functions/Function1;

    goto :goto_7

    :cond_7
    sget v1, Landroidx/compose/ui/text/input/ImeAction;->Search:I

    invoke-static {p1, v1}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroidx/compose/foundation/text/KeyboardActionRunner;->keyboardActions:Landroidx/compose/foundation/text/KeyboardActions;

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    move-object v1, v3

    :goto_4
    iget-object v1, v1, Landroidx/compose/foundation/text/KeyboardActions;->onSearch:Lkotlin/jvm/functions/Function1;

    goto :goto_7

    :cond_9
    sget v1, Landroidx/compose/ui/text/input/ImeAction;->Send:I

    invoke-static {p1, v1}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroidx/compose/foundation/text/KeyboardActionRunner;->keyboardActions:Landroidx/compose/foundation/text/KeyboardActions;

    if-eqz v1, :cond_a

    goto :goto_5

    :cond_a
    move-object v1, v3

    :goto_5
    iget-object v1, v1, Landroidx/compose/foundation/text/KeyboardActions;->onSend:Lkotlin/jvm/functions/Function1;

    goto :goto_7

    :cond_b
    sget v1, Landroidx/compose/ui/text/input/ImeAction;->Default:I

    invoke-static {p1, v1}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_c

    move v1, v2

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v1

    :goto_6
    if-eqz v1, :cond_17

    move-object v1, v3

    :goto_7
    if-eqz v1, :cond_d

    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_8

    :cond_d
    move-object v1, v3

    :goto_8
    if-nez v1, :cond_16

    sget v1, Landroidx/compose/ui/text/input/ImeAction;->Next:I

    invoke-static {p1, v1}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object p0, p0, Landroidx/compose/foundation/text/KeyboardActionRunner;->focusManager:Landroidx/compose/ui/focus/FocusManager;

    if-eqz p0, :cond_e

    move-object v3, p0

    :cond_e
    sget-object p0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Landroidx/compose/ui/focus/FocusDirection;->Next:I

    check-cast v3, Landroidx/compose/ui/focus/FocusOwnerImpl;

    invoke-virtual {v3, p0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->moveFocus-3ESFkO8(I)Z

    goto :goto_b

    :cond_f
    sget v1, Landroidx/compose/ui/text/input/ImeAction;->Previous:I

    invoke-static {p1, v1}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object p0, p0, Landroidx/compose/foundation/text/KeyboardActionRunner;->focusManager:Landroidx/compose/ui/focus/FocusManager;

    if-eqz p0, :cond_10

    move-object v3, p0

    :cond_10
    sget-object p0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Landroidx/compose/ui/focus/FocusDirection;->Previous:I

    check-cast v3, Landroidx/compose/ui/focus/FocusOwnerImpl;

    invoke-virtual {v3, p0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->moveFocus-3ESFkO8(I)Z

    goto :goto_b

    :cond_11
    invoke-static {p1, v0}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Landroidx/compose/foundation/text/KeyboardActionRunner;->keyboardController:Landroidx/compose/ui/platform/SoftwareKeyboardController;

    if-eqz p0, :cond_16

    check-cast p0, Landroidx/compose/ui/platform/DelegatingSoftwareKeyboardController;

    invoke-virtual {p0}, Landroidx/compose/ui/platform/DelegatingSoftwareKeyboardController;->hide()V

    goto :goto_b

    :cond_12
    sget p0, Landroidx/compose/ui/text/input/ImeAction;->Go:I

    invoke-static {p1, p0}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_13

    move p0, v2

    goto :goto_9

    :cond_13
    sget p0, Landroidx/compose/ui/text/input/ImeAction;->Search:I

    invoke-static {p1, p0}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result p0

    :goto_9
    if-eqz p0, :cond_14

    goto :goto_a

    :cond_14
    sget p0, Landroidx/compose/ui/text/input/ImeAction;->Send:I

    invoke-static {p1, p0}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v2

    :goto_a
    if-eqz v2, :cond_15

    goto :goto_b

    :cond_15
    sget p0, Landroidx/compose/ui/text/input/ImeAction;->Default:I

    invoke-static {p1, p0}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    :cond_16
    :goto_b
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_17
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "invalid ImeAction"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
