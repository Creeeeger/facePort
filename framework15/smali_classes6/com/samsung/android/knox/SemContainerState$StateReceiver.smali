.class Lcom/samsung/android/knox/SemContainerState$StateReceiver;
.super Landroid/os/ContainerStateReceiver;
.source "SemContainerState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/SemContainerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateReceiver"
.end annotation


# instance fields
.field final synthetic greylist this$0:Lcom/samsung/android/knox/SemContainerState;


# direct methods
.method private constructor greylist <init>(Lcom/samsung/android/knox/SemContainerState;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-direct {p0}, Landroid/os/ContainerStateReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor greylist <init>(Lcom/samsung/android/knox/SemContainerState;Lcom/samsung/android/knox/SemContainerState$StateReceiver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/SemContainerState$StateReceiver;-><init>(Lcom/samsung/android/knox/SemContainerState;)V

    return-void
.end method


# virtual methods
.method public greylist onContainerAdminLocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmLockListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$LockListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmLockListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$LockListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/SemContainerState$LockListener;->onAdminLocked(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public greylist onContainerAdminUnlocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmLockListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$LockListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmLockListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$LockListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/SemContainerState$LockListener;->onAdminUnlocked(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public greylist onContainerCreated(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmStateListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$StateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmStateListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$StateListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/SemContainerState$StateListener;->onContainerCreated(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public greylist onContainerEnabled(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmStateListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$StateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmStateListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$StateListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/SemContainerState$StateListener;->onContainerEnabled(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public greylist onContainerLocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmLockListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$LockListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmLockListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$LockListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/SemContainerState$LockListener;->onUserLocked(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public greylist onContainerRemoved(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmStateListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$StateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmStateListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$StateListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/SemContainerState$StateListener;->onContainerRemoved(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public greylist onContainerReset(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public greylist onContainerRunning(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmStateListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$StateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmStateListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$StateListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/SemContainerState$StateListener;->onContainerStarted(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public greylist onContainerShutdown(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmStateListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$StateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmStateListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$StateListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/SemContainerState$StateListener;->onContainerStopped(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public greylist onContainerSwitch(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmEventListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$EventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmEventListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$EventListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1, p2}, Lcom/samsung/android/knox/SemContainerState$EventListener;->onContainerModeChanged(Landroid/content/Context;II)V

    :cond_0
    return-void
.end method

.method public greylist onContainerUnlocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmLockListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$LockListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmLockListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$LockListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/SemContainerState$LockListener;->onUserUnlocked(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public greylist onDeviceOwnerActivated(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public greylist onDeviceOwnerLicenseActivated(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public greylist onLicenseActivated(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmLockListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$LockListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmLockListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$LockListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/SemContainerState$LockListener;->onLicenseActivated(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public greylist onLicenseExpired(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmLockListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$LockListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmLockListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$LockListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/SemContainerState$LockListener;->onLicenseExpired(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public greylist onLockScreenStateChanged(Landroid/content/Context;IZLandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmEventListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$EventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmEventListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$EventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/SemContainerState$EventListener;->onLockScreenVisivilityChanged(Landroid/content/Context;IZ)V

    :cond_0
    return-void
.end method

.method public greylist onPersonalSwitch(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmEventListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$EventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState$StateReceiver;->this$0:Lcom/samsung/android/knox/SemContainerState;

    invoke-static {v0}, Lcom/samsung/android/knox/SemContainerState;->-$$Nest$fgetmEventListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$EventListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, v1}, Lcom/samsung/android/knox/SemContainerState$EventListener;->onContainerModeChanged(Landroid/content/Context;II)V

    :cond_0
    return-void
.end method
