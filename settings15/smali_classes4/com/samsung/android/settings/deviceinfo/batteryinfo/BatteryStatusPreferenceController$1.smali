.class public final Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryStatusPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryStatusPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryStatusPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryStatusPreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryStatusPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryStatusPreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryStatusPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryStatusPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryStatusPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

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
