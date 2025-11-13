.class public Lcom/android/settings/TrustedCredentialsSettings;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;,
        Lcom/android/settings/TrustedCredentialsSettings$CertHolder;,
        Lcom/android/settings/TrustedCredentialsSettings$AdapterData;,
        Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;,
        Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;,
        Lcom/android/settings/TrustedCredentialsSettings$Tab;
    }
.end annotation


# static fields
.field private static SETTINTS_VIEW_CERTIFICATES_LIST_SWITCH:I

.field private static SETTINTS_VIEW_CERTIFICATES_LIST_SWITCH_TURN_OFF:I

.field private static SETTINTS_VIEW_CERTIFICATES_LIST_SWITCH_TURN_ON:I


# instance fields
.field private mAliasLoaders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;",
            ">;"
        }
    .end annotation
.end field

.field private mAliasOperation:Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;

.field private mConfirmedCredentialUsers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mConfirmingCredentialListener:Ljava/util/function/IntConsumer;

.field private mConfirmingCredentialUser:I

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field protected mEdmRefreshUiReceiver:Landroid/content/BroadcastReceiver;

.field private mGroupAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mInForeground:Z

.field private final mKeyChainConnectionByProfileId:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mKeyChainConnectionByProfileId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/security/KeyChain$KeyChainConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mRefreshUI:Z

.field private mSelectedCertHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTrustAllCaUserId:I

.field private mTrustedCredentialsDialog:Landroidx/appcompat/app/AlertDialog;

.field private mUserManager:Landroid/os/UserManager;

.field private mWorkProfileChangedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAliasLoaders(Lcom/android/settings/TrustedCredentialsSettings;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAliasLoaders:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDevicePolicyManager(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/app/admin/DevicePolicyManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGroupAdapters(Lcom/android/settings/TrustedCredentialsSettings;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mGroupAdapters:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInForeground(Lcom/android/settings/TrustedCredentialsSettings;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mInForeground:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmKeyChainConnectionByProfileId(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectedCertHolder(Lcom/android/settings/TrustedCredentialsSettings;)Lcom/android/settings/TrustedCredentialsSettings$CertHolder;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mSelectedCertHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTabHost(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/widget/TabHost;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTrustAllCaUserId(Lcom/android/settings/TrustedCredentialsSettings;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTrustAllCaUserId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserManager(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAliasOperation(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAliasOperation:Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRefreshUI(Lcom/android/settings/TrustedCredentialsSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mRefreshUI:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSelectedCertHolder(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mSelectedCertHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTrustAllCaUserId(Lcom/android/settings/TrustedCredentialsSettings;I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTrustAllCaUserId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$misTrustAllCaCertModeInProgress(Lcom/android/settings/TrustedCredentialsSettings;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings;->isTrustAllCaCertModeInProgress()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mrefreshUI(Lcom/android/settings/TrustedCredentialsSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings;->refreshUI()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshouldDisableSwitch(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings;->shouldDisableSwitch(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshowCertDialog(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings;->showCertDialog(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowTrustAllCaDialog(Lcom/android/settings/TrustedCredentialsSettings;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings;->showTrustAllCaDialog(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartConfirmCredential(Lcom/android/settings/TrustedCredentialsSettings;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings;->startConfirmCredential(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetSETTINTS_VIEW_CERTIFICATES_LIST_SWITCH()I
    .locals 1

    sget v0, Lcom/android/settings/TrustedCredentialsSettings;->SETTINTS_VIEW_CERTIFICATES_LIST_SWITCH:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetSETTINTS_VIEW_CERTIFICATES_LIST_SWITCH_TURN_OFF()I
    .locals 1

    sget v0, Lcom/android/settings/TrustedCredentialsSettings;->SETTINTS_VIEW_CERTIFICATES_LIST_SWITCH_TURN_OFF:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetSETTINTS_VIEW_CERTIFICATES_LIST_SWITCH_TURN_ON()I
    .locals 1

    sget v0, Lcom/android/settings/TrustedCredentialsSettings;->SETTINTS_VIEW_CERTIFICATES_LIST_SWITCH_TURN_ON:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputSETTINTS_VIEW_CERTIFICATES_LIST_SWITCH(I)V
    .locals 0

    sput p0, Lcom/android/settings/TrustedCredentialsSettings;->SETTINTS_VIEW_CERTIFICATES_LIST_SWITCH:I

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputSETTINTS_VIEW_CERTIFICATES_LIST_SWITCH_TURN_OFF(I)V
    .locals 0

    sput p0, Lcom/android/settings/TrustedCredentialsSettings;->SETTINTS_VIEW_CERTIFICATES_LIST_SWITCH_TURN_OFF:I

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputSETTINTS_VIEW_CERTIFICATES_LIST_SWITCH_TURN_ON(I)V
    .locals 0

    sput p0, Lcom/android/settings/TrustedCredentialsSettings;->SETTINTS_VIEW_CERTIFICATES_LIST_SWITCH_TURN_ON:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 101
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTrustedCredentialsDialog:Landroidx/appcompat/app/AlertDialog;

    .line 128
    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mSelectedCertHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mGroupAdapters:Ljava/util/ArrayList;

    .line 198
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAliasLoaders:Ljava/util/Set;

    .line 199
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    .line 203
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/TrustedCredentialsSettings$1;-><init>(Lcom/android/settings/TrustedCredentialsSettings;)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mWorkProfileChangedReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    .line 1196
    iput-boolean v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mRefreshUI:Z

    .line 1199
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/TrustedCredentialsSettings$3;-><init>(Lcom/android/settings/TrustedCredentialsSettings;)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mEdmRefreshUiReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private addTab(Lcom/android/settings/TrustedCredentialsSettings$Tab;)V
    .locals 9

    .line 330
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->-$$Nest$fgetmTag(Lcom/android/settings/TrustedCredentialsSettings$Tab;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 331
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->-$$Nest$fgetmLabel(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->-$$Nest$fgetmView(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I

    move-result v1

    .line 332
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 333
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 335
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter-IA;)V

    .line 336
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mGroupAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getGroupCount()I

    move-result v1

    .line 340
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->-$$Nest$fgetmContentView(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 341
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 343
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 v2, 0x0

    move v3, v2

    .line 344
    :goto_0
    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getGroupCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 345
    invoke-virtual {v0, v3}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getUserInfoByGroup(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    .line 346
    invoke-virtual {v0, v3}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getChildAdapter(I)Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;

    move-result-object v5

    .line 348
    sget v6, Lcom/android/settings/R$layout;->trusted_credential_list_container:I

    .line 349
    invoke-virtual {p0, v6, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 350
    invoke-virtual {v5, v6}, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->setContainerView(Landroid/widget/LinearLayout;)V

    const/4 v7, 0x1

    if-le v1, v7, :cond_0

    move v8, v7

    goto :goto_1

    :cond_0
    move v8, v2

    .line 352
    :goto_1
    invoke-virtual {v5, v8}, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->showHeader(Z)V

    .line 353
    invoke-virtual {v5, v4}, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->showDivider(Z)V

    const/4 v8, 0x2

    if-gt v1, v8, :cond_1

    goto :goto_2

    :cond_1
    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    move v7, v2

    .line 354
    :goto_2
    invoke-virtual {v5, v7}, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->setExpandIfAvailable(Z)V

    if-eqz v4, :cond_3

    .line 356
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 358
    :cond_3
    invoke-virtual {p1, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private closeKeyChainConnections()V
    .locals 4

    .line 320
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    monitor-enter v0

    .line 321
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 323
    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/security/KeyChain$KeyChainConnection;

    invoke-virtual {v3}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 325
    :cond_0
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 326
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private isTrustAllCaCertModeInProgress()Z
    .locals 1

    .line 1051
    iget p0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTrustAllCaUserId:I

    const/16 v0, -0x2710

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private refreshUI()V
    .locals 1

    .line 1215
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTrustedCredentialsDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1216
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTrustedCredentialsDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    const/4 v0, 0x0

    .line 1217
    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTrustedCredentialsDialog:Landroidx/appcompat/app/AlertDialog;

    .line 1221
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    return-void
.end method

.method private shouldDisableSwitch(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Z
    .locals 5

    .line 1242
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 1243
    iget v0, p1, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->isUserRemoveCertificateAllowedAsUser(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "Disabling switch as certificate "

    const-string v3, "TrustedCredentialsSettings"

    if-nez v0, :cond_0

    .line 1244
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->getAlias()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " removal is not allowed by MDM policy"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1247
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->getAlias()Ljava/lang/String;

    move-result-object v0

    iget v4, p1, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    invoke-static {p0, v0, v4}, Lcom/android/settings/Utils;->isCaCertificateDisabledAsUser(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1249
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->getAlias()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is untrusted by MDM policy and can\'t be re-enabled"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private showCertDialog(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 2

    .line 1073
    new-instance v0, Lcom/android/settings/TrustedCredentialsDialogBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder;-><init>(Landroid/app/Activity;Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;)V

    .line 1074
    invoke-virtual {v0, p1}, Lcom/android/settings/TrustedCredentialsDialogBuilder;->setCertHolder(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings/TrustedCredentialsDialogBuilder;

    move-result-object p1

    .line 1075
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTrustedCredentialsDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private showTrustAllCaDialog(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/TrustedCredentialsSettings$CertHolder;",
            ">;)V"
        }
    .end annotation

    .line 1056
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .line 1055
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .line 1057
    new-instance v0, Lcom/android/settings/TrustedCredentialsDialogBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder;-><init>(Landroid/app/Activity;Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;)V

    .line 1058
    invoke-virtual {v0, p1}, Lcom/android/settings/TrustedCredentialsDialogBuilder;->setCertHolders([Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings/TrustedCredentialsDialogBuilder;

    move-result-object p1

    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/TrustedCredentialsSettings$2;-><init>(Lcom/android/settings/TrustedCredentialsSettings;)V

    .line 1059
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 1067
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private startConfirmCredential(I)Z
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyguardManager:Landroid/app/KeyguardManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 373
    :cond_0
    iput p1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmingCredentialUser:I

    const/4 p1, 0x1

    .line 374
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return p1
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x5c

    return p0
.end method

.method public getX509CertsFromCertHolder(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/TrustedCredentialsSettings$CertHolder;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1084
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1085
    :try_start_1
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/security/KeyChain$KeyChainConnection;

    .line 1087
    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object p0

    .line 1088
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->-$$Nest$fgetmAlias(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {p0, v2, v3}, Landroid/security/IKeyChainService;->getCaCertificateChainAliases(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    .line 1089
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 1090
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    .line 1092
    :try_start_2
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {p0, v6, v3}, Landroid/security/IKeyChainService;->getEncodedCaCertificate(Ljava/lang/String;Z)[B

    move-result-object v6

    .line 1093
    invoke-static {v6}, Landroid/security/KeyChain;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v6

    .line 1094
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1096
    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v0, v5

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string v1, "TrustedCredentialsSettings"

    .line 1098
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException while retrieving certificate chain for root "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->-$$Nest$fgetmAlias(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v0

    :goto_2
    return-object v5
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    .line 304
    iget p1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmingCredentialUser:I

    .line 305
    iget-object p3, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmingCredentialListener:Ljava/util/function/IntConsumer;

    const/16 v0, -0x2710

    .line 308
    iput v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmingCredentialUser:I

    const/4 v0, 0x0

    .line 309
    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmingCredentialListener:Ljava/util/function/IntConsumer;

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 311
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmedCredentialUsers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_0

    .line 313
    invoke-interface {p3, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 221
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    .line 222
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 223
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const-string/jumbo v1, "user"

    .line 224
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    const-string v1, "keyguard"

    .line 226
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 227
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ARG_SHOW_NEW_FOR_USER"

    const/16 v3, -0x2710

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTrustAllCaUserId:I

    .line 229
    new-instance v1, Landroid/util/ArraySet;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmedCredentialUsers:Landroid/util/ArraySet;

    .line 230
    iput v3, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmingCredentialUser:I

    if-eqz p1, :cond_0

    const-string v1, "ConfirmingCredentialUser"

    .line 232
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmingCredentialUser:I

    const-string v1, "ConfirmedCredentialUsers"

    .line 234
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmedCredentialUsers:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const/4 p1, 0x0

    .line 241
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmingCredentialListener:Ljava/util/function/IntConsumer;

    .line 243
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 244
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 245
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    .line 246
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mWorkProfileChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 249
    sget p1, Lcom/android/settings/R$string;->trusted_credentials:I

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitle(I)V

    .line 253
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mEdmRefreshUiReceiver:Landroid/content/BroadcastReceiver;

    new-instance p1, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.knox.intent.action.REFRESH_CREDENTIALS_UI_INTERNAL"

    invoke-direct {p1, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 269
    sget p3, Lcom/android/settings/R$layout;->trusted_credentials:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TabHost;

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    .line 270
    invoke-virtual {p1}, Landroid/widget/TabHost;->setup()V

    .line 271
    sget-object p1, Lcom/android/settings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings;->addTab(Lcom/android/settings/TrustedCredentialsSettings$Tab;)V

    .line 273
    sget-object p1, Lcom/android/settings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings;->addTab(Lcom/android/settings/TrustedCredentialsSettings$Tab;)V

    .line 274
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 275
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string p3, "com.android.settings.TRUSTED_CREDENTIALS_USER"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 276
    iget-object p2, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->-$$Nest$fgetmTag(Lcom/android/settings/TrustedCredentialsSettings$Tab;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 278
    :cond_0
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    return-object p0
.end method

.method public onDestroy()V
    .locals 3

    .line 282
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mWorkProfileChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 283
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAliasLoaders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;

    .line 284
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAliasLoaders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 287
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mGroupAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 288
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAliasOperation:Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;

    if-eqz v0, :cond_1

    .line 289
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 290
    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAliasOperation:Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;

    .line 292
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings;->closeKeyChainConnections()V

    .line 295
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mEdmRefreshUiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 298
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1237
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onPause()V

    const/4 v0, 0x0

    .line 1238
    iput-boolean v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mInForeground:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1226
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    const/4 v0, 0x1

    .line 1227
    iput-boolean v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mInForeground:Z

    .line 1229
    iget-boolean v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mRefreshUI:Z

    if-eqz v0, :cond_0

    .line 1230
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings;->refreshUI()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 261
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmedCredentialUsers:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "ConfirmedCredentialUsers"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 264
    iget p0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmingCredentialUser:I

    const-string v0, "ConfirmingCredentialUser"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public removeOrInstallCert(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 2

    .line 1106
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;Lcom/android/settings/TrustedCredentialsSettings$AliasOperation-IA;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public startConfirmCredentialIfNotConfirmed(ILjava/util/function/IntConsumer;)Z
    .locals 2

    .line 1112
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmedCredentialUsers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1117
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings;->startConfirmCredential(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1119
    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmingCredentialListener:Ljava/util/function/IntConsumer;

    :cond_1
    return p1
.end method
