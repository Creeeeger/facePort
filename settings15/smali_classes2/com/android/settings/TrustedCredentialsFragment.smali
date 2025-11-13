.class public Lcom/android/settings/TrustedCredentialsFragment;
.super Lcom/android/settingslib/core/lifecycle/ObservableFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;


# static fields
.field public static SETTINTS_VIEW_CERTIFICATES_LIST_SWITCH:I

.field public static SETTINTS_VIEW_CERTIFICATES_LIST_SWITCH_TURN_OFF:I

.field public static SETTINTS_VIEW_CERTIFICATES_LIST_SWITCH_TURN_ON:I


# instance fields
.field public final mAliasLoaders:Ljava/util/Set;

.field public mAliasOperation:Lcom/android/settings/TrustedCredentialsFragment$AliasOperation;

.field public mConfirmedCredentialUsers:Landroid/util/ArraySet;

.field public mConfirmingCredentialListener:Ljava/util/function/IntConsumer;

.field public mConfirmingCredentialUser:I

.field public mDescription:Ljava/lang/String;

.field public mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public mFragmentView:Landroid/view/ViewGroup;

.field public mGroupAdapter:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

.field public final mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

.field public mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mProfileChangedReceiver:Lcom/android/settings/TrustedCredentialsFragment$1;

.field public mSelectedCertHolder:Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

.field public mTrustAllCaUserId:I

.field public mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment;->mSelectedCertHolder:Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment;->mDescription:Ljava/lang/String;

    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment;->mAliasLoaders:Ljava/util/Set;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/settings/TrustedCredentialsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/TrustedCredentialsFragment$1;-><init>(Lcom/android/settings/TrustedCredentialsFragment;)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment;->mProfileChangedReceiver:Lcom/android/settings/TrustedCredentialsFragment$1;

    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    iget p1, p0, Lcom/android/settings/TrustedCredentialsFragment;->mConfirmingCredentialUser:I

    iget-object p3, p0, Lcom/android/settings/TrustedCredentialsFragment;->mConfirmingCredentialListener:Ljava/util/function/IntConsumer;

    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/settings/TrustedCredentialsFragment;->mConfirmingCredentialUser:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment;->mConfirmingCredentialListener:Ljava/util/function/IntConsumer;

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment;->mConfirmedCredentialUsers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_0

    invoke-interface {p3, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/TrustedCredentialsFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/TrustedCredentialsFragment;->mUserManager:Landroid/os/UserManager;

    const-class v1, Landroid/app/KeyguardManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/android/settings/TrustedCredentialsFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ARG_SHOW_NEW_FOR_USER"

    const/16 v3, -0x2710

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/TrustedCredentialsFragment;->mTrustAllCaUserId:I

    new-instance v1, Landroid/util/ArraySet;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/TrustedCredentialsFragment;->mConfirmedCredentialUsers:Landroid/util/ArraySet;

    iput v3, p0, Lcom/android/settings/TrustedCredentialsFragment;->mConfirmingCredentialUser:I

    if-eqz p1, :cond_0

    const-string v1, "ConfirmingCredentialUser"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/TrustedCredentialsFragment;->mConfirmingCredentialUser:I

    const-string v1, "ConfirmedCredentialUsers"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsFragment;->mConfirmedCredentialUsers:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/multiuser/Flags;->handleInterleavedSettingsForPrivateSpace()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.intent.action.PROFILE_AVAILABLE"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PROFILE_UNAVAILABLE"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PROFILE_ACCESSIBLE"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment;->mProfileChangedReceiver:Lcom/android/settings/TrustedCredentialsFragment$1;

    invoke-virtual {v0, p0, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v3, 0x1

    const v4, 0x7f0d0be7

    const/4 v5, 0x0

    move-object/from16 v6, p2

    invoke-virtual {v1, v4, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, v0, Lcom/android/settings/TrustedCredentialsFragment;->mFragmentView:Landroid/view/ViewGroup;

    const v6, 0x7f0a08c6

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->getListHorizontalPadding(Landroid/content/Context;)I

    move-result v6

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v7, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v6, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060738

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v4, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    new-instance v6, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9, v10}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v6, 0x7f0a0417

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const/16 v6, 0xf

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    new-instance v6, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "tab"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lcom/android/settings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    goto :goto_0

    :cond_0
    sget-object v7, Lcom/android/settings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    :goto_0
    invoke-direct {v6, v0, v7}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;-><init>(Lcom/android/settings/TrustedCredentialsFragment;Lcom/android/settings/TrustedCredentialsSettings$Tab;)V

    iput-object v6, v0, Lcom/android/settings/TrustedCredentialsFragment;->mGroupAdapter:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    invoke-virtual {v6}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->getGroupCount()I

    move-result v6

    move v7, v5

    :goto_1
    if-ge v7, v6, :cond_11

    if-nez v2, :cond_1

    move-object v8, v10

    goto :goto_2

    :cond_1
    iget-object v8, v0, Lcom/android/settings/TrustedCredentialsFragment;->mGroupAdapter:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "Group"

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v8, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsFragment$AdapterData;

    iget-object v8, v8, Lcom/android/settings/TrustedCredentialsFragment$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    :goto_2
    iget-object v9, v0, Lcom/android/settings/TrustedCredentialsFragment;->mGroupAdapter:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    iget-object v11, v9, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    iget-object v11, v11, Lcom/android/settings/TrustedCredentialsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v9, v9, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsFragment$AdapterData;

    iget-object v9, v9, Lcom/android/settings/TrustedCredentialsFragment$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v11, v9}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v11

    iget-object v12, v0, Lcom/android/settings/TrustedCredentialsFragment;->mUserManager:Landroid/os/UserManager;

    invoke-static {v11, v12}, Lcom/android/settings/Utils;->shouldHideUser(Landroid/os/UserHandle;Landroid/os/UserManager;)Z

    move-result v11

    if-eqz v11, :cond_2

    move v1, v3

    goto/16 :goto_a

    :cond_2
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v11

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {}, Landroid/multiuser/Flags;->handleInterleavedSettingsForPrivateSpace()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result v9

    or-int/2addr v11, v9

    :cond_3
    iget-object v9, v0, Lcom/android/settings/TrustedCredentialsFragment;->mGroupAdapter:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;

    iget-object v13, v9, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    invoke-direct {v12, v13, v9, v7}, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;-><init>(Lcom/android/settings/TrustedCredentialsFragment;Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;I)V

    iget-object v9, v9, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->mChildAdapters:Ljava/util/ArrayList;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v9, 0x7f0d0be6

    invoke-virtual {v1, v9, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, v12, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->setSaveFromParentEnabled(Z)V

    iget-object v14, v12, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mContainerView:Landroid/widget/LinearLayout;

    const v15, 0x7f0a02ec

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ListView;

    iput-object v14, v12, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v14, v12}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v14, v12, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v14, v12}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v14, v12, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v14, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v14, v12, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v14, v3}, Landroid/widget/ListView;->setNestedScrollingEnabled(Z)V

    invoke-virtual {v13}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f070d45

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    iget-object v15, v12, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v15, v14}, Landroid/widget/ListView;->semSetVerticalScrollBarPaddingPosition(I)V

    iget-object v14, v12, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v14, v3}, Landroid/widget/ListView;->semSetVerticalScrollBarPadding(Z)V

    invoke-virtual {v13}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f070d46

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iget-object v15, v12, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v15, v14}, Landroid/widget/ListView;->semSetScrollBarBottomPadding(I)V

    iget-object v15, v12, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v15, v14}, Landroid/widget/ListView;->semSetScrollBarTopPadding(I)V

    iget-object v14, v12, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mContainerView:Landroid/widget/LinearLayout;

    const v15, 0x7f0a0728

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    iput-object v14, v12, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mHeaderView:Landroid/view/ViewGroup;

    invoke-virtual {v14, v12}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v14, v12, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mHeaderView:Landroid/view/ViewGroup;

    const v15, 0x7f0a06f3

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    iput-object v14, v12, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v15

    sget-object v3, Lcom/android/internal/R$styleable;->ExpandableListView:[I

    const v1, 0x101006f

    invoke-virtual {v15, v10, v3, v1, v5}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v13}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    const-string v10, "SecDisplayUtils"

    if-nez v15, :cond_4

    sget-object v13, Lcom/samsung/android/settings/display/SecDisplayUtils;->SIGNATURES:[Landroid/content/pm/Signature;

    const-string v13, "getNightModeSetting() - context is null"

    invoke-static {v10, v13}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    invoke-static {v15}, Lcom/samsung/android/settings/display/SecDisplayUtils;->canChangeNightMode(Landroid/content/Context;)Z

    move-result v16

    if-nez v16, :cond_6

    const-string v13, "getNightModeSetting() - Disabled"

    invoke-static {v10, v13}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v15}, Lcom/android/settings/Utils;->isCurrentThemeSupportNightTheme(Landroid/content/Context;)Z

    move-result v10

    const/4 v13, 0x1

    xor-int/2addr v10, v13

    if-eqz v10, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {v15}, Lcom/android/settings/Utils;->isMinimalBatteryUseEnabled(Landroid/content/Context;)Z

    goto :goto_3

    :cond_6
    const/4 v10, 0x1

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v2, "display_night_theme"

    invoke-static {v15, v2, v5, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v10, :cond_7

    invoke-virtual {v13}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v10, 0x7f0606db

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_7
    :goto_3
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v14, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v12, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mHeaderView:Landroid/view/ViewGroup;

    const v2, 0x7f0a0712

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v2, v12, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    iget v3, v12, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mGroupPosition:I

    const/4 v10, 0x0

    const/4 v13, 0x1

    invoke-virtual {v2, v3, v13, v10, v1}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    if-eqz v8, :cond_8

    const-string v1, "Container"

    const-class v2, Landroid/os/Parcelable;

    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v2, v12, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_8
    iget-object v1, v0, Lcom/android/settings/TrustedCredentialsFragment;->mGroupAdapter:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    invoke-virtual {v1}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->getGroupCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_9

    const/4 v13, 0x1

    goto :goto_4

    :cond_9
    move v13, v5

    :goto_4
    iget-object v2, v12, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mHeaderView:Landroid/view/ViewGroup;

    const/16 v3, 0x8

    if-eqz v13, :cond_a

    move v13, v5

    goto :goto_5

    :cond_a
    move v13, v3

    :goto_5
    invoke-virtual {v2, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, v12, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mHeaderView:Landroid/view/ViewGroup;

    const v13, 0x7f0a0715

    invoke-virtual {v2, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v11, :cond_b

    move v3, v5

    :cond_b
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x2

    if-le v1, v2, :cond_d

    if-nez v11, :cond_c

    goto :goto_6

    :cond_c
    move v13, v5

    goto :goto_7

    :cond_d
    :goto_6
    const/4 v13, 0x1

    :goto_7
    if-eqz v8, :cond_e

    const-string v1, "IsListExpanded"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    :cond_e
    if-eqz v13, :cond_f

    iget-object v1, v12, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    iget v2, v12, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mGroupPosition:I

    invoke-virtual {v1, v2, v5}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->checkGroupExpandableAndStartWarningActivity(IZ)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v13, 0x1

    goto :goto_8

    :cond_f
    move v13, v5

    :goto_8
    iput-boolean v13, v12, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mIsListExpanded:Z

    invoke-virtual {v12}, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->refreshViews()V

    if-eqz v11, :cond_10

    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_9

    :cond_10
    invoke-virtual {v4, v9, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :goto_9
    const/4 v1, 0x1

    :goto_a
    add-int/2addr v7, v1

    move-object/from16 v2, p3

    move v3, v1

    move-object/from16 v1, p1

    goto/16 :goto_1

    :cond_11
    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsFragment;->mFragmentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final onDestroy()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsFragment;->mProfileChangedReceiver:Lcom/android/settings/TrustedCredentialsFragment$1;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment;->mAliasLoaders:Ljava/util/Set;

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/TrustedCredentialsFragment$AdapterData$AliasLoader;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment;->mAliasLoaders:Ljava/util/Set;

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment;->mAliasOperation:Lcom/android/settings/TrustedCredentialsFragment$AliasOperation;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment;->mAliasOperation:Lcom/android/settings/TrustedCredentialsFragment$AliasOperation;

    :cond_1
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsFragment;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsFragment;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/security/KeyChain$KeyChainConnection;

    invoke-virtual {v3}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsFragment;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onDestroy()V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onResume()V

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment;->mFragmentView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsFragment;->mConfirmedCredentialUsers:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "ConfirmedCredentialUsers"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "ConfirmingCredentialUser"

    iget v1, p0, Lcom/android/settings/TrustedCredentialsFragment;->mConfirmingCredentialUser:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment;->mGroupAdapter:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->mChildAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->mChildAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Group"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsFragment$AdapterData;

    iget-object v4, v4, Lcom/android/settings/TrustedCredentialsFragment$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->$r8$clinit:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iget-object v6, v2, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->saveHierarchyState(Landroid/util/SparseArray;)V

    const-string v6, "Container"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    const-string v5, "IsListExpanded"

    iget-boolean v2, v2, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mIsListExpanded:Z

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
