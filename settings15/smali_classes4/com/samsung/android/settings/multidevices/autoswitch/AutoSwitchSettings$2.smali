.class public final Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$2;->this$0:Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "android.bluetooth.profile.extra.STATE"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$2;->this$0:Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->handler:Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$1;

    const/16 p1, 0xa

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method
