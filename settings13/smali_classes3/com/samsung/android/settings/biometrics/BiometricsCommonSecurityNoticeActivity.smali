.class public Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;
.super Lcom/android/settings/core/SettingsBaseActivity;
.source "BiometricsCommonSecurityNoticeActivity.java"


# instance fields
.field private mActionBar:Landroidx/appcompat/app/ActionBar;

.field private mContext:Landroid/content/Context;

.field private mFaceDescView:Landroid/widget/TextView;

.field private mFaceView:Landroid/widget/LinearLayout;

.field private mFingerprintDescView:Landroid/widget/TextView;

.field private mFingerprintView:Landroid/widget/LinearLayout;

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/android/settings/core/SettingsBaseActivity;-><init>()V

    return-void
.end method

.method private getDescriptionString(I)Ljava/lang/String;
    .locals 7

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDescriptionString : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricsCommonSecurityNoticeActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getSecurityLevel(Landroid/content/Context;I)I

    move-result p1

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v3, 0x4

    const/16 v4, 0x18

    const/4 v5, 0x2

    if-eq p1, v5, :cond_1

    const/4 v6, 0x3

    if-eq p1, v6, :cond_0

    const-string p0, "getDescriptionString : wrong security level"

    .line 113
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    goto :goto_0

    .line 110
    :cond_0
    sget p1, Lcom/android/settings/R$string;->sec_biometrics_common_about_security_notice_body_convenience:I

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 107
    :cond_1
    sget p1, Lcom/android/settings/R$string;->sec_biometrics_common_about_security_notice_body_weak:I

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$plurals;->sec_biometrics_common_about_security_notice_body_strong:I

    new-array v1, v2, [Ljava/lang/Object;

    const/16 v2, 0x48

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-virtual {p0, p1, v2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private setDescriptionString()V
    .locals 3

    const-string v0, "BiometricsCommonSecurityNoticeActivity"

    const-string v1, "setDescriptionString"

    .line 76
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;->mFingerprintView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;->mFingerprintView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;->mFingerprintDescView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 82
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;->getDescriptionString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;->mFaceView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportBioFace()Z

    move-result v0

    if-nez v0, :cond_2

    .line 87
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;->mFaceView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;->mFaceDescView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    const/16 v1, 0x100

    .line 90
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;->getDescriptionString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 40
    invoke-super {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "BiometricsCommonSecurityNoticeActivity"

    const-string v0, "onCreate"

    .line 41
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iput-object p0, p0, Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;->mUserId:I

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUserId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    sget p1, Lcom/android/settings/R$layout;->sec_biometrics_security_notice_layout:I

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;->mActionBar:Landroidx/appcompat/app/ActionBar;

    .line 52
    sget p1, Lcom/android/settings/R$id;->biometrics_common_security_notice_body_fingerprint:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;->mFingerprintView:Landroid/widget/LinearLayout;

    .line 53
    sget p1, Lcom/android/settings/R$id;->biometrics_common_security_notice_body_face:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;->mFaceView:Landroid/widget/LinearLayout;

    .line 55
    sget p1, Lcom/android/settings/R$id;->biometrics_common_security_notice_body_fingerprint_desc:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;->mFingerprintDescView:Landroid/widget/TextView;

    .line 56
    sget p1, Lcom/android/settings/R$id;->biometrics_common_security_notice_body_face_desc:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;->mFaceDescView:Landroid/widget/TextView;

    .line 58
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;->setDescriptionString()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 63
    invoke-super {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onResume()V

    .line 65
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;->mActionBar:Landroidx/appcompat/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 67
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->sec_biometrics_common_about_security_notice_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/core/SettingsBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 69
    sget v0, Lcom/android/settings/R$id;->action_bar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/widget/Toolbar;

    if-eqz p0, :cond_0

    .line 71
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->setContentInsetsAbsolute(II)V

    :cond_0
    return-void
.end method
