.class public Lcom/samsung/android/settings/mde/MDEServiceBindingManager;
.super Ljava/lang/Object;
.source "MDEServiceBindingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/mde/MDEServiceBindingManager$CallbackHandler;,
        Lcom/samsung/android/settings/mde/MDEServiceBindingManager$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MDEServiceBindingManager"


# instance fields
.field mBound:Z

.field private mCallbackHandler:Lcom/samsung/android/settings/mde/MDEServiceBindingManager$CallbackHandler;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/mde/MDEServiceBindingManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mClientCallbackMessenger:Landroid/os/Messenger;

.field private final mContext:Landroid/content/Context;

.field private mServiceCallbackMessenger:Landroid/os/Messenger;

.field private final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallbackHandler(Lcom/samsung/android/settings/mde/MDEServiceBindingManager;)Lcom/samsung/android/settings/mde/MDEServiceBindingManager$CallbackHandler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mCallbackHandler:Lcom/samsung/android/settings/mde/MDEServiceBindingManager$CallbackHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallbacks(Lcom/samsung/android/settings/mde/MDEServiceBindingManager;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/mde/MDEServiceBindingManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCallbackHandler(Lcom/samsung/android/settings/mde/MDEServiceBindingManager;Lcom/samsung/android/settings/mde/MDEServiceBindingManager$CallbackHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mCallbackHandler:Lcom/samsung/android/settings/mde/MDEServiceBindingManager$CallbackHandler;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmClientCallbackMessenger(Lcom/samsung/android/settings/mde/MDEServiceBindingManager;Landroid/os/Messenger;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mClientCallbackMessenger:Landroid/os/Messenger;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmServiceCallbackMessenger(Lcom/samsung/android/settings/mde/MDEServiceBindingManager;Landroid/os/Messenger;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mServiceCallbackMessenger:Landroid/os/Messenger;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mBound:Z

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mServiceCallbackMessenger:Landroid/os/Messenger;

    .line 39
    iput-object v0, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mClientCallbackMessenger:Landroid/os/Messenger;

    .line 40
    iput-object v0, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mCallbackHandler:Lcom/samsung/android/settings/mde/MDEServiceBindingManager$CallbackHandler;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mCallbacks:Ljava/util/ArrayList;

    .line 145
    new-instance v0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$1;-><init>(Lcom/samsung/android/settings/mde/MDEServiceBindingManager;)V

    iput-object v0, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 134
    sget-object v0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->TAG:Ljava/lang/String;

    const-string v1, "MDEServiceBindingManager()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iput-object p1, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public registerCallback(Lcom/samsung/android/settings/mde/MDEServiceBindingManager$Callback;)V
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public sendMessage(ILandroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    .line 179
    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mClientCallbackMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz p2, :cond_0

    .line 181
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 183
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mServiceCallbackMessenger:Landroid/os/Messenger;

    if-eqz p0, :cond_1

    .line 184
    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 185
    sget-object p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendMessage : Send message to Service. what = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 188
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public startServiceBind()V
    .locals 3

    .line 139
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings.intelligence"

    const-string v2, "com.samsung.android.settings.intelligence.mde.MDEService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public stopServiceBind()V
    .locals 2

    .line 171
    iget-boolean v0, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mBound:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    const/4 v1, 0x0

    .line 172
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->sendMessage(ILandroid/os/Bundle;)V

    .line 173
    iget-object v0, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 174
    iput-boolean v0, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mBound:Z

    :cond_0
    return-void
.end method

.method public unregisterCallback(Lcom/samsung/android/settings/mde/MDEServiceBindingManager$Callback;)V
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
