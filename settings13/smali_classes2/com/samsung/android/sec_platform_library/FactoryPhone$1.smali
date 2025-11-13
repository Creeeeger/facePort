.class Lcom/samsung/android/sec_platform_library/FactoryPhone$1;
.super Ljava/lang/Object;
.source "FactoryPhone.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sec_platform_library/FactoryPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;


# direct methods
.method constructor <init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 33
    iget-object p1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-static {p1}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->-$$Nest$fgetLOG_TAG(Lcom/samsung/android/sec_platform_library/FactoryPhone;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-static {v1}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->-$$Nest$fgetHOST_NAME(Lcom/samsung/android/sec_platform_library/FactoryPhone;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onServiceConnected()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object p1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->-$$Nest$fputmServiceMessenger(Lcom/samsung/android/sec_platform_library/FactoryPhone;Landroid/os/Messenger;)V

    .line 36
    iget-object p1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {p1}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->registerAction()V

    .line 37
    iget-object p0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->sendPendingMessage()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 41
    iget-object p1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-static {p1}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->-$$Nest$fgetLOG_TAG(Lcom/samsung/android/sec_platform_library/FactoryPhone;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-static {v1}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->-$$Nest$fgetHOST_NAME(Lcom/samsung/android/sec_platform_library/FactoryPhone;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onServiceDisconnected()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object p0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->-$$Nest$fputmServiceMessenger(Lcom/samsung/android/sec_platform_library/FactoryPhone;Landroid/os/Messenger;)V

    return-void
.end method
