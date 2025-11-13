.class Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$1;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionInfoRepo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$1;->this$0:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 92
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "networkInfo"

    .line 93
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 95
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$1;->this$0:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;)Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$ConnectionInfoRepoHandler;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$1;->this$0:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;)Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$ConnectionInfoRepoHandler;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
