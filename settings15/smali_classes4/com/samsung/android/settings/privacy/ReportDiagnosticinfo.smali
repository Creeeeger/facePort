.class public Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;
.super Lcom/android/internal/app/AlertActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public mAgreeBtn:Landroid/widget/CheckedTextView;

.field public mCheckAll:Landroid/widget/CheckedTextView;

.field public mCheckList_1:Landroid/widget/CheckedTextView;

.field public mCheckList_2:Landroid/widget/CheckedTextView;

.field public mChnLayout:Landroid/widget/LinearLayout;

.field public mDiagnosticsText:Landroid/widget/TextView;

.field public mGlobalLayout:Landroid/widget/LinearLayout;

.field public mInflater:Landroid/view/LayoutInflater;

.field public mOtherInfoAgreeBtn:Landroid/widget/CheckedTextView;

.field public mOtherInfoLayout:Landroid/widget/LinearLayout;

.field public mOtherInfoText:Landroid/widget/TextView;

.field public okButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final allButtonChecked()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mCheckAll:Landroid/widget/CheckedTextView;

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mCheckList_1:Landroid/widget/CheckedTextView;

    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mCheckList_2:Landroid/widget/CheckedTextView;

    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mCheckList_1:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mCheckList_2:Landroid/widget/CheckedTextView;

    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_1

    move v2, v3

    :cond_1
    return v2
.end method

.method public final onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p2, p2, 0x30

    const/16 v0, 0x20

    if-ne p2, v0, :cond_0

    const p2, 0x10302d1

    goto :goto_0

    :cond_0
    const p2, 0x10302d2

    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/app/AlertActivity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "samsung_errorlog_agree"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    sget-boolean p1, Lcom/samsung/android/settings/Rune;->SUPPORT_DIAGNOSTIC_INFO_CHINA_DELTA:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->allButtonChecked()Z

    move-result v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->allButtonChecked()Z

    move-result p1

    invoke-static {p0, p1, v0}, Lcom/samsung/android/settings/security/SecurityUtils;->setDiagnostic(Landroid/content/Context;ZZ)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mOtherInfoAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/settings/security/SecurityUtils;->setDiagnostic(Landroid/content/Context;ZZ)V

    :goto_2
    if-eq p2, v1, :cond_4

    const p1, 0xdae9

    const/16 p2, 0x1f4a

    invoke-static {p1, p2, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a089e

    const-string v1, "com.samsung.android.settings.privacy.DiagnosticDataActivity"

    if-ne p1, v0, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_0
    const v0, 0x7f0a089f

    if-ne p1, v0, :cond_1

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.settings.privacy.InformationLinkingActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_1
    const v0, 0x7f0a00c5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mOtherInfoAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {p0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto/16 :goto_0

    :cond_2
    const v0, 0x7f0a0afe

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mOtherInfoAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mOtherInfoAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {p0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto/16 :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mOtherInfoAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {p0, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto/16 :goto_0

    :cond_4
    const v0, 0x7f0a0309

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mCheckList_1:Landroid/widget/CheckedTextView;

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->okButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->allButtonChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_5
    const v0, 0x7f0a030b

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mCheckList_2:Landroid/widget/CheckedTextView;

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->okButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->allButtonChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_6
    const v0, 0x7f0a0303

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mCheckAll:Landroid/widget/CheckedTextView;

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mCheckList_1:Landroid/widget/CheckedTextView;

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mCheckAll:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mCheckList_2:Landroid/widget/CheckedTextView;

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mCheckAll:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->okButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->allButtonChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_7
    const v0, 0x7f0a030a

    if-ne p1, v0, :cond_8

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "swlp_option"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->startActivity(Landroid/content/Intent;)V

    :cond_8
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "layout_inflater"

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mInflater:Landroid/view/LayoutInflater;

    iget-object p1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v0, 0x7f141498

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0971

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/settings/Rune;->SUPPORT_DIAGNOSTIC_INFO_CHINA_DELTA:Z

    if-eqz v1, :cond_0

    const v2, 0x7f1420a0

    goto :goto_0

    :cond_0
    const v2, 0x7f1409d0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object p0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v1, :cond_1

    const v2, 0x7f1422f2

    goto :goto_1

    :cond_1
    const v2, 0x7f1408bf

    :goto_1
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object p0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v2, 0x7f0a050c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iget-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v2, 0x7f0a050d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mDiagnosticsText:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v2, 0x7f0a06d8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mGlobalLayout:Landroid/widget/LinearLayout;

    iget-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v2, 0x7f0a0371

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mChnLayout:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mDiagnosticsText:Landroid/widget/TextView;

    const v2, 0x7f14149a

    invoke-virtual {p0, v2}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mDiagnosticsText:Landroid/widget/TextView;

    const v2, 0x7f141499

    invoke-virtual {p0, v2}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const-string/jumbo v0, "samsung_errorlog_agree"

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_3

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mGlobalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x7f0a0309

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mCheckList_1:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mCheckList_1:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x7f0a030b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mCheckList_2:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mCheckList_2:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x7f0a0303

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mCheckAll:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mCheckAll:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object p1, p1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v0, 0x7f0a030a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mChnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v5, 0x7f0a089e

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v5, 0x7f0a089f

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mOtherInfoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v5, 0x7f0a00c5

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    iput-object v1, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_5

    move v0, v3

    goto :goto_4

    :cond_5
    move v0, v4

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const v1, 0x7f140cc9

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mAgreeBtn:Landroid/widget/CheckedTextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {v6}, Landroid/widget/CheckedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f14287c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/CheckedTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v5, 0x7f0a0afe

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mOtherInfoAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mOtherInfoAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "samsung_other_info_agree"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_6

    goto :goto_5

    :cond_6
    move v3, v4

    :goto_5
    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mOtherInfoAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x7f0a08a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f140cc2

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v0, 0x7f0a08a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mOtherInfoText:Landroid/widget/TextView;

    const v0, 0x7f140ccb

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportLinkingInfo(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mOtherInfoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mOtherInfoText:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mOtherInfoAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v2}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    :cond_7
    :goto_6
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    const v0, 0x1020019

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->okButton:Landroid/widget/Button;

    sget-boolean v1, Lcom/samsung/android/settings/Rune;->SUPPORT_DIAGNOSTIC_INFO_CHINA_DELTA:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->allButtonChecked()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method
