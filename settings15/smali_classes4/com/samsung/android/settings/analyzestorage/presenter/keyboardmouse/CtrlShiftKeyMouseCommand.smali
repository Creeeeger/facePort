.class public final Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/CtrlShiftKeyMouseCommand;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyMouseCommand;


# virtual methods
.method public final onKeyDown(Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;Landroidx/fragment/app/FragmentActivity;Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    const/4 p0, 0x0

    return p0
.end method
