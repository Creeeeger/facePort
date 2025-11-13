.class public final synthetic Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;

    return-void
.end method


# virtual methods
.method public final onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 11

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x2019

    const/16 v1, 0x2024

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;II)V

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mDeleteAllDialog:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;

    const/4 v0, 0x0

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mDeleteDialog:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;

    if-eqz p1, :cond_0

    goto/16 :goto_a

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->getNumOfCheckedList()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectedCount:I

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x2025

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p1, v1, :cond_e

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mUserId:I

    invoke-static {p1, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintUnlockEnabled(Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result p1

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mUserId:I

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget v6, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mUserId:I

    invoke-static {v1, v6}, Lcom/samsung/android/settings/knox/KnoxUtils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectedCount:I

    if-ne p1, v5, :cond_1

    const p1, 0x7f14144f

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f141450

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const p1, 0x7f14144d

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f14144e

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x104000a

    invoke-virtual {p0, p1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_a

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->getNumOfCheckedList()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "deleteAllFingerPrint : selectedCount "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "FpstFingerprintSettingsMultiSelect"

    invoke-static {v6, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v6, 0x7f1423cf

    invoke-virtual {p0, v6, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v8, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mUserId:I

    invoke-static {v7, v8}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintUnlockEnabled(Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "fingerprint_secret_box"

    invoke-static {v8, v9, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eq v8, v5, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "fingerprint_webpass"

    invoke-static {v8, v9, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eq v8, v5, :cond_5

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "fingerprint_samsungaccount_confirmed"

    invoke-static {v8, v9, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v5, :cond_4

    goto :goto_1

    :cond_4
    move v8, v0

    goto :goto_2

    :cond_5
    :goto_1
    move v8, v5

    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    iget v10, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mUserId:I

    invoke-static {v9, v10}, Lcom/samsung/android/settings/knox/KnoxUtils;->isKnoxOrganizationOwnedDevice(Landroid/content/Context;I)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    iget v10, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mUserId:I

    invoke-static {v9, v10}, Lcom/samsung/android/settings/knox/KnoxUtils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v9

    if-eqz v9, :cond_7

    if-eqz v7, :cond_7

    iget-object v6, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne p1, v6, :cond_d

    if-ne p1, v5, :cond_6

    const p1, 0x7f141452

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_3
    move-object v1, p1

    goto :goto_4

    :cond_6
    const p1, 0x7f141453

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :goto_4
    const p1, 0x7f141455

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v3, 0x7f141451

    goto :goto_8

    :cond_7
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_8

    const p1, 0x7f1423ce

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_8
    if-nez v7, :cond_b

    if-eqz v8, :cond_9

    goto :goto_5

    :cond_9
    if-ne p1, v5, :cond_a

    const p1, 0x7f1423c8

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v6, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_b
    :goto_5
    if-ne p1, v5, :cond_c

    const p1, 0x7f1423c9

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_6
    move-object v4, p1

    goto :goto_7

    :cond_c
    const p1, 0x7f1423ca

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :goto_7
    const p1, 0x7f1423cd

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_d
    :goto_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;I)V

    new-instance p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;

    new-instance v2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$4;

    invoke-direct {v2, p0, v7, v8}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$4;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;ZZ)V

    invoke-direct {p1}, Landroidx/fragment/app/DialogFragment;-><init>()V

    iput-object v4, p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mTitle:Ljava/lang/String;

    iput-object v1, p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mMsg:Ljava/lang/String;

    iput v3, p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mButton:I

    iput-object v2, p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mListener:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mDeleteAllDialog:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v1, "fpstDeleteAllDialog"

    invoke-virtual {p1, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_a

    :cond_e
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;I)V

    iget p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectedCount:I

    if-ne p1, v5, :cond_f

    const p1, 0x7f1423cb

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_9

    :cond_f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v1, 0x7f1423cc

    invoke-virtual {p0, v1, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_9
    new-instance v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;

    new-instance v2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$2;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;)V

    invoke-direct {v1}, Landroidx/fragment/app/DialogFragment;-><init>()V

    iput v3, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mButton:I

    iput-object v4, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mTitle:Ljava/lang/String;

    iput-object p1, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mMsg:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mListener:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mDeleteDialog:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p1, "fpstDeleteSomeDialog"

    invoke-virtual {v1, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_10
    :goto_a
    return v0
.end method
