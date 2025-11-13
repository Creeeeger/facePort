.class public Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FingerprintSettingsEdit.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FingerprintSettingsRenameFragment"
.end annotation


# static fields
.field private static mFingerprintName:Ljava/lang/CharSequence;

.field private static mFingerprintSettingsRenameFragment:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;


# instance fields
.field initTextRunnable:Ljava/lang/Runnable;

.field private mButtonBar:Landroid/view/ViewGroup;

.field private mCancelButton:Landroid/widget/Button;

.field private mDeleteAllDialog:Landroidx/appcompat/app/AlertDialog;

.field private mDeleteDialog:Landroidx/appcompat/app/AlertDialog;

.field private mEditFingerName:Ljava/lang/String;

.field private mEditText:Lcom/google/android/material/textfield/TextInputEditText;

.field private mEnrolledFingerCount:I

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private final mHandler:Landroid/os/Handler;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsKeepEnrollSession:Z

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation
.end field

.field private mLastOrientation:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOriginalName:Ljava/lang/String;

.field private mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

.field private mSaveButton:Landroid/widget/Button;

.field private mSelectedFId:I

.field private mSelectedIndexId:I

.field private mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private mUserId:I


# direct methods
.method public static synthetic $r8$lambda$1tCSEr-YmQS4FZDEJf1uxkibYIA(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->lambda$initBottomButtonBar$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$32XFt_JN_9eZOgfA-USM0Pp_Os0(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->lambda$onViewCreated$1(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$3tN_Pfcz_zkpTICDdvwpnNYDnVQ(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->lambda$deleteAllFingerPrint$12(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DccRwCjQa9cuQdyc6U7Hdna8Xjc(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->lambda$initRenameEditTextView$5(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$EU87zbxJEqquio1YeaRCKdMj-20(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->lambda$deleteAllFingerPrint$11(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$GxAQRo7V5XKpwwa3i_j7jkyBP1A(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$Tb9YjoJ5KH3nSbsIE7QzbjdYlOc(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->lambda$initBottomButtonBar$4(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$TuLBnfIisplkZP3xzHPUquXdqDQ(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->lambda$deleteFingerprint$8(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$f2gyknR0uzBStTVcEujbznTXS0w(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;ZZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->lambda$deleteAllFingerPrint$10(ZZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$fJP6oo5UlixthhuMPLbdqt7xwN0(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->lambda$deleteFingerprint$9(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fmS6PnPuU6cIrENSN-urucMjlHQ(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->lambda$initBottomButtonBar$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xbIdMlAenmLHPniIUYmhvr58qz4(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;Landroid/app/Activity;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->lambda$initRenameEditTextView$6(Landroid/app/Activity;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$xvdc-ywN1fr1H6pjbVdfxAiTxcw(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->lambda$deleteFingerprint$7(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmEditText(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)Lcom/google/android/material/textfield/TextInputEditText;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mEditText:Lcom/google/android/material/textfield/TextInputEditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFingerprintManager(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOriginalName(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mOriginalName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSaveButton(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mSaveButton:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTextInputLayout(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmEditFingerName(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mEditFingerName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mbackToFingerList(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->backToFingerList()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleNext(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->handleNext()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmFingerprintSettingsRenameFragment()Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mFingerprintSettingsRenameFragment:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .line 208
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 193
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mItems:Ljava/util/List;

    .line 195
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 197
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mDeleteAllDialog:Landroidx/appcompat/app/AlertDialog;

    .line 198
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mDeleteDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v0, -0x1

    .line 199
    iput v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mSelectedFId:I

    .line 200
    iput v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mSelectedIndexId:I

    const/4 v0, 0x0

    .line 201
    iput v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mEnrolledFingerCount:I

    .line 205
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mIsKeepEnrollSession:Z

    .line 262
    new-instance v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->initTextRunnable:Ljava/lang/Runnable;

    .line 788
    new-instance v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$3;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mHandler:Landroid/os/Handler;

    .line 817
    new-instance v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$4;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    .line 209
    sput-object p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mFingerprintSettingsRenameFragment:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    return-void
.end method

.method private backToFingerList()V
    .locals 1

    const/4 v0, 0x1

    .line 813
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mIsKeepEnrollSession:Z

    .line 814
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method private cancelAndSessionEnd()V
    .locals 4

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelAndSessionEnd() : mIsKeepEnrollSession -"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mIsKeepEnrollSession:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FpstFingerprintSettingsRenameFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "cancelAndSessionEnd() : Null Activity"

    .line 594
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 599
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mIsKeepEnrollSession:Z

    if-nez v2, :cond_1

    .line 600
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "reason"

    const-string v3, "cancelsession"

    .line 601
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "cancelAndSessionEnd cancel session with intent"

    .line 602
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    .line 604
    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mIsKeepEnrollSession:Z

    .line 606
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->finishFingerprintSettings(ILandroid/content/Intent;)V

    return-void
.end method

.method private deleteAllFingerPrint()V
    .locals 9

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteAllFingerPrint : selectedCount "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FpstFingerprintSettingsRenameFragment"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    sget v0, Lcom/android/settings/R$string;->common_remove:I

    .line 716
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mUserId:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintUnlockEnabled(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v2

    .line 717
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->getFingerprintSupportingFeatures()Z

    move-result v3

    .line 720
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mUserId:I

    invoke-static {v4, v5}, Lcom/samsung/android/settings/knox/KnoxUtils;->isKnoxOrganizationOwnedDevice(Landroid/content/Context;I)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 721
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget v6, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mUserId:I

    invoke-static {v4, v6}, Lcom/samsung/android/settings/knox/KnoxUtils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    .line 723
    sget v0, Lcom/android/settings/R$string;->knox_fp_delete_1_with_warning_popup_message_body:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 724
    sget v4, Lcom/android/settings/R$string;->knox_fp_delete_with_warning_popup_message_title:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 725
    sget v4, Lcom/android/settings/R$string;->knox_fp_cant_delete_popup_positive_button:I

    goto :goto_2

    .line 727
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 728
    sget v4, Lcom/android/settings/R$string;->sec_fingerprint_delete_case3_fingerprints_msg_chn:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    move-object v8, v4

    move v4, v0

    move-object v0, v8

    goto :goto_2

    :cond_1
    if-nez v2, :cond_3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 735
    :cond_2
    sget v4, Lcom/android/settings/R$string;->sec_fingerprint_delete_1_fingerprint_title:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 731
    :cond_3
    :goto_1
    sget v4, Lcom/android/settings/R$string;->sec_fingerprint_delete_1_fingerprint_title_feature:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 732
    sget v4, Lcom/android/settings/R$string;->sec_fingerprint_delete_case3_fingerprints_msg:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 740
    :goto_2
    new-instance v6, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 741
    invoke-virtual {v6, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v5

    .line 742
    invoke-virtual {v5, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v5, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$$ExternalSyntheticLambda8;

    invoke-direct {v5, p0, v2, v3}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;ZZ)V

    .line 743
    invoke-virtual {v0, v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->common_cancel:I

    new-instance v3, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$$ExternalSyntheticLambda9;

    invoke-direct {v3}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$$ExternalSyntheticLambda9;-><init>()V

    .line 758
    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 761
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mDeleteAllDialog:Landroidx/appcompat/app/AlertDialog;

    .line 762
    new-instance v2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$$ExternalSyntheticLambda10;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 765
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mDeleteAllDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/android/settings/R$id;->action_bar:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/Dialog;->semSetAnchor(Landroid/view/View;I)V

    .line 766
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mDeleteAllDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private deleteFingerprintOperation(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 774
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->resetFingerprintSupportingFeatures()V

    .line 777
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->removeFingerprint()V

    const/4 p0, 0x1

    return p0
.end method

.method private finishFingerprintSettings(ILandroid/content/Intent;)V
    .locals 2

    const-string v0, "FpstFingerprintSettingsRenameFragment"

    const-string v1, "finishFingerprintSettings()"

    .line 610
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 614
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetRequestCode()I

    move-result p0

    invoke-virtual {v0, p0, p1, p2}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private getFingerprintSupportingFeatures()Z
    .locals 4

    .line 842
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_secret_box"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 844
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 845
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "fingerprint_webpass"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 846
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "fingerprint_samsungaccount_confirmed"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    return v2
.end method

.method private getScreenOrientation()I
    .locals 1

    const-string v0, "window"

    .line 548
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 549
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    return p0
.end method

.method private handleNext()V
    .locals 4

    .line 619
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mEditText:Lcom/google/android/material/textfield/TextInputEditText;

    if-nez v0, :cond_0

    const-string v0, "FpstFingerprintSettingsRenameFragment"

    const-string v1, "handleNext can\'t get layout resource"

    .line 620
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 625
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 626
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 628
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 632
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_3

    .line 633
    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mSelectedFId:I

    iget v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mUserId:I

    invoke-virtual {v1, v2, v3, v0}, Landroid/hardware/fingerprint/FingerprintManager;->rename(IILjava/lang/String;)V

    .line 635
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_4
    :goto_1
    return-void
.end method

.method private initBottomButtonBar()V
    .locals 3

    .line 335
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->button_bar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mButtonBar:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 338
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 339
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->sec_fingerprint_edit_bottom_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 340
    sget v1, Lcom/android/settings/R$id;->cancel_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mCancelButton:Landroid/widget/Button;

    .line 341
    sget v1, Lcom/android/settings/R$id;->save_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mSaveButton:Landroid/widget/Button;

    .line 343
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mCancelButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 344
    new-instance v2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mSaveButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 352
    new-instance v2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_2

    .line 360
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mButtonBar:Landroid/view/ViewGroup;

    new-instance v2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 371
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mButtonBar:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 372
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mButtonBar:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    const-string p0, "FpstFingerprintSettingsRenameFragment"

    const-string v0, "initBottomButtonBar buttonBar null"

    .line 374
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private initRenameEditTextView()V
    .locals 8

    const-string v0, "FpstFingerprintSettingsRenameFragment"

    const-string v1, "initRenameEditTextView"

    .line 385
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->sec_fingerprint:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 388
    sget v2, Lcom/android/settings/R$string;->sec_fingerprint_maximum_rename_character:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/16 v5, 0x32

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 390
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v4

    sget v6, Lcom/android/settings/R$id;->fingerprint_name_input:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 391
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v4

    sget v6, Lcom/android/settings/R$id;->fingerprint_name_editText:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mEditText:Lcom/google/android/material/textfield/TextInputEditText;

    if-nez v4, :cond_0

    const-string v1, "initRenameEditTextView view element is null"

    .line 394
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->initTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 396
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->initTextRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 400
    :cond_0
    sget-object v4, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mFingerprintName:Ljava/lang/CharSequence;

    if-nez v4, :cond_1

    .line 401
    iget v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mSelectedFId:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_2

    .line 402
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/android/settings/R$string;->sec_fingerprint_list_item:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    iget v6, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mSelectedFId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v7

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 405
    :cond_1
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 408
    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mOriginalName:Ljava/lang/String;

    .line 410
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mEditFingerName:Ljava/lang/String;

    if-eqz v4, :cond_3

    move-object v1, v4

    goto :goto_1

    .line 413
    :cond_3
    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mEditFingerName:Ljava/lang/String;

    .line 416
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setTextIsSelectable(Z)V

    .line 417
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 420
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 422
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v4, "Caught Exception setSelection"

    .line 424
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 429
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 430
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mEditText:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v4, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$$ExternalSyntheticLambda11;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$$ExternalSyntheticLambda11;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)V

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 441
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mEditText:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v4, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$1;

    invoke-direct {v4, p0, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$1;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 490
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 492
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mEditText:Lcom/google/android/material/textfield/TextInputEditText;

    new-array v4, v3, [Landroid/text/InputFilter;

    new-instance v6, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$2;

    invoke-direct {v6, p0, v5, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$2;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;ILjava/lang/String;)V

    aput-object v6, v4, v7

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 505
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 507
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getInputType()I

    move-result v2

    .line 508
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 511
    instance-of v2, v0, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_5

    .line 512
    move-object v2, v0

    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 513
    sget v4, Lcom/android/settings/R$string;->common_edit:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 514
    invoke-virtual {v2, v4, v4}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 517
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mEditText:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v4, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$$ExternalSyntheticLambda12;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$$ExternalSyntheticLambda12;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;Landroid/app/Activity;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 536
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 538
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mSaveButton:Landroid/widget/Button;

    if-eqz v0, :cond_8

    .line 539
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mOriginalName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    .line 542
    :cond_6
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {p0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_4

    .line 540
    :cond_7
    :goto_3
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {p0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_8
    :goto_4
    return-void
.end method

.method private isKeyboardVisibleInLandscape()Z
    .locals 2

    .line 379
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->getScreenOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz p0, :cond_0

    .line 381
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$deleteAllFingerPrint$10(ZZLandroid/content/DialogInterface;I)V
    .locals 3

    const-string p3, "FpstFingerprintSettingsRenameFragment"

    const-string p4, "deRegisterAllFingerprint : removeAllEnrolledFingers"

    .line 744
    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p4, 0x2025

    const/16 v0, 0x2029

    const-wide/16 v1, 0x5

    .line 745
    invoke-static {p4, v0, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    const/4 p4, 0x0

    if-eqz p1, :cond_0

    const-string v0, "deRegisterAllFingerprint : DevicePolicyManager.PASSWORD_QUALITY_UNSPECIFIED"

    .line 748
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string v0, "db_lockscreen_is_smart_lock"

    invoke-static {p3, v0, p4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 755
    :cond_1
    invoke-direct {p0, p4}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->deleteFingerprintOperation(Z)Z

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 753
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->deleteFingerprintOperation(Z)Z

    :goto_1
    return-void
.end method

.method private static synthetic lambda$deleteAllFingerPrint$11(Landroid/content/DialogInterface;I)V
    .locals 0

    const/16 p0, 0x2025

    const/16 p1, 0x2028

    .line 759
    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return-void
.end method

.method private synthetic lambda$deleteAllFingerPrint$12(Landroid/content/DialogInterface;)V
    .locals 1

    .line 762
    check-cast p1, Landroidx/appcompat/app/AlertDialog;

    const/4 v0, -0x1

    .line 763
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    .line 764
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget v0, Lcom/android/settings/R$color;->sec_biometrics_dialog_remove_btn_color:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method private synthetic lambda$deleteFingerprint$7(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 678
    iget p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mSelectedIndexId:I

    add-int/lit8 p1, p1, 0x1

    int-to-long p1, p1

    const/16 v0, 0x2025

    const/16 v1, 0x2029

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 680
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->removeFingerprint()V

    return-void
.end method

.method private static synthetic lambda$deleteFingerprint$8(Landroid/content/DialogInterface;I)V
    .locals 0

    const/16 p0, 0x2025

    const/16 p1, 0x2028

    .line 683
    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return-void
.end method

.method private synthetic lambda$deleteFingerprint$9(Landroid/content/DialogInterface;)V
    .locals 1

    .line 686
    check-cast p1, Landroidx/appcompat/app/AlertDialog;

    const/4 v0, -0x1

    .line 687
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    .line 688
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget v0, Lcom/android/settings/R$color;->sec_biometrics_dialog_remove_btn_color:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method private synthetic lambda$initBottomButtonBar$2(Landroid/view/View;)V
    .locals 1

    const/16 p1, 0x201b

    const/16 v0, 0x2026

    .line 345
    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 347
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->backToFingerList()V

    return-void
.end method

.method private synthetic lambda$initBottomButtonBar$3(Landroid/view/View;)V
    .locals 1

    const/16 p1, 0x201b

    const/16 v0, 0x2027

    .line 353
    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 355
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->handleNext()V

    return-void
.end method

.method private synthetic lambda$initBottomButtonBar$4(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 361
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->isKeyboardVisibleInLandscape()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 362
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mButtonBar:Landroid/view/ViewGroup;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 363
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    sget p1, Lcom/android/settings/R$id;->pwd_body_layout:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 365
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initRenameEditTextView$5(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    if-eq p2, p1, :cond_0

    const/4 p1, 0x6

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 434
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->handleNext()V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$initRenameEditTextView$6(Landroid/app/Activity;Landroid/view/View;Z)V
    .locals 0

    .line 518
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz p2, :cond_2

    if-eqz p3, :cond_0

    .line 521
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mEditText:Lcom/google/android/material/textfield/TextInputEditText;

    const/4 p1, 0x2

    invoke-virtual {p2, p0, p1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 524
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 525
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 527
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mEditText:Lcom/google/android/material/textfield/TextInputEditText;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 528
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestLayout()V

    .line 529
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->initRenameEditTextView()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$1(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 297
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mDeleteDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 298
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    sget p4, Lcom/android/settings/R$id;->action_bar:I

    invoke-virtual {p3, p4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Landroid/app/Dialog;->semSetAnchor(Landroid/view/View;I)V

    .line 300
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mDeleteAllDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p1, :cond_1

    .line 301
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    sget p4, Lcom/android/settings/R$id;->action_bar:I

    invoke-virtual {p3, p4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Landroid/app/Dialog;->semSetAnchor(Landroid/view/View;I)V

    .line 304
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->-$$Nest$sfgetmActionbar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->-$$Nest$sfgetmOptionsMenu()Landroid/view/Menu;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 305
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->isKeyboardVisibleInLandscape()Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_3

    .line 306
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->-$$Nest$sfgetmActionbar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 307
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->-$$Nest$sfgetmActionbar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    sget p4, Lcom/android/settings/R$string;->bluetooth_rename_button:I

    invoke-virtual {p1, p4}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 309
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->-$$Nest$sfgetmOptionsMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 310
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->-$$Nest$sfgetmOptionsMenu()Landroid/view/Menu;

    move-result-object p1

    const/4 p4, 0x2

    sget p5, Lcom/android/settings/R$string;->lockpassword_cancel_label:I

    invoke-interface {p1, p3, p4, p3, p5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 311
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->-$$Nest$sfgetmOptionsMenu()Landroid/view/Menu;

    move-result-object p1

    const/4 p4, 0x3

    sget p5, Lcom/android/settings/R$string;->menu_save:I

    invoke-interface {p1, p3, p4, p2, p5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 313
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mEditText:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz p1, :cond_4

    .line 314
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 315
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mOriginalName:Ljava/lang/String;

    .line 316
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 317
    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->-$$Nest$sfgetmOptionsMenu()Landroid/view/Menu;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 321
    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->-$$Nest$sfgetmActionbar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 322
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->-$$Nest$sfgetmActionbar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    sget p4, Lcom/android/settings/R$string;->common_edit:I

    invoke-virtual {p1, p4}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 323
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->-$$Nest$sfgetmOptionsMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 324
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->-$$Nest$sfgetmOptionsMenu()Landroid/view/Menu;

    move-result-object p1

    const/4 p4, 0x4

    sget p5, Lcom/android/settings/R$string;->common_remove:I

    invoke-interface {p1, p3, p4, p3, p5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 326
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mButtonBar:Landroid/view/ViewGroup;

    if-eqz p0, :cond_4

    .line 327
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private removeFingerprint()V
    .locals 4

    .line 783
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mItems:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mSelectedIndexId:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    .line 784
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeFingerprint : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    const-string v2, "FpstFingerprintSettingsRenameFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mUserId:I

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    invoke-virtual {v1, v0, v2, p0}, Landroid/hardware/fingerprint/FingerprintManager;->remove(Landroid/hardware/fingerprint/Fingerprint;ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    return-void
.end method

.method private resetFingerprintSupportingFeatures()V
    .locals 3

    .line 851
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_secret_box"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 853
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_webpass"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 855
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_fingerIndex"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 857
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_used_samsungaccount"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 859
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_samsungaccount_confirmed"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 861
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->setFingerprintScreenLockDisable()V

    return-void
.end method

.method private setFingerprintScreenLockDisable()V
    .locals 2

    const-string v0, "FpstFingerprintSettingsRenameFragment"

    const-string v1, "setFingerprintScreenLockDisable"

    .line 865
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mUserId:I

    invoke-static {v0, v1, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->removeFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    return-void
.end method

.method private showAlertMessage()V
    .locals 3

    .line 697
    sget v0, Lcom/android/settings/R$string;->knox_fp_cant_delete_popup_message_body:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 698
    sget v1, Lcom/android/settings/R$string;->knox_fp_cant_delete_popup_message_title:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 699
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 700
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 701
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x104000a

    const/4 v1, 0x0

    .line 702
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 703
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public deleteFingerprint()Z
    .locals 4

    const/16 v0, 0x2025

    .line 658
    invoke-static {v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V

    .line 659
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mEditText:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v1, :cond_0

    .line 660
    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 662
    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mEnrolledFingerCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 664
    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mUserId:I

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 665
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mUserId:I

    invoke-static {v0, v2, v3}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintUnlockEnabled(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v0

    .line 666
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mUserId:I

    invoke-static {v2, v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 667
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->showAlertMessage()V

    return v1

    .line 673
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->deleteAllFingerPrint()V

    goto :goto_0

    .line 675
    :cond_2
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/android/settings/R$string;->sec_fingerprint_delete_case1_1_fingerprint_msg:I

    .line 676
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->common_remove:I

    new-instance v3, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)V

    .line 677
    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->common_cancel:I

    new-instance v3, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$$ExternalSyntheticLambda3;-><init>()V

    .line 682
    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 685
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mDeleteDialog:Landroidx/appcompat/app/AlertDialog;

    .line 686
    new-instance v2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 689
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mDeleteDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/android/settings/R$id;->action_bar:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/Dialog;->semSetAnchor(Landroid/view/View;I)V

    .line 690
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mDeleteDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :goto_0
    return v1
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xfe

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 214
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "FpstFingerprintSettingsRenameFragment"

    const-string v0, "onCreate"

    .line 215
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 218
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mUserId:I

    const-string v1, "selected_id"

    const/4 v2, -0x1

    .line 219
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mSelectedFId:I

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUserId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSelectedFId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mSelectedFId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 224
    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mItems:Ljava/util/List;

    .line 225
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mEnrolledFingerCount:I

    .line 226
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->getScreenOrientation()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mLastOrientation:I

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate mEnrolledFingerCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mEnrolledFingerCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 230
    :goto_0
    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mEnrolledFingerCount:I

    if-ge v0, v1, :cond_1

    .line 231
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mSelectedFId:I

    if-ne v1, v2, :cond_0

    .line 232
    iput v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mSelectedIndexId:I

    .line 233
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mFingerprintName:Ljava/lang/CharSequence;

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate mSelectedIndexId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mSelectedIndexId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    :cond_1
    :goto_1
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 p1, 0x1

    .line 241
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    .line 243
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const-string v0, "FpstFingerprintSettingsRenameFragment"

    const-string v1, "onCreateView"

    .line 268
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 271
    instance-of v2, v1, Lcom/android/settings/core/SettingsBaseActivity;

    if-eqz v2, :cond_1

    .line 272
    move-object v2, v1

    check-cast v2, Lcom/android/settings/core/SettingsBaseActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->disableExtendedAppBar(Z)V

    .line 274
    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->-$$Nest$sfputmActionbar(Landroidx/appcompat/app/ActionBar;)V

    .line 275
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->-$$Nest$sfgetmActionbar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 276
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->-$$Nest$sfgetmActionbar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 277
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->-$$Nest$sfgetmActionbar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->common_edit:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    goto :goto_0

    :cond_0
    const-string v1, " onCreateView mActionbar is null"

    .line 279
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    const-string v0, "finger_name"

    .line 284
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mEditFingerName:Ljava/lang/String;

    .line 287
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "FpstFingerprintSettingsRenameFragment"

    const-string v1, "onDestroy"

    .line 640
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-eqz p3, :cond_1

    .line 646
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    const/16 p1, 0x17

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 649
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->handleNext()V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onPause()V
    .locals 4

    .line 561
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    const-string v0, "FpstFingerprintSettingsRenameFragment"

    const-string v1, "onPause"

    .line 562
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mEditText:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v0, :cond_1

    .line 565
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->ConnectedMobileKeypad(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    goto :goto_0

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 573
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 574
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->initTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 577
    :cond_2
    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mLastOrientation:I

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->getScreenOrientation()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 578
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_3

    .line 579
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->cancelAndSessionEnd()V

    .line 581
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->getScreenOrientation()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mLastOrientation:I

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 554
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "FpstFingerprintSettingsRenameFragment"

    const-string v1, "onResume"

    .line 555
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->updatePreferences()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 248
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 249
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mEditFingerName:Ljava/lang/String;

    const-string v0, "finger_name"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 586
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 292
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 294
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->initBottomButtonBar()V

    .line 296
    new-instance p2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method updatePreferences()V
    .locals 3

    .line 253
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 258
    :cond_0
    sget v0, Lcom/android/settings/R$xml;->sec_fingerprint_edit_fragment:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 259
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->initTextRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
