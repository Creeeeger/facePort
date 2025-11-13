.class public Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mCancelButton:Landroid/widget/Button;

.field public mDescriptionTextView:Landroid/widget/TextView;

.field public mDoneButton:Landroid/widget/Button;

.field public mFaceLayout:Landroid/widget/RelativeLayout;

.field public mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field public mFaceSwitch:Landroid/widget/Switch;

.field public mFingerprintLayout:Landroid/widget/RelativeLayout;

.field public mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field public mFingerprintSwitch:Landroid/widget/Switch;

.field public mMainLayout:Landroid/widget/LinearLayout;

.field public mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

.field public mRootView:Landroid/view/ViewGroup;

.field public mTitle:Landroid/widget/TextView;

.field public mToolBar:Landroid/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo p3, "onActivityResult : requestCode : "

    const-string v0, " resultCode : "

    const-string v1, "LockScreenRoutineActionActivity"

    invoke-static {p3, v0, p1, p2, v1}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    const/16 p3, 0x271b

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq p1, p3, :cond_2

    const/16 p3, 0x271c

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    if-ne p2, v2, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mToolBar:Landroid/widget/Toolbar;

    invoke-virtual {p1, v1}, Landroid/widget/Toolbar;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFaceSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    iget-object p2, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFaceSwitch:Landroid/widget/Switch;

    invoke-virtual {p2}, Landroid/widget/Switch;->isChecked()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string/jumbo p3, "unlock_with_face"

    invoke-virtual {p1, p3, p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->setView()V

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_3
    if-ne p2, v2, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mToolBar:Landroid/widget/Toolbar;

    invoke-virtual {p1, v1}, Landroid/widget/Toolbar;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFingerprintSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    iget-object p2, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFingerprintSwitch:Landroid/widget/Switch;

    invoke-virtual {p2}, Landroid/widget/Switch;->isChecked()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string/jumbo p3, "unlock_with_fingerprint"

    invoke-virtual {p1, p3, p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->setView()V

    :cond_4
    :goto_0
    return-void
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    const p2, 0x7f0a0d6e

    const v0, 0x7f14266d

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFingerprintSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string/jumbo p2, "unlock_with_fingerprint"

    invoke-virtual {p1, p2, p0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mToolBar:Landroid/widget/Toolbar;

    invoke-virtual {p1, v2}, Landroid/widget/Toolbar;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f14266f

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mDoneButton:Landroid/widget/Button;

    new-instance p2, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;I)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    const p2, 0x7f0a0d6c

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz p1, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFaceSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string/jumbo p2, "unlock_with_face"

    invoke-virtual {p1, p2, p0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mToolBar:Landroid/widget/Toolbar;

    invoke-virtual {p1, v2}, Landroid/widget/Toolbar;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f14266e

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mDoneButton:Landroid/widget/Button;

    new-instance p2, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity$$ExternalSyntheticLambda0;

    const/4 v0, 0x3

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;I)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d08fc

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mRootView:Landroid/view/ViewGroup;

    const v0, 0x7f0a0068

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Toolbar;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mToolBar:Landroid/widget/Toolbar;

    const v0, 0x7f0a1041

    invoke-virtual {p1, v0}, Landroid/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->fromIntent(Landroid/content/Intent;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->createInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    const v0, 0x7f0a04d6

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mDescriptionTextView:Landroid/widget/TextView;

    const v0, 0x7f0a091e

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mMainLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0d6f

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFingerprintLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0d6d

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFaceLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0d6e

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFingerprintSwitch:Landroid/widget/Switch;

    const v0, 0x7f0a0d6c

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFaceSwitch:Landroid/widget/Switch;

    const v0, 0x7f0a0acd

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mDoneButton:Landroid/widget/Button;

    const v0, 0x7f0a02cc

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mCancelButton:Landroid/widget/Button;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v4, "unlock_with_fingerprint"

    invoke-virtual {v3, v4, v0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFingerprintSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    invoke-virtual {v3, v4, v0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/16 v0, 0x100

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    move-result p1

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "unlock_with_face"

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFaceSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->setView()V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    return-void
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFingerprintSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFaceSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFingerprintSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFaceSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public final setView()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f142821

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mDescriptionTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mMainLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFingerprintLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mFaceLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140d53

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mDoneButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
