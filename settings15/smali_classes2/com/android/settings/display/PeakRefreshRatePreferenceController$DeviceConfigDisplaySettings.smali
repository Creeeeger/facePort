.class Lcom/android/settings/display/PeakRefreshRatePreferenceController$DeviceConfigDisplaySettings;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/PeakRefreshRatePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeviceConfigDisplaySettings"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/settings/display/PeakRefreshRatePreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/display/PeakRefreshRatePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController$DeviceConfigDisplaySettings;->this$0:Lcom/android/settings/display/PeakRefreshRatePreferenceController;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController$DeviceConfigDisplaySettings;->this$0:Lcom/android/settings/display/PeakRefreshRatePreferenceController;

    invoke-static {v0}, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->-$$Nest$fgetmHandler(Lcom/android/settings/display/PeakRefreshRatePreferenceController;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController$DeviceConfigDisplaySettings;->this$0:Lcom/android/settings/display/PeakRefreshRatePreferenceController;

    invoke-static {p0}, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->-$$Nest$fgetmHandler(Lcom/android/settings/display/PeakRefreshRatePreferenceController;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController$DeviceConfigDisplaySettings;->this$0:Lcom/android/settings/display/PeakRefreshRatePreferenceController;

    invoke-static {p1}, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->-$$Nest$fgetmOnDeviceConfigChange(Lcom/android/settings/display/PeakRefreshRatePreferenceController;)Lcom/android/settings/display/PeakRefreshRatePreferenceController$IDeviceConfigChange;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController$DeviceConfigDisplaySettings;->this$0:Lcom/android/settings/display/PeakRefreshRatePreferenceController;

    invoke-static {p1}, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->-$$Nest$fgetmOnDeviceConfigChange(Lcom/android/settings/display/PeakRefreshRatePreferenceController;)Lcom/android/settings/display/PeakRefreshRatePreferenceController$IDeviceConfigChange;

    move-result-object p1

    check-cast p1, Lcom/android/settings/display/PeakRefreshRatePreferenceController$1;

    iget-object p1, p1, Lcom/android/settings/display/PeakRefreshRatePreferenceController$1;->this$0:Lcom/android/settings/display/PeakRefreshRatePreferenceController;

    invoke-static {p1}, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->-$$Nest$fgetmPreference(Lcom/android/settings/display/PeakRefreshRatePreferenceController;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object p0, p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController$DeviceConfigDisplaySettings;->this$0:Lcom/android/settings/display/PeakRefreshRatePreferenceController;

    invoke-static {p0}, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->-$$Nest$fgetmPreference(Lcom/android/settings/display/PeakRefreshRatePreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
