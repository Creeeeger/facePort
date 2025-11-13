.class public Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;
.super Lcom/android/settings/SettingsActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;
    }
.end annotation


# static fields
.field public static mActionbar:Landroidx/appcompat/app/ActionBar; = null

.field public static mActivity:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit; = null

.field public static mDeleteAllDialog:Landroidx/appcompat/app/AlertDialog; = null

.field public static mDeleteDialog:Landroidx/appcompat/app/AlertDialog; = null

.field public static mEditText:Lcom/google/android/material/textfield/TextInputEditText; = null

.field public static mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager; = null

.field public static mFingerprintName:Ljava/lang/CharSequence; = null

.field public static final mHandler:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$2;

.field public static mInputMethodManager:Landroid/view/inputmethod/InputMethodManager; = null

.field public static mOptionsMenu:Landroid/view/Menu; = null

.field public static mSelectedFId:I = -0x1

.field public static mUserId:I


# instance fields
.field public mEnrolledFingerCount:I

.field public mItems:Ljava/util/List;

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mRemoveCallback:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$1;

.field public mSelectedIndexId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$2;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mHandler:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mItems:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mSelectedIndexId:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mEnrolledFingerCount:I

    new-instance v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$1;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mRemoveCallback:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$1;

    return-void
.end method


# virtual methods
.method public final getIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-class p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, ":settings:show_fragment"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public final isValidFragment(Ljava/lang/String;)Z
    .locals 0

    const-class p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "FpstFingerprintSettingsRename"

    const-string/jumbo v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isBlockedInMultiWindowMode(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "FpstFingerprintSettingsRename"

    const-string/jumbo v0, "onCreate"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sput-object p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mActivity:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;

    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isInMultiWindow(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->isSplitScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isEnabledBiometricsMenuInDexMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    const-string/jumbo v1, "selected_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mSelectedFId:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Selected Finger ID : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mSelectedFId:I

    invoke-static {v1, v3, p1}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    sget v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mSelectedFId:I

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const-string v1, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mUserId:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mUserId:I

    invoke-static {v0, v1, p1}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    sget-object v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_7

    sget v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    :cond_4
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-object v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget v2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mUserId:I

    invoke-virtual {v0, v2}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mEnrolledFingerCount:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Enrolled FingerCount: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mEnrolledFingerCount:I

    invoke-static {v0, v2, p1}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :goto_0
    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mEnrolledFingerCount:I

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v0

    sget v2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mSelectedFId:I

    if-ne v0, v2, :cond_5

    iput v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mSelectedIndexId:I

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mFingerprintName:Ljava/lang/CharSequence;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Selected IndexId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mSelectedIndexId:I

    invoke-static {v0, p0, p1}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return-void

    :cond_7
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    sput-object p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const/4 v0, 0x4

    const v1, 0x7f1409d2

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public final onDestroy()V
    .locals 2

    const-string v0, "FpstFingerprintSettingsRename"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sput-object v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mActivity:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onDestroy()V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10

    sget-object v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mFingerprintSettingsRenameFragment:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_d

    const/4 v2, 0x3

    if-eq v1, v2, :cond_c

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    const v0, 0x102002c

    if-eq v1, v0, :cond_0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v3

    :cond_1
    const/16 p1, 0x2025

    invoke-static {p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V

    sget-object p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    sget-object v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mEditText:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    iget p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mEnrolledFingerCount:I

    const v1, 0x7f0a0068

    const v2, 0x7f1409b6

    const v4, 0x7f1409d2

    if-ne p1, v3, :cond_b

    sget p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mUserId:I

    const/4 v5, 0x0

    if-eqz p1, :cond_3

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v6, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mUserId:I

    invoke-static {p1, v6}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintUnlockEnabled(Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result p1

    sget v6, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mUserId:I

    invoke-static {p0, v6}, Lcom/samsung/android/settings/knox/KnoxUtils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz p1, :cond_3

    const p1, 0x7f14144f

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f141450

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object p0, v1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    iput-object p1, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    const p0, 0x104000a

    invoke-virtual {v1, p0, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_3

    :cond_3
    const-string p1, "FpstFingerprintSettingsRename"

    const-string v6, "deleteAllFingerPrint : selectedCount 1"

    invoke-static {p1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v6, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mUserId:I

    invoke-static {p1, v6}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintUnlockEnabled(Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result p1

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "fingerprint_secret_box"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v3, :cond_5

    invoke-static {p0}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "fingerprint_webpass"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v3, :cond_5

    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "fingerprint_samsungaccount_confirmed"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v3, :cond_6

    :cond_5
    move v0, v3

    :cond_6
    sget v6, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mUserId:I

    invoke-static {p0, v6}, Lcom/samsung/android/settings/knox/KnoxUtils;->isKnoxOrganizationOwnedDevice(Landroid/content/Context;I)Z

    move-result v6

    if-eqz v6, :cond_7

    sget v6, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mUserId:I

    invoke-static {p0, v6}, Lcom/samsung/android/settings/knox/KnoxUtils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz p1, :cond_7

    const v4, 0x7f141452

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f141455

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f141451

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v6

    if-eqz v6, :cond_8

    const v6, 0x7f1423ce

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_0
    move-object v9, v6

    move v6, v4

    move-object v4, v9

    goto :goto_2

    :cond_8
    if-nez p1, :cond_a

    if-eqz v0, :cond_9

    goto :goto_1

    :cond_9
    const v6, 0x7f1423c8

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_a
    :goto_1
    const v5, 0x7f1423c9

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f1423cd

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :goto_2
    new-instance v7, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v8, v7, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object v5, v8, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    iput-object v4, v8, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    new-instance v4, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, p1, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;ZZ)V

    invoke-virtual {v7, v6, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$$ExternalSyntheticLambda1;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v7, v2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v7}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    sput-object p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mDeleteAllDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;I)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    sget-object p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mDeleteAllDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0, v3}, Landroid/app/Dialog;->semSetAnchor(Landroid/view/View;I)V

    sget-object p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mDeleteAllDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_3

    :cond_b
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1423cb

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object v0, v5, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    new-instance v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;)V

    invoke-virtual {p1, v4, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$$ExternalSyntheticLambda1;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p1, v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    sput-object p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mDeleteDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;I)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    sget-object p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mDeleteDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0, v3}, Landroid/app/Dialog;->semSetAnchor(Landroid/view/View;I)V

    sget-object p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mDeleteDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :goto_3
    return v3

    :cond_c
    invoke-virtual {v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->handleNext()V

    return v3

    :cond_d
    iput-boolean v3, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mIsKeepEnrollSession:Z

    sget-object p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mActivity:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :cond_e
    return v3
.end method

.method public final onPause()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onPause()V

    const-string v0, "FpstFingerprintSettingsRename"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "reason"

    const-string v2, "cancelsession"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public final removeFingerprint()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mItems:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mSelectedIndexId:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "removeFingerprint : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FpstFingerprintSettingsRename"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget v2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mUserId:I

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mRemoveCallback:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$1;

    invoke-virtual {v1, v0, v2, p0}, Landroid/hardware/fingerprint/FingerprintManager;->remove(Landroid/hardware/fingerprint/Fingerprint;ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    return-void
.end method
