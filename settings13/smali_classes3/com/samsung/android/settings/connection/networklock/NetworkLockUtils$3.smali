.class Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils$3;
.super Ljava/lang/Object;
.source "NetworkLockUtils.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils$3;->this$0:Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "Network Lock"

    const-string v0, "onServiceConnected()"

    .line 207
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object p1, p0, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils$3;->this$0:Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;->-$$Nest$fputmServiceMessenger(Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;Landroid/os/Messenger;)V

    .line 209
    iget-object p0, p0, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils$3;->this$0:Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;->-$$Nest$mgetOemSimLock(Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "Network Lock"

    const-string v0, "onServiceDisconnected()"

    .line 213
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object p0, p0, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils$3;->this$0:Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;->-$$Nest$fputmServiceMessenger(Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;Landroid/os/Messenger;)V

    return-void
.end method
