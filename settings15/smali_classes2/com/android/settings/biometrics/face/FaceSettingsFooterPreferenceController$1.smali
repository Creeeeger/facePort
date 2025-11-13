.class public final Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController$1;
.super Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback$Stub;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController$1;->this$0:Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController;

    invoke-direct {p0}, Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAllAuthenticatorsRegistered(Ljava/util/List;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "FaceSettingsFooterPreferenceController"

    const-string p1, "No sensors"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget p1, p1, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorStrength:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController$1;->this$0:Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController;

    invoke-static {p1}, Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController;->-$$Nest$fgetmIsFaceStrong(Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController;)Z

    move-result p1

    if-ne p1, v0, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController$1;->this$0:Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController;

    invoke-static {p1, v0}, Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController;->-$$Nest$fputmIsFaceStrong(Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController;Z)V

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController$1;->this$0:Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController;

    invoke-static {p0}, Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController;->-$$Nest$fgetmPreference(Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
