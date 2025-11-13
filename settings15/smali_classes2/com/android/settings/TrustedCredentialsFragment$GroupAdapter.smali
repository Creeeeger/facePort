.class public final Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# instance fields
.field public final mChildAdapters:Ljava/util/ArrayList;

.field public final mData:Lcom/android/settings/TrustedCredentialsFragment$AdapterData;

.field public final synthetic this$0:Lcom/android/settings/TrustedCredentialsFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/TrustedCredentialsFragment;Lcom/android/settings/TrustedCredentialsSettings$Tab;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->mChildAdapters:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/settings/TrustedCredentialsFragment$AdapterData;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/settings/TrustedCredentialsFragment$AdapterData;-><init>(Lcom/android/settings/TrustedCredentialsFragment;Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsFragment$AdapterData;

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->load()V

    return-void
.end method


# virtual methods
.method public final checkGroupExpandableAndStartWarningActivity(IZ)Z
    .locals 4

    new-instance v0, Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsFragment$AdapterData;

    iget-object v1, v1, Lcom/android/settings/TrustedCredentialsFragment$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    iget-object v1, v1, Lcom/android/settings/TrustedCredentialsFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/android/internal/app/UnlaunchableAppActivity;->createInQuietModeDialogIntent(I)Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return v2

    :cond_1
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    iget-object v1, v1, Lcom/android/settings/TrustedCredentialsFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    iget-object p2, p0, Lcom/android/settings/TrustedCredentialsFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, p1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/android/settings/TrustedCredentialsFragment;->mConfirmingCredentialUser:I

    invoke-virtual {p0, p2, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_3
    :goto_0
    return v2

    :cond_4
    return v1
.end method

.method public final getChild(II)Lcom/android/settings/TrustedCredentialsFragment$CertHolder;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsFragment$AdapterData;

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    return-object p0
.end method

.method public final bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->getChild(II)Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    move-result-object p0

    return-object p0
.end method

.method public final getChildId(II)J
    .locals 0

    int-to-long p0, p2

    return-wide p0
.end method

.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->getChild(II)Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsFragment$AdapterData;

    iget-object p2, p2, Lcom/android/settings/TrustedCredentialsFragment$AdapterData;->mTab:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    const/4 p3, 0x0

    if-nez p4, :cond_0

    new-instance p4, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$ViewHolder;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0be5

    invoke-virtual {v0, v1, p5, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a108d    # 1.835194E38f

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p4, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$ViewHolder;->mSubjectPrimaryView:Landroid/widget/TextView;

    const v0, 0x7f0a108e

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p4, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$ViewHolder;->mSubjectSecondaryView:Landroid/widget/TextView;

    const v0, 0x7f0a108c

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p4, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$ViewHolder;->mSwitch:Landroid/widget/CompoundButton;

    new-instance v1, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p4, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$ViewHolder;->mSwitch:Landroid/widget/CompoundButton;

    iget-object v1, p1, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$ViewHolder;

    move-object v5, p5

    move-object p5, p4

    move-object p4, v5

    :goto_0
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsFragment;->mSelectedCertHolder:Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p4, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$ViewHolder;->mSwitch:Landroid/widget/CompoundButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/settings/TrustedCredentialsFragment;->mSelectedCertHolder:Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    :cond_1
    iget-object v0, p4, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$ViewHolder;->mSubjectPrimaryView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p4, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$ViewHolder;->mSubjectSecondaryView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p2, p2, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mSwitch:Z

    if-eqz p2, :cond_4

    iget-object p2, p4, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$ViewHolder;->mSwitch:Landroid/widget/CompoundButton;

    iget-boolean v0, p1, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mDeleted:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p2, p4, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$ViewHolder;->mSwitch:Landroid/widget/CompoundButton;

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsFragment;->mUserManager:Landroid/os/UserManager;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p1, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mProfileId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    const-string v3, "no_config_credentials"

    invoke-virtual {v0, v3, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    iget p2, p1, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mProfileId:I

    invoke-static {p0, p2}, Lcom/android/settings/Utils;->isUserRemoveCertificateAllowedAsUser(Landroid/content/Context;I)Z

    move-result p2

    const-string v0, "Disabling switch as certificate "

    const-string v2, "TrustedCredentialsFragment"

    if-nez p2, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p1, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mAlias:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " removal is not allowed by MDM policy"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object p2, p1, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mAlias:Ljava/lang/String;

    iget v3, p1, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mProfileId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {p2, v3}, [Ljava/lang/String;

    move-result-object p2

    const-string v3, "content://com.sec.knox.provider/CertificatePolicy"

    const-string v4, "isCaCertificateDisabledAsUser"

    invoke-static {p0, v3, v4, p2}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-ne p0, v1, :cond_3

    const-string p0, "Settings"

    const-string p2, "CaCertificateDisabledAsUser : disabled"

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p1, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mAlias:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is untrusted by MDM policy and can\'t be re-enabled"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object p0, p4, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$ViewHolder;->mSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {p0, p3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    :cond_3
    iget-object p0, p4, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$ViewHolder;->mSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {p0, p3}, Landroid/widget/CompoundButton;->setVisibility(I)V

    iget-object p0, p4, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$ViewHolder;->mSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setTag(Ljava/lang/Object;)V

    :cond_4
    return-object p5
.end method

.method public final getChildrenCount(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsFragment$AdapterData;

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getGroup(I)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsFragment$AdapterData;

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    invoke-direct {v0, p0}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public final getGroupCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsFragment$AdapterData;

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    return p0
.end method

.method public final getGroupId(I)J
    .locals 0

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsFragment$AdapterData;

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public final getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const-string v1, "layout_inflater"

    invoke-virtual {p3, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    sget-object v1, Lcom/android/settings/Utils;->sBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/internal/R$styleable;->Preference:[I

    const/4 v3, 0x0

    const v4, 0x101008c

    invoke-virtual {v1, v3, v2, v4, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p3, v2, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    new-instance p4, Landroid/util/TypedValue;

    invoke-direct {p4}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101030e

    invoke-virtual {v1, v2, p4, p2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p4, p4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p3, p4}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    const p4, 0x1020016

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    iget-object v1, v1, Lcom/android/settings/TrustedCredentialsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsFragment$AdapterData;

    iget-object v2, v2, Lcom/android/settings/TrustedCredentialsFragment$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    const v2, 0x7f142136

    const-string v3, " "

    if-eqz v1, :cond_3

    iget p2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p2

    if-eqz p2, :cond_2

    iget p2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isAppSeparationUserId(I)Z

    move-result p2

    if-nez p2, :cond_1

    iget p2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    iget-object p2, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/settings/TrustedCredentialsFragment;->mDescription:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    iget-object p1, p1, Lcom/android/settings/TrustedCredentialsFragment;->mDescription:Ljava/lang/String;

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    iget-object p2, p2, Lcom/android/settings/TrustedCredentialsFragment;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    iget-object p2, p1, Lcom/android/settings/TrustedCredentialsFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p2

    new-instance v1, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;I)V

    const-string v0, "Settings.WORK_CATEGORY_HEADER"

    invoke-virtual {p2, v0, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/settings/TrustedCredentialsFragment;->mDescription:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    iget-object p1, p1, Lcom/android/settings/TrustedCredentialsFragment;->mDescription:Ljava/lang/String;

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    iget-object p2, p2, Lcom/android/settings/TrustedCredentialsFragment;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/multiuser/Flags;->handleInterleavedSettingsForPrivateSpace()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    iget-object p1, p1, Lcom/android/settings/TrustedCredentialsFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance v0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;I)V

    const-string p0, "Settings.PRIVATE_CATEGORY_HEADER"

    invoke-virtual {p1, p0, v0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    const p2, 0x7f140d8a

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/settings/TrustedCredentialsFragment;->mDescription:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    iget-object p1, p1, Lcom/android/settings/TrustedCredentialsFragment;->mDescription:Ljava/lang/String;

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    iget-object p2, p2, Lcom/android/settings/TrustedCredentialsFragment;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    iget-object p2, p1, Lcom/android/settings/TrustedCredentialsFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p2

    new-instance v0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;I)V

    const-string v1, "Settings.PERSONAL_CATEGORY_HEADER"

    invoke-virtual {p2, v1, v0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/settings/TrustedCredentialsFragment;->mDescription:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    iget-object p1, p1, Lcom/android/settings/TrustedCredentialsFragment;->mDescription:Ljava/lang/String;

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    iget-object p2, p2, Lcom/android/settings/TrustedCredentialsFragment;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-object p3
.end method

.method public final hasStableIds()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isChildSelectable(II)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final load()V
    .locals 1

    new-instance v0, Lcom/android/settings/TrustedCredentialsFragment$AdapterData$AliasLoader;

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsFragment$AdapterData;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p0}, Lcom/android/settings/TrustedCredentialsFragment$AdapterData$AliasLoader;-><init>(Lcom/android/settings/TrustedCredentialsFragment$AdapterData;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 0

    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    invoke-virtual {p0, p3, p4}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->getChild(II)Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    move-result-object p0

    new-instance p2, Lcom/android/settings/TrustedCredentialsDialogBuilder;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/android/settings/TrustedCredentialsDialogBuilder;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;)V

    const/4 p1, 0x1

    const/4 p3, 0x0

    if-nez p0, :cond_0

    new-array p0, p3, [Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    goto :goto_0

    :cond_0
    new-array p4, p1, [Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    aput-object p0, p4, p3

    move-object p0, p4

    :goto_0
    iget-object p3, p2, Lcom/android/settings/TrustedCredentialsDialogBuilder;->mDialogEventHandler:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    iput-object p0, p3, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCertHolders:[Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return p1
.end method

.method public final onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p3, p1}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->checkGroupExpandableAndStartWarningActivity(IZ)Z

    move-result p0

    xor-int/2addr p0, p1

    return p0
.end method
