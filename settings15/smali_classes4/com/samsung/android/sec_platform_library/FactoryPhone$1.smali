.class public final Lcom/samsung/android/sec_platform_library/FactoryPhone$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    iget-object v0, v0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    const-string v1, " onServiceConnected()"

    const-string v2, "F_PHONE"

    invoke-static {p1, v0, v1, v2}, Lcom/android/settings/applications/AppStateClonedAppsBridge$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p1, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mServiceMessenger:Landroid/os/Messenger;

    iget-object p1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "default registerAction()"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->sendPendingMessage()V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    iget-object v0, v0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    const-string v1, " onServiceDisconnected()"

    const-string v2, "F_PHONE"

    invoke-static {p1, v0, v1, v2}, Lcom/android/settings/applications/AppStateClonedAppsBridge$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mServiceMessenger:Landroid/os/Messenger;

    return-void
.end method
