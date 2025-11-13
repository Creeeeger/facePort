.class public final Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController$2;
.super Landroid/hardware/face/FaceManager$GetFeatureCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController$2;->this$0:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    invoke-direct {p0}, Landroid/hardware/face/FaceManager$GetFeatureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Z[I[Z)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_1

    aget v3, p2, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    aget-boolean v2, p3, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController$2;->this$0:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    invoke-static {p2}, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->-$$Nest$fgetmPreference(Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;)Landroidx/preference/TwoStatePreference;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p2, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController$2;->this$0:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    invoke-virtual {p2}, Lcom/android/settings/biometrics/face/FaceSettingsPreferenceController;->getRestrictingAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController$2;->this$0:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    invoke-static {p0}, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->-$$Nest$fgetmPreference(Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;)Landroidx/preference/TwoStatePreference;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController$2;->this$0:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    invoke-static {p0}, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->-$$Nest$fgetmPreference(Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;)Landroidx/preference/TwoStatePreference;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_1
    return-void
.end method
