.class Lcom/android/internal/app/AppLockPolicy$1;
.super Landroid/app/IUserSwitchObserver$Stub;
.source "AppLockPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/AppLockPolicy;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/AppLockPolicy;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/AppLockPolicy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/AppLockPolicy;

    .line 433
    iput-object p1, p0, Lcom/android/internal/app/AppLockPolicy$1;->this$0:Lcom/android/internal/app/AppLockPolicy;

    invoke-direct {p0}, Landroid/app/IUserSwitchObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onForegroundProfileSwitch(I)V
    .locals 0
    .param p1, "newProfileId"    # I

    .line 446
    return-void
.end method

.method public blacklist onLockedBootComplete(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .line 450
    return-void
.end method

.method public blacklist onUserSwitchComplete(I)V
    .locals 2
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 440
    const-string v0, "AppLockPolicy"

    const-string/jumbo v1, "onUserSwitchComplete getLockedApps"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy$1;->this$0:Lcom/android/internal/app/AppLockPolicy;

    invoke-static {v0}, Lcom/android/internal/app/AppLockPolicy;->-$$Nest$mupdateLockedApps(Lcom/android/internal/app/AppLockPolicy;)V

    .line 442
    return-void
.end method

.method public blacklist onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 0
    .param p1, "newUserId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .line 436
    return-void
.end method
