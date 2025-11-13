.class Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GigaLteSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/connection/GigaLteSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HotSwapReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/connection/GigaLteSettings;)V
    .locals 0

    .line 852
    iput-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 854
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 855
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HotSwapReceiver: onReceive action="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "mptcp"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "com.samsung.intent.action.SIMHOTSWAP"

    .line 856
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 857
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$mcheckSwitchDisableStatus(Lcom/samsung/android/settings/connection/GigaLteSettings;)V

    :cond_0
    return-void
.end method
