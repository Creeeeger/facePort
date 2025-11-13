.class public Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$FingerprintTemplateChangeDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "FingerprintSettingsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FingerprintTemplateChangeDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$FingerprintTemplateChangeDialog$FingerprintTemplateChangeDialogListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mListener:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$FingerprintTemplateChangeDialog$FingerprintTemplateChangeDialogListener;

.field private mUserId:I


# direct methods
.method public static synthetic $r8$lambda$Ra5kaWNHhCyEEtqQb7Gt5qkua1U(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$FingerprintTemplateChangeDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$FingerprintTemplateChangeDialog;->lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$p8mX5sBFv9W3BUHN1BGNMmuGoyg(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$FingerprintTemplateChangeDialog;->lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 631
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(ILandroid/hardware/fingerprint/FingerprintManager;)V
    .locals 0

    .line 635
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 636
    iput p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$FingerprintTemplateChangeDialog;->mUserId:I

    .line 637
    iput-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$FingerprintTemplateChangeDialog;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-void
.end method

.method private synthetic lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "FpstFingerprintTemplateChangeDialog"

    const-string p2, "FingerprintTemplateChangeDialog : remove all fingerprints"

    .line 693
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$FingerprintTemplateChangeDialog;->mListener:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$FingerprintTemplateChangeDialog$FingerprintTemplateChangeDialogListener;

    invoke-interface {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$FingerprintTemplateChangeDialog$FingerprintTemplateChangeDialogListener;->deleteAllFingerprints()V

    return-void
.end method

.method private static synthetic lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p0, "FpstFingerprintTemplateChangeDialog"

    const-string p1, "FingerprintTemplateChangeDialog : finish the fragment"

    .line 697
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 646
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 647
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$FingerprintTemplateChangeDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    const-string p1, "FpstFingerprintTemplateChangeDialog"

    const-string v0, "onCreateDialog"

    .line 652
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$FingerprintTemplateChangeDialog;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$FingerprintTemplateChangeDialog;->mContext:Landroid/content/Context;

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$FingerprintTemplateChangeDialog;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$FingerprintTemplateChangeDialog;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    .line 661
    iget v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$FingerprintTemplateChangeDialog;->mUserId:I

    invoke-virtual {v0, v3}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 663
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 664
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showTemplateChangeDialog : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v0, v1

    .line 667
    :goto_0
    iget p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$FingerprintTemplateChangeDialog;->mUserId:I

    if-nez p1, :cond_4

    .line 668
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$FingerprintTemplateChangeDialog;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->semHasNewMatcher(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 669
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$FingerprintTemplateChangeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->sec_fingerprint_template_changed_dialog_desc_personal_and_workspace:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    if-le v0, v2, :cond_3

    .line 672
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$FingerprintTemplateChangeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->sec_fingerprint_template_changed_dialog_desc_fingeprints:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 673
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$FingerprintTemplateChangeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->sec_fingerprint_template_changed_dialog_desc_fingeprint:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 676
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$FingerprintTemplateChangeDialog;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p1, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 677
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$FingerprintTemplateChangeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->sec_fingerprint_template_changed_dialog_desc_personal_and_workspace:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    if-le v0, v2, :cond_6

    .line 680
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$FingerprintTemplateChangeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->sec_fingerprint_template_changed_dialog_desc_fingeprints:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 681
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$FingerprintTemplateChangeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->sec_fingerprint_template_changed_dialog_desc_fingeprint:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    :goto_1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    aput-object p1, v0, v1

    const-string p1, " "

    aput-object p1, v0, v2

    const/4 p1, 0x2

    .line 686
    sget v1, Lcom/android/settings/R$string;->sec_fingerprint_template_changed_dialog_desc_msg:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 688
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->sec_fingerprint_template_changed_noti_title:I

    .line 689
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 690
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->sec_fingerprint_template_changed_dialog_button:I

    new-instance v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$FingerprintTemplateChangeDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$FingerprintTemplateChangeDialog$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$FingerprintTemplateChangeDialog;)V

    .line 691
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->cancel:I

    new-instance v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$FingerprintTemplateChangeDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$FingerprintTemplateChangeDialog$$ExternalSyntheticLambda1;-><init>()V

    .line 696
    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 698
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .locals 2

    const-string v0, "FpstFingerprintTemplateChangeDialog"

    const-string v1, "onDestroyView"

    .line 708
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public setTurnOnDialogFragmentListener(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$FingerprintTemplateChangeDialog$FingerprintTemplateChangeDialogListener;)V
    .locals 0

    .line 704
    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$FingerprintTemplateChangeDialog;->mListener:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$FingerprintTemplateChangeDialog$FingerprintTemplateChangeDialogListener;

    return-void
.end method
