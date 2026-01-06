.class Lcom/samsung/android/settings/biometrics/face/FaceSettings$3;
.super Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;
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

    .line 1146
    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovalError(Lcom/samsung/android/bio/face/SemBioFace;ILjava/lang/CharSequence;)V
    .locals 1

    .line 1150
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 1152
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

    .line 1154
    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceSensorErrorMessage(Landroid/content/Context;)Ljava/lang/String;

    .line 1155

    move-result-object p1

    const/4 p2, 0x0

    .line 1154
    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->showFaceSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onRemovalSucceeded(Lcom/samsung/android/bio/face/SemBioFace;)V
    .locals 3

    const-string p1, "FcstFaceSettings"

    const-string v0, "mRemovalCallback : onRemovalSucceeded"

    .line 1161
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1165
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->access$400(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->access$100(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->removeFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    goto :goto_0

    :cond_0
    const-string v0, "onRemovalSucceeded : context is null"

    .line 1167
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "onRemovalSucceeded : skip update screen after destory"

    .line 1172
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1176
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceStayOnLockScreen()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->access$500(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)Landroidx/preference/TwoStatePreference;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1177
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->access$500(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)Landroidx/preference/TwoStatePreference;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1180
    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceFasterRecognition()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->access$600(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1181
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->access$600(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1184
    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceOpenEyes()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->access$700(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1185
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->access$700(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1188
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->access$800(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceBrightenScreen()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1189
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->access$800(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1192
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->access$300(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)V

    return-void
.end method
