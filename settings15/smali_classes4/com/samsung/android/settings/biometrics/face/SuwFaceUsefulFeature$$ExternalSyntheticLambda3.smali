.class public final synthetic Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;

.field public final synthetic f$1:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;

    iput-object p2, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda3;->f$1:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda3;->f$1:Lcom/android/internal/widget/LockPatternUtils;

    sget v0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_0

    const v0, 0x7f142129

    goto :goto_0

    :cond_0
    const v0, 0x7f142128

    :goto_0
    iget-object v1, p1, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mFaceUnlockSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->announceForAccessibility(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_1

    iget v0, p1, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mUserId:I

    invoke-static {v0, p1, p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceLock(ILandroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    goto :goto_1

    :cond_1
    iget v0, p1, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mUserId:I

    invoke-static {v0, p1, p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->removeFaceLock(ILandroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    :goto_1
    iget-object p0, p1, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mStayOnLockScreen:Landroid/view/View;

    invoke-static {p0, p2}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->setViewEnable(Landroid/view/View;Z)V

    iget-object p0, p1, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mStayOnLockScreenSwitch:Landroid/widget/Switch;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p2}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_2
    return-void
.end method
