.class Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;
.super Ljava/lang/Object;
.source "TrustedCredentialsDialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsDialogBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DialogEventHandler"
.end annotation


# static fields
.field private static SETTINTS_VIEW_CERTIFICATES_LIST_SWITCH_OK:I


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mCertHolders:[Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

.field private mCurrentCertIndex:I

.field private mCurrentCertLayout:Landroid/view/View;

.field private final mDelegate:Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;

.field private mDialog:Landroidx/appcompat/app/AlertDialog;

.field private final mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mNeedsApproval:Z

.field private mNegativeButton:Landroid/widget/Button;

.field private mPositiveButton:Landroid/widget/Button;

.field private final mRootContainer:Landroid/widget/LinearLayout;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$EZs0sSyrzglcl930H0TYdY1nHmQ(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->onCredentialConfirmed(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmActivity(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentCertLayout(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertLayout:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDelegate(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;)Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDelegate:Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRootContainer(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mRootContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$maddAndAnimateNewContent(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->addAndAnimateNewContent(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnextOrDismiss(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->nextOrDismiss()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;)V
    .locals 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 108
    iput v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertIndex:I

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .line 113
    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCertHolders:[Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertLayout:Landroid/view/View;

    .line 121
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    .line 122
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 123
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mUserManager:Landroid/os/UserManager;

    .line 124
    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDelegate:Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;

    .line 126
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mRootContainer:Landroid/widget/LinearLayout;

    const/4 p0, 0x1

    .line 127
    invoke-virtual {p2, p0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 130
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$integer;->other_security_settings_view_certificates_list_switch_ok:I

    .line 132
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    sput p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->SETTINTS_VIEW_CERTIFICATES_LIST_SWITCH_OK:I

    return-void
.end method

.method private addAndAnimateNewContent(Landroid/view/View;)V
    .locals 1

    .line 400
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertLayout:Landroid/view/View;

    .line 401
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mRootContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 402
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mRootContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 404
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mRootContainer:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$4;

    invoke-direct {v0, p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$4;-><init>(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private animateOldContent(Ljava/lang/Runnable;)V
    .locals 3

    .line 390
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 391
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 392
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    const v1, 0x10c000f

    .line 393
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 395
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 396
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private animateViewTransition(Landroid/view/View;)V
    .locals 1

    .line 380
    new-instance v0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$3;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$3;-><init>(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->animateOldContent(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static getButtonLabel(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)I
    .locals 1

    .line 372
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->isSystemCert()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->isDeleted()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 373
    sget p0, Lcom/android/settings/R$string;->trusted_credentials_enable_label:I

    goto :goto_0

    .line 374
    :cond_0
    sget p0, Lcom/android/settings/R$string;->trusted_credentials_disable_label:I

    goto :goto_0

    .line 375
    :cond_1
    sget p0, Lcom/android/settings/R$string;->trusted_credentials_remove_label:I

    :goto_0
    return p0
.end method

.method private getCertLayout(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Landroid/widget/LinearLayout;
    .locals 4

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 321
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 322
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDelegate:Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;

    invoke-interface {v2, p1}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;->getX509CertsFromCertHolder(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 324
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 325
    new-instance v3, Landroid/net/http/SslCertificate;

    invoke-direct {v3, v2}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 326
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/net/http/SslCertificate;->inflateCertificateView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    invoke-virtual {v3}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 331
    :cond_0
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    sget v3, Lcom/android/settings/R$layout;->sec_trusted_credentials_simple_spinner_item:I

    invoke-direct {p1, v2, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 339
    sget v1, Lcom/android/settings/R$layout;->support_simple_spinner_dropdown_item:I

    invoke-virtual {p1, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 342
    new-instance v1, Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 343
    invoke-virtual {v1, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 344
    new-instance p1, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$2;

    invoke-direct {p1, p0, v0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$2;-><init>(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;Ljava/util/ArrayList;)V

    invoke-virtual {v1, p1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 358
    new-instance p1, Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 359
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 360
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 p0, 0x0

    move v1, p0

    .line 361
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 362
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-nez v1, :cond_1

    move v3, p0

    goto :goto_2

    :cond_1
    const/16 v3, 0x8

    .line 364
    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 365
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method private getCurrentCertInfo()Lcom/android/settings/TrustedCredentialsSettings$CertHolder;
    .locals 2

    .line 214
    iget v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertIndex:I

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCertHolders:[Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-object p0, p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private isUserSecure(I)Z
    .locals 2

    .line 238
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 239
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 242
    :cond_0
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 246
    :cond_1
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p0

    return p0
.end method

.method private nextOrDismiss()V
    .locals 2

    .line 218
    iget v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertIndex:I

    .line 220
    :goto_0
    iget v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertIndex:I

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCertHolders:[Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->getCurrentCertInfo()Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 221
    iget v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertIndex:I

    goto :goto_0

    .line 224
    :cond_0
    iget v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertIndex:I

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCertHolders:[Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 225
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void

    .line 229
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->updateViewContainer()V

    .line 230
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->updatePositiveButton()V

    .line 231
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->updateNegativeButton()V

    return-void
.end method

.method private onClickEnableOrDisable()V
    .locals 3

    .line 184
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->getCurrentCertInfo()Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    .line 185
    new-instance v1, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$1;-><init>(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V

    .line 192
    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->isSystemCert()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    .line 194
    invoke-interface {v1, v2, p0}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0

    .line 196
    :cond_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p0, Lcom/android/settings/R$string;->trusted_credentials_remove_confirmation:I

    .line 197
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x1040013

    .line 198
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x1040009

    .line 199
    invoke-virtual {p0, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 200
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :goto_0
    return-void
.end method

.method private onClickOk()V
    .locals 1

    .line 166
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->getCurrentCertInfo()Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->isSystemCert()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    sget v0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->SETTINTS_VIEW_CERTIFICATES_LIST_SWITCH_OK:I

    invoke-static {v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->nextOrDismiss()V

    return-void
.end method

.method private onClickTrust()V
    .locals 4

    .line 175
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->getCurrentCertInfo()Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDelegate:Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;

    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->getUserId()I

    move-result v2

    new-instance v3, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;)V

    invoke-interface {v1, v2, v3}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;->startConfirmCredentialIfNotConfirmed(ILjava/util/function/IntConsumer;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->getUserId()I

    move-result v0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/admin/DevicePolicyManager;->approveCaCert(Ljava/lang/String;IZ)Z

    .line 179
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->nextOrDismiss()V

    :cond_0
    return-void
.end method

.method private onCredentialConfirmed(I)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mNeedsApproval:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->getCurrentCertInfo()Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->getCurrentCertInfo()Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->getUserId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->onClickTrust()V

    :cond_0
    return-void
.end method

.method private updateButton(ILjava/lang/CharSequence;)Landroid/widget/Button;
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 299
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    .line 300
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 301
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method private updateNegativeButton()V
    .locals 6

    .line 269
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->getCurrentCertInfo()Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    .line 270
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mUserManager:Landroid/os/UserManager;

    new-instance v2, Landroid/os/UserHandle;

    .line 272
    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->getUserId()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    const-string v3, "no_config_credentials"

    .line 270
    invoke-virtual {v1, v3, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 273
    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->getButtonLabel(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, -0x2

    .line 274
    invoke-direct {p0, v4, v3}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->updateButton(ILjava/lang/CharSequence;)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mNegativeButton:Landroid/widget/Button;

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    const/16 v5, 0x8

    .line 275
    :goto_0
    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    if-eqz v1, :cond_3

    .line 281
    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->isDeleted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    .line 282
    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->getUserId()I

    move-result v5

    .line 281
    invoke-static {v1, v3, v5}, Lcom/android/settings/Utils;->isCaCertificateDisabledAsUser(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v4

    .line 284
    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->isDeleted()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    .line 285
    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->getUserId()I

    move-result v0

    .line 284
    invoke-static {v1, v0}, Lcom/android/settings/Utils;->isUserRemoveCertificateAllowedAsUser(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v4, v2

    .line 287
    :goto_1
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {p0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_3
    return-void
.end method

.method private updatePositiveButton()V
    .locals 6

    .line 250
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->getCurrentCertInfo()Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->isSystemCert()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 252
    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->getUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->isUserSecure(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 253
    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->getAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->getUserId()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/app/admin/DevicePolicyManager;->isCaCertApproved(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mNeedsApproval:Z

    .line 255
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    .line 256
    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->getUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 255
    invoke-static {v1, v0}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;Landroid/os/UserHandle;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 259
    :goto_1
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    if-nez v2, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mNeedsApproval:Z

    if-eqz v1, :cond_2

    .line 260
    sget v1, Lcom/android/settings/R$string;->trusted_credentials_trust_label:I

    goto :goto_2

    .line 263
    :cond_2
    sget v1, Lcom/android/settings/R$string;->common_ok:I

    .line 259
    :goto_2
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, -0x1

    .line 265
    invoke-direct {p0, v1, v0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->updateButton(ILjava/lang/CharSequence;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mPositiveButton:Landroid/widget/Button;

    return-void
.end method

.method private updateViewContainer()V
    .locals 2

    .line 307
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->getCurrentCertInfo()Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    .line 308
    invoke-direct {p0, v0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->getCertLayout(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 311
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertLayout:Landroid/view/View;

    if-nez v1, :cond_0

    .line 312
    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertLayout:Landroid/view/View;

    .line 313
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mRootContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 315
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->animateViewTransition(Landroid/view/View;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mPositiveButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 154
    iget-boolean p1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mNeedsApproval:Z

    if-eqz p1, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->onClickTrust()V

    goto :goto_0

    .line 157
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->onClickOk()V

    goto :goto_0

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mNegativeButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 160
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->onClickEnableOrDisable()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    .line 148
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->nextOrDismiss()V

    return-void
.end method

.method public setCertHolders([Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCertHolders:[Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    return-void
.end method

.method public setDialog(Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
