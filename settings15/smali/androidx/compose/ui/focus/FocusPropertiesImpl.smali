.class public final Landroidx/compose/ui/focus/FocusPropertiesImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/compose/ui/focus/FocusProperties;


# instance fields
.field public canFocus:Z

.field public down:Landroidx/compose/ui/focus/FocusRequester;

.field public end:Landroidx/compose/ui/focus/FocusRequester;

.field public enter:Lkotlin/jvm/functions/Function1;

.field public exit:Lkotlin/jvm/functions/Function1;

.field public left:Landroidx/compose/ui/focus/FocusRequester;

.field public next:Landroidx/compose/ui/focus/FocusRequester;

.field public previous:Landroidx/compose/ui/focus/FocusRequester;

.field public right:Landroidx/compose/ui/focus/FocusRequester;

.field public start:Landroidx/compose/ui/focus/FocusRequester;

.field public up:Landroidx/compose/ui/focus/FocusRequester;


# virtual methods
.method public final getCanFocus()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->canFocus:Z

    return p0
.end method

.method public final setCanFocus(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->canFocus:Z

    return-void
.end method
