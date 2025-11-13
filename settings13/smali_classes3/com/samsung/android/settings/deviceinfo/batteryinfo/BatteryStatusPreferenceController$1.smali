.class Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryStatusPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryStatusPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryStatusPreferenceController;->getBatteryStatusReceiver()Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryStatusPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryStatusPreferenceController;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryStatusPreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryStatusPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 109
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 111
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryStatusPreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryStatusPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryStatusPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryStatusPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 112
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryStatusPreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryStatusPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryStatusPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryStatusPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryStatusPreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryStatusPreferenceController;

    invoke-static {p0, p2}, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryStatusPreferenceController;->-$$Nest$mgetBatteryStatusSummary(Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryStatusPreferenceController;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
