.class Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "AutoSwitchSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$2;->this$0:Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 91
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    const-string v0, "android.bluetooth.profile.extra.STATE"

    .line 93
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    if-nez p1, :cond_1

    .line 95
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$2;->this$0:Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->-$$Nest$fgethandler(Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0xa

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method
