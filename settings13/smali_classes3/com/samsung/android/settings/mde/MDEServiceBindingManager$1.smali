.class Lcom/samsung/android/settings/mde/MDEServiceBindingManager$1;
.super Ljava/lang/Object;
.source "MDEServiceBindingManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/mde/MDEServiceBindingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/mde/MDEServiceBindingManager;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$1;->this$0:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 149
    invoke-static {}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object p1, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$1;->this$0:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    new-instance v0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$CallbackHandler;

    iget-object v1, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$1;->this$0:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$CallbackHandler;-><init>(Lcom/samsung/android/settings/mde/MDEServiceBindingManager;Landroid/os/Looper;)V

    invoke-static {p1, v0}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->-$$Nest$fputmCallbackHandler(Lcom/samsung/android/settings/mde/MDEServiceBindingManager;Lcom/samsung/android/settings/mde/MDEServiceBindingManager$CallbackHandler;)V

    .line 151
    iget-object p1, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$1;->this$0:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$1;->this$0:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    invoke-static {v1}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->-$$Nest$fgetmCallbackHandler(Lcom/samsung/android/settings/mde/MDEServiceBindingManager;)Lcom/samsung/android/settings/mde/MDEServiceBindingManager$CallbackHandler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-static {p1, v0}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->-$$Nest$fputmClientCallbackMessenger(Lcom/samsung/android/settings/mde/MDEServiceBindingManager;Landroid/os/Messenger;)V

    .line 152
    iget-object p1, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$1;->this$0:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->-$$Nest$fputmServiceCallbackMessenger(Lcom/samsung/android/settings/mde/MDEServiceBindingManager;Landroid/os/Messenger;)V

    .line 154
    iget-object p1, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$1;->this$0:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    const/4 p2, 0x6

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->sendMessage(ILandroid/os/Bundle;)V

    .line 155
    iget-object p1, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$1;->this$0:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->sendMessage(ILandroid/os/Bundle;)V

    .line 156
    iget-object p1, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$1;->this$0:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->sendMessage(ILandroid/os/Bundle;)V

    .line 157
    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$1;->this$0:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    iput-boolean p2, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mBound:Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 162
    invoke-static {}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object p1, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$1;->this$0:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->-$$Nest$fputmCallbackHandler(Lcom/samsung/android/settings/mde/MDEServiceBindingManager;Lcom/samsung/android/settings/mde/MDEServiceBindingManager$CallbackHandler;)V

    .line 164
    iget-object p1, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$1;->this$0:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->-$$Nest$fputmClientCallbackMessenger(Lcom/samsung/android/settings/mde/MDEServiceBindingManager;Landroid/os/Messenger;)V

    .line 165
    iget-object p1, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$1;->this$0:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->-$$Nest$fputmServiceCallbackMessenger(Lcom/samsung/android/settings/mde/MDEServiceBindingManager;Landroid/os/Messenger;)V

    .line 166
    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$1;->this$0:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mBound:Z

    return-void
.end method
