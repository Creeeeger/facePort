.class public Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;
.super Lcom/android/internal/app/AlertActivity;
.source "ReportDiagnosticinfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field mAgreeBtn:Landroid/widget/CheckedTextView;

.field mCheckList_1:Landroid/widget/CheckedTextView;

.field mCheckList_2:Landroid/widget/CheckedTextView;

.field mCheckList_3:Landroid/widget/CheckedTextView;

.field mChnLayout:Landroid/widget/LinearLayout;

.field mDetailView_1:Landroid/widget/TextView;

.field mDetailView_2:Landroid/widget/TextView;

.field mDetailView_3:Landroid/widget/TextView;

.field mDiagnosticsText:Landroid/widget/TextView;

.field mDiagonosticsInfoBody:Landroid/widget/ScrollView;

.field mGlobalLayout:Landroid/widget/LinearLayout;

.field private mInflater:Landroid/view/LayoutInflater;

.field mIsNightMode:Z

.field mLearnMore:Landroid/widget/LinearLayout;

.field mLearnMoreText:Landroid/widget/TextView;

.field mOtherInfoAgreeBtn:Landroid/widget/CheckedTextView;

.field mOtherInfoLayout:Landroid/widget/LinearLayout;

.field mOtherInfoText:Landroid/widget/TextView;

.field okButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private allButtonChecked()Z
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mCheckList_1:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mCheckList_2:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mCheckList_3:Landroid/widget/CheckedTextView;

    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private makeAddOptionalString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 184
    sget p1, Lcom/android/settings/R$string;->diagnostic_optional:I

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private startDiagnosticDataActivity(I)V
    .locals 3

    .line 234
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 235
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.settings.privacy.DiagnosticDataActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "swlp_option"

    .line 236
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 237
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p2, p2, 0x30

    const/16 v0, 0x20

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mIsNightMode:Z

    if-eqz p2, :cond_1

    const p2, 0x10302d1

    goto :goto_1

    :cond_1
    const p2, 0x10302d2

    .line 90
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/app/AlertActivity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_1

    .line 244
    :cond_0
    sget-boolean p1, Lcom/samsung/android/settings/Rune;->SUPPORT_DIAGNOSTIC_INFO_CHINA_DELTA:Z

    if-eqz p1, :cond_1

    .line 245
    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->allButtonChecked()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/security/SecurityUtils;->setDiagnostic(Landroid/content/Context;Z)V

    goto :goto_0

    .line 247
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mOtherInfoAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {p2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/security/SecurityUtils;->setDiagnostic(Landroid/content/Context;ZZ)V

    :goto_0
    const/16 p1, 0x1f4a

    const/16 p2, 0x3e8

    .line 249
    invoke-static {p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 256
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 195
    sget v0, Lcom/android/settings/R$id;->learn_more:I

    if-ne p1, v0, :cond_0

    .line 196
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 197
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.settings.privacy.DiagnosticDataActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 199
    :cond_0
    sget v0, Lcom/android/settings/R$id;->learn_more_2:I

    if-ne p1, v0, :cond_1

    .line 200
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 201
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.settings.privacy.InformationLinkingActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 203
    :cond_1
    sget v0, Lcom/android/settings/R$id;->agree_btn:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_2

    .line 204
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 205
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p1

    if-nez p1, :cond_a

    .line 206
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mOtherInfoAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {p0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto/16 :goto_0

    .line 208
    :cond_2
    sget v0, Lcom/android/settings/R$id;->other_info_agree_Btn:I

    if-ne p1, v0, :cond_4

    .line 209
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mOtherInfoAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 210
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mOtherInfoAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {p0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto/16 :goto_0

    .line 212
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mOtherInfoAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 213
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {p0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0

    .line 215
    :cond_4
    sget v0, Lcom/android/settings/R$id;->check_list_1:I

    if-ne p1, v0, :cond_5

    .line 216
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mCheckList_1:Landroid/widget/CheckedTextView;

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 217
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->okButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->allButtonChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 218
    :cond_5
    sget v0, Lcom/android/settings/R$id;->check_list_2:I

    if-ne p1, v0, :cond_6

    .line 219
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mCheckList_2:Landroid/widget/CheckedTextView;

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 220
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->okButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->allButtonChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 221
    :cond_6
    sget v0, Lcom/android/settings/R$id;->check_list_3:I

    if-ne p1, v0, :cond_7

    .line 222
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mCheckList_3:Landroid/widget/CheckedTextView;

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 223
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->okButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->allButtonChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 224
    :cond_7
    sget v0, Lcom/android/settings/R$id;->check_list_1_detail:I

    if-ne p1, v0, :cond_8

    .line 225
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->startDiagnosticDataActivity(I)V

    goto :goto_0

    .line 226
    :cond_8
    sget v0, Lcom/android/settings/R$id;->check_list_2_detail:I

    if-ne p1, v0, :cond_9

    .line 227
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->startDiagnosticDataActivity(I)V

    goto :goto_0

    .line 228
    :cond_9
    sget v0, Lcom/android/settings/R$id;->check_list_3_detail:I

    if-ne p1, v0, :cond_a

    const/4 p1, 0x2

    .line 229
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->startDiagnosticDataActivity(I)V

    :cond_a
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 95
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "layout_inflater"

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mInflater:Landroid/view/LayoutInflater;

    .line 97
    iget-object p1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 98
    sget v0, Lcom/android/settings/R$string;->label_diagnostics_info:I

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 99
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/settings/R$layout;->sec_report_diagnostic_info:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 100
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->common_ok:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 101
    iput-object p0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 102
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->cancel:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 103
    iput-object p0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 105
    iget-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->diagnostics_info_body:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mDiagonosticsInfoBody:Landroid/widget/ScrollView;

    .line 106
    iget-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->diagnostics_info_message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mDiagnosticsText:Landroid/widget/TextView;

    .line 107
    iget-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->global_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mGlobalLayout:Landroid/widget/LinearLayout;

    .line 108
    iget-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->chn_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mChnLayout:Landroid/widget/LinearLayout;

    .line 110
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mDiagnosticsText:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->label_diagnostics_info_text_dream_tablet:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mDiagnosticsText:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->label_diagnostics_info_text_dream_phone:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :goto_0
    sget-boolean v0, Lcom/samsung/android/settings/Rune;->SUPPORT_DIAGNOSTIC_INFO_CHINA_DELTA:Z

    const-string v1, "samsung_errorlog_agree"

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 117
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    .line 118
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mGlobalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 119
    iget-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->check_list_1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mCheckList_1:Landroid/widget/CheckedTextView;

    .line 120
    invoke-virtual {v0, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mCheckList_1:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 122
    iget-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->check_list_2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mCheckList_2:Landroid/widget/CheckedTextView;

    .line 123
    invoke-virtual {v0, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mCheckList_2:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 125
    iget-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->check_list_3:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mCheckList_3:Landroid/widget/CheckedTextView;

    .line 126
    invoke-virtual {v0, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mCheckList_3:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 129
    iget-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->check_list_1_detail:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mDetailView_1:Landroid/widget/TextView;

    .line 130
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->check_list_2_detail:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mDetailView_2:Landroid/widget/TextView;

    .line 132
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object p1, p1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->check_list_3_detail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mDetailView_3:Landroid/widget/TextView;

    .line 134
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mChnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 137
    iget-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    sget v5, Lcom/android/settings/R$id;->learn_more:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mLearnMore:Landroid/widget/LinearLayout;

    .line 138
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    sget v5, Lcom/android/settings/R$id;->learn_more_2:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mOtherInfoLayout:Landroid/widget/LinearLayout;

    .line 141
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    sget v5, Lcom/android/settings/R$id;->agree_btn:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mAgreeBtn:Landroid/widget/CheckedTextView;

    .line 144
    invoke-virtual {v0, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_3

    move v1, v3

    goto :goto_2

    :cond_3
    move v1, v4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 146
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->makeAddOptionalString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mAgreeBtn:Landroid/widget/CheckedTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {v5}, Landroid/widget/CheckedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$string;->sec_wifi_checkbox_tss:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->other_info_agree_Btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mOtherInfoAgreeBtn:Landroid/widget/CheckedTextView;

    .line 152
    invoke-virtual {v0, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mOtherInfoAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "samsung_other_info_agree"

    invoke-static {v1, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_4

    goto :goto_3

    :cond_4
    move v3, v4

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 154
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mOtherInfoAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->makeAddOptionalString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->learn_more_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mLearnMoreText:Landroid/widget/TextView;

    .line 157
    sget v1, Lcom/android/settings/R$string;->diagnostic_data:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object p1, p1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->learn_more_2_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mOtherInfoText:Landroid/widget/TextView;

    .line 160
    sget v0, Lcom/android/settings/R$string;->diagnostic_other_info_linked:I

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    invoke-static {p0}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportLinkingInfo(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 163
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mOtherInfoText:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->mOtherInfoAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v2}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 168
    :cond_5
    :goto_4
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 169
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 174
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    const v0, 0x1020019

    .line 175
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->okButton:Landroid/widget/Button;

    .line 176
    sget-boolean v1, Lcom/samsung/android/settings/Rune;->SUPPORT_DIAGNOSTIC_INFO_CHINA_DELTA:Z

    if-eqz v1, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/ReportDiagnosticinfo;->allButtonChecked()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method
