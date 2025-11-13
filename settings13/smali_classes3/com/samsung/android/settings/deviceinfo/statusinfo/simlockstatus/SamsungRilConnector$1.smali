.class Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector$1;
.super Ljava/lang/Object;
.source "SamsungRilConnector.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector$1;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 77
    sget-object p1, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector$1;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->-$$Nest$fputmServiceMessenger(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;Landroid/os/Messenger;)V

    .line 79
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector$1;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->-$$Nest$fputmIsConnected(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;Z)V

    .line 80
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector$1;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->getBlob()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 85
    sget-object p1, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector$1;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->-$$Nest$fputmServiceMessenger(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;Landroid/os/Messenger;)V

    .line 87
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector$1;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->-$$Nest$fputmIsConnected(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;Z)V

    return-void
.end method
