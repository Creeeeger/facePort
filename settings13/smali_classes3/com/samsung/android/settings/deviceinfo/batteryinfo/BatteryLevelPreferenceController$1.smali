.class Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryLevelPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryLevelPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryLevelPreferenceController;->getBatteryLevelReceiver()Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryLevelPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryLevelPreferenceController;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryLevelPreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryLevelPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 60
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryLevelPreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryLevelPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryLevelPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryLevelPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 61
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryLevelPreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryLevelPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryLevelPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryLevelPreferenceController;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-static {p2}, Lcom/android/settings/Utils;->getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
