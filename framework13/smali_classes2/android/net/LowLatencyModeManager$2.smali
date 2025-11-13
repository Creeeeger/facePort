.class Landroid/net/LowLatencyModeManager$2;
.super Ljava/lang/Object;
.source "LowLatencyModeManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LowLatencyModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/LowLatencyModeManager;


# direct methods
.method constructor blacklist <init>(Landroid/net/LowLatencyModeManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/LowLatencyModeManager;

    .line 108
    iput-object p1, p0, Landroid/net/LowLatencyModeManager$2;->this$0:Landroid/net/LowLatencyModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 110
    iget-object v0, p0, Landroid/net/LowLatencyModeManager$2;->this$0:Landroid/net/LowLatencyModeManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected(), classname:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/LowLatencyModeManager;->-$$Nest$mlog(Landroid/net/LowLatencyModeManager;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Landroid/net/LowLatencyModeManager$2;->this$0:Landroid/net/LowLatencyModeManager;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Landroid/net/LowLatencyModeManager;->-$$Nest$fputmServiceMessenger(Landroid/net/LowLatencyModeManager;Landroid/os/Messenger;)V

    .line 112
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 114
    iget-object v0, p0, Landroid/net/LowLatencyModeManager$2;->this$0:Landroid/net/LowLatencyModeManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected(), classname:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/LowLatencyModeManager;->-$$Nest$mlog(Landroid/net/LowLatencyModeManager;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Landroid/net/LowLatencyModeManager$2;->this$0:Landroid/net/LowLatencyModeManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/net/LowLatencyModeManager;->-$$Nest$fputmServiceMessenger(Landroid/net/LowLatencyModeManager;Landroid/os/Messenger;)V

    .line 116
    return-void
.end method
