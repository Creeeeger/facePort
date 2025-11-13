.class public final synthetic Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const p1, 0x7f142128

    const v0, 0x7f142129

    iget v1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda5;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;

    packed-switch v1, :pswitch_data_0

    iget v1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mUserId:I

    invoke-static {p0, v1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceOpenEyes(Landroid/content/Context;IZ)V

    if-eqz p2, :cond_0

    move p1, v0

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mOpenEyesSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/Switch;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    iget v1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mUserId:I

    sget-boolean v2, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->IS_SUPPORT_FACE_DAEMON_DETECT_OPEN_EYES:Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "face_recognize_mask"

    invoke-static {v2, v3, p2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    if-eqz p2, :cond_1

    move p1, v0

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mRecognizeWithMaskSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/Switch;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_1
    iget v1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mUserId:I

    invoke-static {p0, v1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceBrightenScreen(Landroid/content/Context;IZ)V

    if-eqz p2, :cond_2

    move p1, v0

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mBrightenScreenSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/Switch;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_2
    iget v1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mUserId:I

    invoke-static {p0, v1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceStayOnLockScreen(Landroid/content/Context;IZ)V

    if-eqz p2, :cond_3

    move p1, v0

    :cond_3
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mStayOnLockScreenSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/Switch;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
