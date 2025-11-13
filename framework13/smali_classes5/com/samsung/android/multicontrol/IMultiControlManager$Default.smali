.class public Lcom/samsung/android/multicontrol/IMultiControlManager$Default;
.super Ljava/lang/Object;
.source "IMultiControlManager.java"

# interfaces
.implements Lcom/samsung/android/multicontrol/IMultiControlManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multicontrol/IMultiControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist forceHideCursor(Z)V
    .locals 0
    .param p1, "hide"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist getProtocolVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isAllowed()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist resetInputFilter()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist setCursorPosition(III)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    return-void
.end method

.method public blacklist setInputFilter(Landroid/view/IInputFilter;Lcom/samsung/android/multicontrol/IInputFilterInstallListener;)V
    .locals 0
    .param p1, "filter"    # Landroid/view/IInputFilter;
    .param p2, "listener"    # Lcom/samsung/android/multicontrol/IInputFilterInstallListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist setInteractive(Z)V
    .locals 0
    .param p1, "interactive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist setMultiControlOutOfFocus(Z)V
    .locals 0
    .param p1, "outOfFocus"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public blacklist setProtocolVersion(I)V
    .locals 0
    .param p1, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist startDeathChecker(Lcom/samsung/android/multicontrol/IMultiControlDeathChecker;)V
    .locals 0
    .param p1, "checker"    # Lcom/samsung/android/multicontrol/IMultiControlDeathChecker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method public blacklist stopDeathChecker()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    return-void
.end method
