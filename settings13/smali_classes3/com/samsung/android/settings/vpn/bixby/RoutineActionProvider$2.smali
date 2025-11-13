.class Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider$2;
.super Landroid/content/BroadcastReceiver;
.source "RoutineActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;->registerVpnStateReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider$2;->this$0:Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p2, :cond_2

    .line 92
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive: action="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Vpn.RoutineProvider"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.samsung.android.vpn.action.VPN_STATE_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "state"

    .line 97
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "reason"

    .line 98
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p2}, Landroid/net/NetworkInfo$DetailedState;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "onReceive: act FAILED"

    .line 101
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object p1, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider$2;->this$0:Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;

    const/16 p2, -0xc8

    invoke-static {p1, p2}, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;->-$$Nest$fputmActResult(Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;I)V

    .line 104
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider$2;->this$0:Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;

    invoke-static {p0}, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;->-$$Nest$munregisterVpnStateReceiver(Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;)V

    :cond_2
    :goto_0
    return-void
.end method
