.class public final Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController$3;->this$0:Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;

    return-void
.end method


# virtual methods
.method public final onSensorPrivacyChanged(IZ)V
    .locals 1

    const-string p1, "CameraAccess onSensorPrivacyChanged = "

    const-string v0, "SecAutoBrightnessPreferenceController"

    invoke-static {p1, v0, p2}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController$3;->this$0:Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController$3;->this$0:Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    move-result-object p1

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController$3;->this$0:Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
