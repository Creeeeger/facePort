.class public final Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$1;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->-$$Nest$fgetmPackageName(Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->access$000(Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->-$$Nest$fgetmPackageName(Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;

    invoke-static {p0}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->-$$Nest$fgetmUserId(Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;)I

    move-result p0

    invoke-static {p1, p0, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->getAppBatteryUsageData(Landroid/content/Context;ILjava/lang/String;)Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "loadBatteryDiffEntries():\n"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppBatteryPreferenceController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mBatteryDiffEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    return-void
.end method
