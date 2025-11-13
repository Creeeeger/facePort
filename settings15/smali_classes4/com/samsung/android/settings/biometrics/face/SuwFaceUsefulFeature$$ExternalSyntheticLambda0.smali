.class public final synthetic Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    const-string p1, "Set StayOnLockScreen enable"

    const-string v0, "Set StayOnLockScreen disable"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "FcstSuwFaceUsefulFeature"

    iget v4, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;

    packed-switch v4, :pswitch_data_0

    iget p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mUserId:I

    invoke-static {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceOpenEyesBooleanValue(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Set OpenEyes disable"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mOpenEyesSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "Set OpenEyes enable"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mOpenEyesSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_0
    return-void

    :pswitch_0
    iget v4, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mUserId:I

    invoke-static {p0, v4}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceRecognizeMaskDbValue(Landroid/content/Context;I)I

    move-result v4

    if-ne v4, v1, :cond_1

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mRecognizeWithMaskSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1

    :cond_1
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mRecognizeWithMaskSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_1
    return-void

    :pswitch_1
    iget v4, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mUserId:I

    invoke-static {p0, v4}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceStayOnLockScreenBooleanValue(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mStayOnLockScreenSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_2

    :cond_2
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mStayOnLockScreenSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_2
    return-void

    :pswitch_2
    iget p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mUserId:I

    invoke-static {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceBrightenScreenBooleanValue(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Set BrightenScreen disable"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mBrightenScreenSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_3

    :cond_3
    const-string p1, "Set BrightenScreen enable"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mBrightenScreenSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_3
    return-void

    :pswitch_3
    sget p1, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x20e8

    invoke-static {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getSaLogIdByDisplayType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x20e9

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;I)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
