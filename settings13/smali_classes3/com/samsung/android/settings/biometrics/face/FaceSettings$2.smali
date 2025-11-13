.class Lcom/samsung/android/settings/biometrics/face/FaceSettings$2;
.super Landroid/hardware/face/FaceManager$RemovalCallback;
.source "FaceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/biometrics/face/FaceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)V
    .locals 0

    .line 1074
    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-direct {p0}, Landroid/hardware/face/FaceManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovalError(Landroid/hardware/face/Face;ILjava/lang/CharSequence;)V
    .locals 1

    .line 1078
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 1080
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mRemovalCallback : Remove Error : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", activity="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FcstFaceSettings"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    .line 1082
    sget p1, Lcom/android/settings/R$string;->sec_face_error_message_sensor_error:I

    .line 1083
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 1082
    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->showFaceSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onRemovalSucceeded(Landroid/hardware/face/Face;I)V
    .locals 2

    const-string p1, "FcstFaceSettings"

    const-string p2, "mRemovalCallback : onRemovalSucceeded"

    .line 1089
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_biometrics_common_removed:I

    invoke-static {p2, v0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->makeTalkback(Landroid/content/Context;Landroid/view/View;I)V

    .line 1093
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1095
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->-$$Nest$fgetmLockPatternUtils(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->-$$Nest$fgetmUserId(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)I

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->removeFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    goto :goto_0

    :cond_0
    const-string p2, "onRemovalSucceeded : context is null"

    .line 1097
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p2

    if-nez p2, :cond_1

    const-string p0, "onRemovalSucceeded : skip update screen after destory"

    .line 1102
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1106
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceStayOnLockScreen()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->-$$Nest$fgetmStayOnLockScreen(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1107
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->-$$Nest$fgetmStayOnLockScreen(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1110
    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceRecognizeWithMask()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->-$$Nest$fgetmRecognizeWithMask(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1111
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->-$$Nest$fgetmRecognizeWithMask(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1114
    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceOpenEyes()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->-$$Nest$fgetmOpenEyes(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1115
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->-$$Nest$fgetmOpenEyes(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1118
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->-$$Nest$fgetmBrightenScreen(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceBrightenScreen()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1119
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->-$$Nest$fgetmBrightenScreen(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1122
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->-$$Nest$mupdatePreferences(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)V

    return-void
.end method
