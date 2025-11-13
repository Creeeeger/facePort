.class Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController$3;
.super Ljava/lang/Object;
.source "SecAutoBrightnessPreferenceController.java"

# interfaces
.implements Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController$3;->this$0:Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSensorPrivacyChanged(IZ)V
    .locals 1

    .line 238
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CameraAccess onSensorPrivacyChanged = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecAutoBrightnessPreferenceController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController$3;->this$0:Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 240
    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController$3;->this$0:Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    move-result-object p1

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    .line 242
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController$3;->this$0:Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
