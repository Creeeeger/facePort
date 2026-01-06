.class public abstract Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;
.super Landroid/widget/LinearLayout;
.source "AuthCredentialView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView$ErrorTimer;,
        Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView$UserType;
    }
.end annotation


# static fields
.field private static final ERROR_DURATION_MS:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "BSS_AuthCredentialView"

.field static final USER_TYPE_MANAGED_PROFILE:I = 0x2

.field static final USER_TYPE_PRIMARY:I = 0x1

.field static final USER_TYPE_SECONDARY:I = 0x3


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAuthCredentialGuiHelper:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialGuiHelper;

.field protected final mClearErrorRunnable:Ljava/lang/Runnable;

.field protected mCredentialType:I

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field protected mErrorTimer:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView$ErrorTimer;

.field protected mErrorView:Landroid/widget/TextView;

.field protected final mHandler:Landroid/os/Handler;

.field protected mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

.field protected mIsPasswordShown:Z

.field protected final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mOnKeyListener:Landroid/view/View$OnKeyListener;

.field protected mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation
.end field

.field private mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView$1;-><init>(Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView$2;-><init>(Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mClearErrorRunnable:Ljava/lang/Runnable;

    const-string v0, "BSS_AuthCredentialView"

    const-string v1, "AuthCredentialView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mUserManager:Landroid/os/UserManager;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method

.method private applyRotationGui()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mAuthCredentialGuiHelper:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialGuiHelper;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialGuiHelper;->resizeMainLayout()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mAuthCredentialGuiHelper:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialGuiHelper;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialGuiHelper;->applyRotationGui()V

    :goto_0
    return-void
.end method

.method private static getDescription(Landroid/hardware/biometrics/PromptInfo;)Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getDeviceCredentialDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private static getLastAttemptBeforeWipeDeviceMessageRes(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const v0, 0x7f100027

    return v0

    :pswitch_0
    const v0, 0x7f10002a

    return v0

    :pswitch_1
    const v0, 0x7f10002d

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getLastAttemptBeforeWipeMessageRes(II)I
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized user type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p1}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->getLastAttemptBeforeWipeUserMessageRes(I)I

    move-result v0

    return v0

    :pswitch_1
    invoke-static {p1}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->getLastAttemptBeforeWipeProfileMessageRes(I)I

    move-result v0

    return v0

    :pswitch_2
    invoke-static {p1}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->getLastAttemptBeforeWipeDeviceMessageRes(I)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getLastAttemptBeforeWipeProfileMessageRes(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const v0, 0x7f100028

    return v0

    :pswitch_0
    const v0, 0x7f10002b

    return v0

    :pswitch_1
    const v0, 0x7f10002e

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getLastAttemptBeforeWipeUserMessageRes(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const v0, 0x7f100029

    return v0

    :pswitch_0
    const v0, 0x7f10002c

    return v0

    :pswitch_1
    const v0, 0x7f10002f

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getNowWipingMessageRes(I)I
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized user type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const v0, 0x7f100025

    return v0

    :pswitch_1
    const v0, 0x7f100024

    return v0

    :pswitch_2
    const v0, 0x7f100023

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getSubtitle(Landroid/hardware/biometrics/PromptInfo;)Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getDeviceCredentialSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private static getTitle(Landroid/hardware/biometrics/PromptInfo;)Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getDeviceCredentialTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private getUserTypeForWipe()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getProfileWithMinimumFailedPasswordsForWipe(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    return v1

    :cond_1
    const/4 v1, 0x3

    return v1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setTextOrHide(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v0, p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->notifyAccessibilityContentChanged(Landroid/view/accessibility/AccessibilityManager;Landroid/view/ViewGroup;)V

    return-void
.end method

.method private showLastAttemptBeforeWipeDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100026

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->getUserTypeForWipe()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mCredentialType:I

    invoke-static {v1, v2}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->getLastAttemptBeforeWipeMessageRes(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7e1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showNowWipingDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->getUserTypeForWipe()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->getNowWipingMessageRes(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f100030

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7e1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updateErrorMessage(I)Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getMaximumFailedPasswordsForWipe(I)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_4

    if-gtz p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mErrorView:Landroid/widget/TextView;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f10001d

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v3

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->showError(Ljava/lang/String;)V

    :cond_1
    sub-int v1, v0, p1

    if-ne v1, v3, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->showLastAttemptBeforeWipeDialog()V

    goto :goto_0

    :cond_2
    if-gtz v1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->showNowWipingDialog()V

    :cond_3
    :goto_0
    return v3

    :cond_4
    :goto_1
    return v1
.end method


# virtual methods
.method protected getPassword()Ljava/lang/String;
    .locals 2

    const v0, 0x7f0a00ed

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public synthetic lambda$showNowWipingDialog$0$AuthCredentialView(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnDismissed(I[B)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 18

    move-object/from16 v8, p0

    invoke-super/range {p0 .. p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    const-string v0, "BSS_AuthCredentialView"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a019e

    invoke-virtual {v8, v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    const v0, 0x7f0a0167

    invoke-virtual {v8, v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    const v0, 0x7f0a007c

    invoke-virtual {v8, v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    const v0, 0x7f0a00bb

    invoke-virtual {v8, v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/ImageView;

    const v0, 0x7f0a0098

    invoke-virtual {v8, v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v8, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mErrorView:Landroid/widget/TextView;

    iget-object v0, v8, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->getTitle(Landroid/hardware/biometrics/PromptInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v8, v9, v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, v8, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->getSubtitle(Landroid/hardware/biometrics/PromptInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v8, v10, v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->setTextOrHide(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, v8, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->getDescription(Landroid/hardware/biometrics/PromptInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v8, v11, v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->setTextOrHide(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, v8, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080069

    iget-object v2, v8, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, v8, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getOrganizationColor()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    move-object v13, v0

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08006a

    iget-object v2, v8, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v13, v0

    :goto_0
    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v8, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, v8, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v14

    const-wide/16 v0, 0x0

    cmp-long v0, v14, v0

    if-eqz v0, :cond_2

    new-instance v7, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView$3;

    iget-object v2, v8, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v3, v14, v0

    const-wide/16 v5, 0x3e8

    iget-object v1, v8, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mErrorView:Landroid/widget/TextView;

    move-object v0, v7

    move-object/from16 v16, v1

    move-object/from16 v1, p0

    move-object/from16 v17, v9

    move-object v9, v7

    move-object/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView$3;-><init>(Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;Landroid/content/Context;JJLandroid/widget/TextView;)V

    iput-object v9, v8, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mErrorTimer:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView$ErrorTimer;

    invoke-virtual {v9}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView$ErrorTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_1

    :cond_2
    move-object/from16 v17, v9

    :goto_1
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialGuiHelper;

    iget-object v1, v8, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v8}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialGuiHelper;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, v8, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mAuthCredentialGuiHelper:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialGuiHelper;

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->applyRotationGui()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "BSS_AuthCredentialView"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->applyRotationGui()V

    return-void
.end method

.method protected onCredentialVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCredentialVerified: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BSS_AuthCredentialView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mClearErrorRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->userPresent(I)V

    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperPasswordHandle()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getOperationId()J

    move-result-wide v5

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v7

    move-wide v3, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/widget/LockPatternUtils;->verifyGatekeeperPasswordHandle(JJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    const/4 v4, 0x7

    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperHAT()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnDismissed(I[B)V

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->removeGatekeeperPasswordHandle(J)V

    goto :goto_0

    :cond_0
    if-lez p2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mClearErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v0

    new-instance v10, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView$4;

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v5, v0, v2

    const-wide/16 v7, 0x3e8

    iget-object v9, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mErrorView:Landroid/widget/TextView;

    move-object v2, v10

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView$4;-><init>(Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;Landroid/content/Context;JJLandroid/widget/TextView;)V

    iput-object v10, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mErrorTimer:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView$ErrorTimer;

    invoke-virtual {v10}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView$ErrorTimer;->start()Landroid/os/CountDownTimer;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->updateErrorMessage(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->showError(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    const-string v0, "BSS_AuthCredentialView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mErrorTimer:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView$ErrorTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView$ErrorTimer;->cancel()V

    :cond_0
    return-void
.end method

.method protected onErrorTimeoutFinish()V
    .locals 0

    return-void
.end method

.method setCredentialType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mCredentialType:I

    return-void
.end method

.method setInjector(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getPromptInfo()Landroid/hardware/biometrics/PromptInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    return-void
.end method

.method protected setPassword(Ljava/lang/String;)V
    .locals 1

    const v0, 0x7f0a00ed

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setPasswordShown(Z)V
    .locals 0

    return-void
.end method

.method protected showError(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mClearErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mClearErrorRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mErrorView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
