.class public Landroid/view/inputmethod/InputMethodManagerGlobal;
.super Ljava/lang/Object;
.source "InputMethodManagerGlobal.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isImeTraceAvailable()Z
    .locals 1

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public static blacklist isImeTraceEnabled()Z
    .locals 1

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->isImeTraceEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist removeImeSurface(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/os/RemoteException;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->removeImeSurface(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static blacklist startImeTrace(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/os/RemoteException;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->startImeTrace(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static blacklist startProtoDump([BILjava/lang/String;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/RemoteException;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->startProtoDump([BILjava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static blacklist stopImeTrace(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/os/RemoteException;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->stopImeTrace(Ljava/util/function/Consumer;)V

    return-void
.end method
