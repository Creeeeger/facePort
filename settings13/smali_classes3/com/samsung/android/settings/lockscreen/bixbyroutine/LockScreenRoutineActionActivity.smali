.class public Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "LockScreenRoutineActionActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mDescriptionTextView:Landroid/widget/TextView;

.field private mDoneButton:Landroid/widget/Button;

.field private mFaceLayout:Landroid/widget/RelativeLayout;

.field private mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mFaceSwitch:Landroid/widget/Switch;

.field private mFingerprintLayout:Landroid/widget/RelativeLayout;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFingerprintSwitch:Landroid/widget/Switch;

.field private mMainLayout:Landroid/widget/LinearLayout;

.field private mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;


# direct methods
.method public static synthetic $r8$lambda$HkloUX4k6XSjbMmN5DGhzFEyanY(Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->lambda$setRegisterFace$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cUKTwo6UHQNAJcTD0nRNabPwdho(Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->lambda$setView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nf2dPm8yIMt2KIYE3QNjsJcks3Y(Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->lambda$setView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nspa2g-7jmDajRHhzXNOAKvUW94(Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->lambda$setRegisterFingerPrint$2(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private isFaceAllowed()Z
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isHardwareDetected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isFingerprintAllowed()Z
    .locals 0

    .line 248
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$setRegisterFace$3(Landroid/view/View;)V
    .locals 0

    .line 207
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->startFaceLockSettings()V

    return-void
.end method

.method private synthetic lambda$setRegisterFingerPrint$2(Landroid/view/View;)V
    .locals 0

    .line 198
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->startFingerprintLockSettings()V

    return-void
.end method

.method private synthetic lambda$setView$0(Landroid/view/View;)V
    .locals 1

    .line 182
    new-instance p1, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;

    invoke-direct {p1}, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;-><init>()V

    .line 183
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;->setParameterValues(Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;)Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;

    .line 184
    invoke-virtual {p1}, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;->build()Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult;

    move-result-object p1

    .line 185
    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult;->sendActivityResult(Landroid/app/Activity;)V

    .line 186
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$setView$1(Landroid/view/View;)V
    .locals 0

    .line 189
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private setRegisterFace()V
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mDescriptionTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mMainLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->sec_register_your_face_first:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->sec_register:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mDoneButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setRegisterFingerPrint()V
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mDescriptionTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mMainLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->sec_register_your_fingerprints_first:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->sec_register:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mDoneButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setView()V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mDescriptionTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mMainLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 173
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->isFingerprintAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFingerprintLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 176
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->isFaceAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFaceLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->done:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mDoneButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private startFaceLockSettings()V
    .locals 3

    const-string v0, "LockScreenRoutineActionActivity"

    const-string v1, "startFaceLockSettings()"

    .line 227
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->isFaceAllowed()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "isHardwareDetected() of Face is FALSE."

    .line 229
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 232
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/samsung/android/settings/security/SecurityUtils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "isFaceDisabled() = TRUE"

    .line 233
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 237
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "previousStage"

    const-string v2, "FaceSettings_register"

    .line 238
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x271c

    .line 240
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private startFingerprintLockSettings()V
    .locals 3

    const-string v0, "LockScreenRoutineActionActivity"

    const-string v1, "startFingerprintLockSettings()"

    .line 211
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "isFingerprintDisabled() = TRUE"

    .line 213
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 217
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->isFingerprintAllowed()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "isHardwareDetected() of Fingerprint is FALSE."

    .line 218
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 221
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "previousStage"

    const-string v2, "FingerprintSettings_register"

    .line 222
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x271b

    .line 223
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 108
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 109
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityResult : requestCode : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " resultCode : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "LockScreenRoutineActionActivity"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p3, 0x271b

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p1, p3, :cond_2

    const/16 p3, 0x271c

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 124
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    if-ne p2, v1, :cond_4

    .line 126
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFaceSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 127
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    iget-object p2, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFaceSwitch:Landroid/widget/Switch;

    invoke-virtual {p2}, Landroid/widget/Switch;->isChecked()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "face_default_value"

    invoke-virtual {p1, p3, p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    .line 128
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    iget-object p2, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFaceSwitch:Landroid/widget/Switch;

    invoke-virtual {p2}, Landroid/widget/Switch;->isChecked()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "unlock_with_face"

    invoke-virtual {p1, p3, p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    .line 129
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->setView()V

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_3
    if-ne p2, v1, :cond_4

    .line 116
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFingerprintSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 117
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    iget-object p2, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFingerprintSwitch:Landroid/widget/Switch;

    invoke-virtual {p2}, Landroid/widget/Switch;->isChecked()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "fingerprint_default_value"

    invoke-virtual {p1, p3, p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    .line 118
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    iget-object p2, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFingerprintSwitch:Landroid/widget/Switch;

    invoke-virtual {p2}, Landroid/widget/Switch;->isChecked()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "unlock_with_fingerprint"

    invoke-virtual {p1, p3, p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    .line 119
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->setView()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 153
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    .line 155
    sget p2, Lcom/android/settings/R$id;->sec_lockscreen_biometric_fingerprint_switch:I

    if-ne p1, p2, :cond_1

    .line 156
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 157
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFingerprintSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string p2, "unlock_with_fingerprint"

    invoke-virtual {p1, p2, p0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    goto :goto_0

    .line 159
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->setRegisterFingerPrint()V

    goto :goto_0

    .line 161
    :cond_1
    sget p2, Lcom/android/settings/R$id;->sec_lockscreen_biometric_face_switch:I

    if-ne p1, p2, :cond_3

    .line 162
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz p1, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 163
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFaceSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string p2, "unlock_with_face"

    invoke-virtual {p1, p2, p0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    goto :goto_0

    .line 165
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->setRegisterFace()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 64
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 65
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 66
    sget v0, Lcom/android/settings/R$layout;->sec_lockscreen_routine_action_biometrics_status:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->fromIntent(Landroid/content/Intent;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    .line 71
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 73
    invoke-static {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->createInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 75
    sget v1, Lcom/android/settings/R$id;->description:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mDescriptionTextView:Landroid/widget/TextView;

    .line 76
    sget v1, Lcom/android/settings/R$id;->main_layout:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mMainLayout:Landroid/widget/LinearLayout;

    .line 78
    sget v1, Lcom/android/settings/R$id;->sec_lockscreen_biometric_fingerprint_switch_main_layout:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFingerprintLayout:Landroid/widget/RelativeLayout;

    .line 79
    sget v1, Lcom/android/settings/R$id;->sec_lockscreen_biometric_face_switch_main_layout:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFaceLayout:Landroid/widget/RelativeLayout;

    .line 81
    sget v1, Lcom/android/settings/R$id;->sec_lockscreen_biometric_fingerprint_switch:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFingerprintSwitch:Landroid/widget/Switch;

    .line 82
    sget v1, Lcom/android/settings/R$id;->sec_lockscreen_biometric_face_switch:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFaceSwitch:Landroid/widget/Switch;

    .line 84
    sget v1, Lcom/android/settings/R$id;->okayButton:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mDoneButton:Landroid/widget/Button;

    .line 85
    sget v1, Lcom/android/settings/R$id;->cancelButton:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mCancelButton:Landroid/widget/Button;

    .line 88
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, p1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 89
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "unlock_with_fingerprint"

    invoke-virtual {v3, v5, v4}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 90
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFingerprintSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 91
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "fingerprint_default_value"

    invoke-virtual {v4, v7, v6}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    .line 92
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    const/16 v4, 0x100

    .line 94
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    move-result v0

    if-ne v0, p1, :cond_1

    goto :goto_1

    :cond_1
    move p1, v2

    .line 95
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "unlock_with_face"

    invoke-virtual {v0, v4, v2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 96
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFaceSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 97
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "face_default_value"

    invoke-virtual {v2, v6, v5}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    .line 98
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "defaultFP : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " routineFP : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " defaultFC: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " routineFC : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LockScreenRoutineActionActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->setView()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 139
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 140
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFingerprintSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 141
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFaceSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 146
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 147
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFingerprintSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 148
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFaceSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
