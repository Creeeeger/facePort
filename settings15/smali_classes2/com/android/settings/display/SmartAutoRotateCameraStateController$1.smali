.class public final Lcom/android/settings/display/SmartAutoRotateCameraStateController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/display/SmartAutoRotateCameraStateController;


# direct methods
.method public constructor <init>(Lcom/android/settings/display/SmartAutoRotateCameraStateController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/SmartAutoRotateCameraStateController$1;->this$0:Lcom/android/settings/display/SmartAutoRotateCameraStateController;

    return-void
.end method


# virtual methods
.method public final onSensorPrivacyChanged(IZ)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/display/SmartAutoRotateCameraStateController$1;->this$0:Lcom/android/settings/display/SmartAutoRotateCameraStateController;

    invoke-static {p1}, Lcom/android/settings/display/SmartAutoRotateCameraStateController;->-$$Nest$fgetmPreference(Lcom/android/settings/display/SmartAutoRotateCameraStateController;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/display/SmartAutoRotateCameraStateController$1;->this$0:Lcom/android/settings/display/SmartAutoRotateCameraStateController;

    invoke-static {p1}, Lcom/android/settings/display/SmartAutoRotateCameraStateController;->-$$Nest$fgetmPreference(Lcom/android/settings/display/SmartAutoRotateCameraStateController;)Landroidx/preference/Preference;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/display/SmartAutoRotateCameraStateController$1;->this$0:Lcom/android/settings/display/SmartAutoRotateCameraStateController;

    invoke-virtual {p2}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/display/SmartAutoRotateCameraStateController$1;->this$0:Lcom/android/settings/display/SmartAutoRotateCameraStateController;

    invoke-static {p0}, Lcom/android/settings/display/SmartAutoRotateCameraStateController;->-$$Nest$fgetmPreference(Lcom/android/settings/display/SmartAutoRotateCameraStateController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
