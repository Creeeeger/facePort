.class Lcom/samsung/android/settings/biometrics/face/FaceSettings$1;
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

    .line 1053
    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$1;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-direct {p0}, Landroid/hardware/face/FaceManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovalError(Landroid/hardware/face/Face;ILjava/lang/CharSequence;)V
    .locals 1

    .line 1056
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$1;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 1058
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mAlternativeRemovalCallback : Remove Error : "

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

    .line 1060
    sget p1, Lcom/android/settings/R$string;->sec_face_error_message_sensor_error:I

    .line 1061
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 1060
    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->showFaceSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onRemovalSucceeded(Landroid/hardware/face/Face;I)V
    .locals 1

    const-string p1, "FcstFaceSettings"

    const-string p2, "mAlternativeRemovalCallback : onRemovalSucceeded"

    .line 1067
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$1;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->-$$Nest$fputmIsRemoveOnlyAlternativeFace(Lcom/samsung/android/settings/biometrics/face/FaceSettings;Z)V

    .line 1069
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$1;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$1;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-virtual {p2}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    sget v0, Lcom/android/settings/R$string;->sec_biometrics_common_removed:I

    invoke-static {p1, p2, v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->makeTalkback(Landroid/content/Context;Landroid/view/View;I)V

    .line 1070
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$1;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->-$$Nest$mupdatePreferences(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)V

    return-void
.end method
