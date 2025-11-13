.class Lcom/samsung/android/desktopmode/SemDesktopModeManager$IDesktopModeLauncherImpl;
.super Lcom/samsung/android/desktopmode/IDesktopModeLauncher$Stub;
.source "SemDesktopModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktopmode/SemDesktopModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IDesktopModeLauncherImpl"
.end annotation


# instance fields
.field blacklist mLauncher:Lcom/samsung/android/desktopmode/SemDesktopModeManager$OnMessageReceivedListener;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/desktopmode/SemDesktopModeManager$OnMessageReceivedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/desktopmode/SemDesktopModeManager$OnMessageReceivedListener;

    .line 421
    invoke-direct {p0}, Lcom/samsung/android/desktopmode/IDesktopModeLauncher$Stub;-><init>()V

    .line 422
    iput-object p1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$IDesktopModeLauncherImpl;->mLauncher:Lcom/samsung/android/desktopmode/SemDesktopModeManager$OnMessageReceivedListener;

    .line 423
    return-void
.end method


# virtual methods
.method public blacklist sendMessage(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "message"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 427
    iget-object v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$IDesktopModeLauncherImpl;->mLauncher:Lcom/samsung/android/desktopmode/SemDesktopModeManager$OnMessageReceivedListener;

    if-eqz v0, :cond_0

    .line 428
    invoke-interface {v0, p1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager$OnMessageReceivedListener;->onMessageReceived(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 430
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
