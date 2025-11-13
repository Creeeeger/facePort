.class public final Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static SETTINTS_VIEW_CERTIFICATES_LIST_SWITCH_OK:I


# instance fields
.field public final mActivity:Landroid/app/Activity;

.field public mCertHolders:[Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

.field public mCurrentCertIndex:I

.field public mCurrentCertLayout:Landroid/view/View;

.field public final mDelegate:Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;

.field public mDialog:Landroidx/appcompat/app/AlertDialog;

.field public final mDpm:Landroid/app/admin/DevicePolicyManager;

.field public mNeedsApproval:Z

.field public mNegativeButton:Landroid/widget/Button;

.field public mPositiveButton:Landroid/widget/Button;

.field public final mRootContainer:Landroid/widget/LinearLayout;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertIndex:I

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCertHolders:[Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertLayout:Landroid/view/View;

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mUserManager:Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDelegate:Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;

    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mRootContainer:Landroid/widget/LinearLayout;

    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 p0, 0x11a5

    sput p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->SETTINTS_VIEW_CERTIFICATES_LIST_SWITCH_OK:I

    return-void
.end method


# virtual methods
.method public final getCurrentCertInfo()Lcom/android/settings/TrustedCredentialsFragment$CertHolder;
    .locals 2

    iget v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertIndex:I

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCertHolders:[Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-object p0, p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final nextOrDismiss()V
    .locals 10

    iget v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertIndex:I

    :goto_0
    iget v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertIndex:I

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCertHolders:[Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->getCurrentCertInfo()Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    move-result-object v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertIndex:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertIndex:I

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCertHolders:[Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->getCurrentCertInfo()Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDelegate:Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;

    check-cast v4, Lcom/android/settings/TrustedCredentialsFragment;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, v4, Lcom/android/settings/TrustedCredentialsFragment;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    monitor-enter v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v4, v4, Lcom/android/settings/TrustedCredentialsFragment;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    iget v7, v0, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mProfileId:I

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/security/KeyChain$KeyChainConnection;

    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v4

    iget-object v7, v0, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mAlias:Ljava/lang/String;

    invoke-interface {v4, v7, v1}, Landroid/security/IKeyChainService;->getCaCertificateChainAliases(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v4, v9, v1}, Landroid/security/IKeyChainService;->getEncodedCaCertificate(Ljava/lang/String;Z)[B

    move-result-object v9

    invoke-static {v9}, Landroid/security/KeyChain;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v4

    goto :goto_2

    :cond_2
    monitor-exit v6

    goto :goto_4

    :catchall_1
    move-exception v4

    move-object v8, v5

    :goto_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v4

    goto :goto_3

    :catch_1
    move-exception v4

    move-object v8, v5

    :goto_3
    const-string v6, "TrustedCredentialsFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "RemoteException while retrieving certificate chain for root "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mAlias:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    if-eqz v8, :cond_3

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    new-instance v6, Landroid/net/http/SslCertificate;

    invoke-direct {v6, v4}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    iget-object v4, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v4}, Landroid/net/http/SslCertificate;->inflateCertificateView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_3
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0d09d1

    invoke-direct {v0, v4, v6, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v3, 0x7f0d0bd5

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    new-instance v3, Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance v0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$2;

    invoke-direct {v0, v2}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$2;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v3, 0x0

    move v4, v3

    :goto_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0x8

    if-ge v4, v6, :cond_5

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    if-nez v4, :cond_4

    move v7, v3

    :cond_4
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/2addr v4, v1

    goto :goto_6

    :cond_5
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertLayout:Landroid/view/View;

    if-nez v2, :cond_6

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mRootContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_7

    :cond_6
    new-instance v4, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$3;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$3;-><init>(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;Landroid/view/View;)V

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v8, 0x12c

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    const v6, 0x10c000f

    invoke-static {v2, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_7
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->getCurrentCertInfo()Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->isSystemCert()Z

    move-result v2

    if-nez v2, :cond_9

    iget v2, v0, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mProfileId:I

    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v6

    if-eqz v6, :cond_7

    move v2, v1

    goto :goto_8

    :cond_7
    iget-object v6, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, v2}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-nez v2, :cond_8

    move v2, v3

    goto :goto_8

    :cond_8
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    :goto_8
    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, v0, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mAlias:Ljava/lang/String;

    iget v6, v0, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mProfileId:I

    invoke-virtual {v2, v4, v6}, Landroid/app/admin/DevicePolicyManager;->isCaCertApproved(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_9

    move v2, v1

    goto :goto_9

    :cond_9
    move v2, v3

    :goto_9
    iput-boolean v2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mNeedsApproval:Z

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    iget v0, v0, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mProfileId:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v2, v5, v0}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_a

    :cond_a
    move v0, v3

    :goto_a
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mNeedsApproval:Z

    if-eqz v0, :cond_b

    const v0, 0x7f142f9e

    goto :goto_b

    :cond_b
    const v0, 0x7f1409d0

    :goto_b
    invoke-virtual {v2, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v4, -0x1

    invoke-virtual {v2, v4, v0, v5}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v2, v4}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->getCurrentCertInfo()Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mUserManager:Landroid/os/UserManager;

    new-instance v4, Landroid/os/UserHandle;

    iget v6, v0, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mProfileId:I

    invoke-direct {v4, v6}, Landroid/os/UserHandle;-><init>(I)V

    const-string v6, "no_config_credentials"

    invoke-virtual {v2, v6, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    xor-int/2addr v2, v1

    iget-object v4, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->isSystemCert()Z

    move-result v6

    if-eqz v6, :cond_d

    iget-boolean v6, v0, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mDeleted:Z

    if-eqz v6, :cond_c

    const v6, 0x7f142f99

    goto :goto_c

    :cond_c
    const v6, 0x7f142f97

    goto :goto_c

    :cond_d
    const v6, 0x7f142f9b

    :goto_c
    invoke-virtual {v4, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v8, -0x2

    invoke-virtual {v6, v8, v4, v5}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v5, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v5, v8}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v5, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mNegativeButton:Landroid/widget/Button;

    if-eqz v2, :cond_e

    move v7, v3

    :cond_e
    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    if-eqz v2, :cond_12

    iget-boolean v2, v0, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mDeleted:Z

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    iget-object v4, v0, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mAlias:Ljava/lang/String;

    iget v5, v0, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mProfileId:I

    sget-object v6, Lcom/android/settings/Utils;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "content://com.sec.knox.provider/CertificatePolicy"

    const-string v6, "isCaCertificateDisabledAsUser"

    invoke-static {v2, v5, v6, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_f

    const-string v2, "Settings"

    const-string v4, "CaCertificateDisabledAsUser : disabled"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    goto :goto_d

    :cond_f
    move v2, v3

    :goto_d
    if-eqz v2, :cond_10

    move v1, v3

    :cond_10
    iget-boolean v2, v0, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mDeleted:Z

    if-nez v2, :cond_11

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    iget v0, v0, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mProfileId:I

    invoke-static {v2, v0}, Lcom/android/settings/Utils;->isUserRemoveCertificateAllowedAsUser(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_e

    :cond_11
    move v3, v1

    :goto_e
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {p0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_12
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mPositiveButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    iget-boolean p1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mNeedsApproval:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->onClickTrust()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->getCurrentCertInfo()Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->isSystemCert()Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->SETTINTS_VIEW_CERTIFICATES_LIST_SWITCH_OK:I

    invoke-static {p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->nextOrDismiss()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mNegativeButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->getCurrentCertInfo()Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    move-result-object p1

    new-instance v0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$1;-><init>(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;Lcom/android/settings/TrustedCredentialsFragment$CertHolder;)V

    invoke-virtual {p1}, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->isSystemCert()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const/4 p0, -0x1

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$1;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0

    :cond_3
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f142f9a

    invoke-virtual {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    const p0, 0x104000a

    invoke-virtual {p1, p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    const/high16 p0, 0x1040000

    invoke-virtual {p1, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_4
    :goto_0
    return-void
.end method

.method public final onClickTrust()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->getCurrentCertInfo()Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDelegate:Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;

    iget v2, v0, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mProfileId:I

    new-instance v3, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;)V

    check-cast v1, Lcom/android/settings/TrustedCredentialsFragment;

    iget-object v4, v1, Lcom/android/settings/TrustedCredentialsFragment;->mConfirmedCredentialUsers:Landroid/util/ArraySet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, v1, Lcom/android/settings/TrustedCredentialsFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v7, v2}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    iput v2, v1, Lcom/android/settings/TrustedCredentialsFragment;->mConfirmingCredentialUser:I

    invoke-virtual {v1, v4, v5}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    move v6, v5

    :goto_0
    if-eqz v6, :cond_2

    iput-object v3, v1, Lcom/android/settings/TrustedCredentialsFragment;->mConfirmingCredentialListener:Ljava/util/function/IntConsumer;

    :cond_2
    :goto_1
    if-nez v6, :cond_3

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, v0, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mAlias:Ljava/lang/String;

    iget v0, v0, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mProfileId:I

    invoke-virtual {v1, v2, v0, v5}, Landroid/app/admin/DevicePolicyManager;->approveCaCert(Ljava/lang/String;IZ)Z

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->nextOrDismiss()V

    :cond_3
    return-void
.end method

.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->nextOrDismiss()V

    return-void
.end method
