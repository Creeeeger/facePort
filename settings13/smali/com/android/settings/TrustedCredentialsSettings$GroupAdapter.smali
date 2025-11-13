.class Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mData:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

.field final synthetic this$0:Lcom/android/settings/TrustedCredentialsSettings;


# direct methods
.method public static synthetic $r8$lambda$3fEgcEfYAJjdPQd9Yp2BM__h6f8(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->lambda$getGroupView$0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uaUqZvaH2Xtjl0OEFAasl8h8DS0(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->lambda$getGroupView$1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;)V
    .locals 2

    .line 387
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 388
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;Lcom/android/settings/TrustedCredentialsSettings$AdapterData-IA;)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    .line 389
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->load()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;)V

    return-void
.end method

.method private getUserIdByGroup(I)I
    .locals 0

    .line 418
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {p0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->-$$Nest$fgetmCertHoldersByUserId(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0
.end method

.method private getViewForCertificate(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;Lcom/android/settings/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p3, :cond_0

    .line 566
    new-instance p3, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;

    invoke-direct {p3, p0, v0}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;-><init>(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder-IA;)V

    .line 567
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 568
    sget v3, Lcom/android/settings/R$layout;->trusted_credential:I

    invoke-virtual {v2, v3, p4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 569
    invoke-virtual {p4, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 570
    sget v2, Lcom/android/settings/R$id;->trusted_credential_subject_primary:I

    .line 571
    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {p3, v2}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->-$$Nest$fputmSubjectPrimaryView(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;Landroid/widget/TextView;)V

    .line 572
    sget v2, Lcom/android/settings/R$id;->trusted_credential_subject_secondary:I

    .line 573
    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {p3, v2}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->-$$Nest$fputmSubjectSecondaryView(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;Landroid/widget/TextView;)V

    .line 574
    sget v2, Lcom/android/settings/R$id;->trusted_credential_status:I

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    invoke-static {p3, v2}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->-$$Nest$fputmSwitch(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;Landroid/widget/Switch;)V

    .line 576
    invoke-static {p3}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->-$$Nest$fgetmSwitch(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 578
    invoke-static {p3}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->-$$Nest$fgetmSwitch(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;)Landroid/widget/Switch;

    move-result-object v2

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->-$$Nest$fgetmSubjectPrimary(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 581
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;

    move-object v4, p4

    move-object p4, p3

    move-object p3, v4

    .line 584
    :goto_0
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v2}, Lcom/android/settings/TrustedCredentialsSettings;->-$$Nest$fgetmSelectedCertHolder(Lcom/android/settings/TrustedCredentialsSettings;)Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 585
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v2}, Lcom/android/settings/TrustedCredentialsSettings;->-$$Nest$fgetmSelectedCertHolder(Lcom/android/settings/TrustedCredentialsSettings;)Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 586
    invoke-static {p3}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->-$$Nest$fgetmSwitch(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;)Landroid/widget/Switch;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->sendAccessibilityEvent(I)V

    .line 587
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v2, v0}, Lcom/android/settings/TrustedCredentialsSettings;->-$$Nest$fputmSelectedCertHolder(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V

    .line 591
    :cond_1
    invoke-static {p3}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->-$$Nest$fgetmSubjectPrimaryView(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->-$$Nest$fgetmSubjectPrimary(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    invoke-static {p3}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->-$$Nest$fgetmSubjectSecondaryView(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->-$$Nest$fgetmSubjectSecondary(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 593
    invoke-static {p2}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->-$$Nest$fgetmSwitch(Lcom/android/settings/TrustedCredentialsSettings$Tab;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 594
    invoke-static {p3}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->-$$Nest$fgetmSwitch(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;)Landroid/widget/Switch;

    move-result-object p2

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->-$$Nest$fgetmDeleted(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 595
    invoke-static {p3}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->-$$Nest$fgetmSwitch(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;)Landroid/widget/Switch;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->-$$Nest$fgetmUserManager(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v0

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p1, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    const-string v3, "no_config_credentials"

    invoke-virtual {v0, v3, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 599
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings;->-$$Nest$mshouldDisableSwitch(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 600
    invoke-static {p3}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->-$$Nest$fgetmSwitch(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;)Landroid/widget/Switch;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 603
    :cond_2
    invoke-static {p3}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->-$$Nest$fgetmSwitch(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;)Landroid/widget/Switch;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    .line 604
    invoke-static {p3}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->-$$Nest$fgetmSwitch(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;)Landroid/widget/Switch;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setTag(Ljava/lang/Object;)V

    :cond_3
    return-object p4
.end method

.method private synthetic lambda$getGroupView$0()Ljava/lang/String;
    .locals 1

    .line 457
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    sget v0, Lcom/android/settings/R$string;->category_work:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGroupView$1()Ljava/lang/String;
    .locals 1

    .line 467
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    sget v0, Lcom/android/settings/R$string;->category_personal:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public checkGroupExpandableAndStartWarningActivity(I)Z
    .locals 1

    const/4 v0, 0x1

    .line 535
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->checkGroupExpandableAndStartWarningActivity(IZ)Z

    move-result p0

    return p0
.end method

.method public checkGroupExpandableAndStartWarningActivity(IZ)Z
    .locals 3

    .line 540
    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getGroup(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 541
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 542
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings;->-$$Nest$fgetmUserManager(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 543
    invoke-static {v0}, Lcom/android/internal/app/UnlaunchableAppActivity;->createInQuietModeDialogIntent(I)Landroid/content/Intent;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 546
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return v2

    .line 549
    :cond_1
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings;->-$$Nest$fgetmUserManager(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 550
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    .line 551
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 552
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 554
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {p0, v0}, Lcom/android/settings/TrustedCredentialsSettings;->-$$Nest$mstartConfirmCredential(Lcom/android/settings/TrustedCredentialsSettings;I)Z

    :cond_2
    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public getChild(II)Lcom/android/settings/TrustedCredentialsSettings$CertHolder;
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->-$$Nest$fgetmCertHoldersByUserId(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getUserIdByGroup(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    return-object p0
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 0

    .line 382
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getChild(II)Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object p0

    return-object p0
.end method

.method public getChildAdapter(I)Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;
    .locals 3

    .line 531
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;ILcom/android/settings/TrustedCredentialsSettings$ChildAdapter-IA;)V

    return-object v0
.end method

.method public getChildId(II)J
    .locals 0

    int-to-long p0, p2

    return-wide p0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 480
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getChild(II)Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {p2}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->-$$Nest$fgetmTab(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object p2

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getViewForCertificate(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;Lcom/android/settings/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getChildrenCount(I)I
    .locals 0

    .line 398
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {p0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->-$$Nest$fgetmCertHoldersByUserId(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    .line 400
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getGroup(I)Landroid/os/UserHandle;
    .locals 1

    .line 406
    new-instance v0, Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {p0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->-$$Nest$fgetmCertHoldersByUserId(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    invoke-direct {v0, p0}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 0

    .line 382
    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getGroup(I)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public getGroupCount()I
    .locals 0

    .line 394
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {p0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->-$$Nest$fgetmCertHoldersByUserId(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    return p0
.end method

.method public getGroupId(I)J
    .locals 0

    .line 415
    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getUserIdByGroup(I)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p3, :cond_0

    .line 435
    iget-object p2, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string p3, "layout_inflater"

    .line 436
    invoke-virtual {p2, p3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 437
    invoke-static {p2, p4}, Lcom/android/settings/Utils;->inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 439
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 440
    iget-object p4, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p4

    invoke-virtual {p4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p4

    const v0, 0x101030e

    const/4 v1, 0x1

    invoke-virtual {p4, v0, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 442
    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p3, p2}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 p2, 0x0

    .line 443
    invoke-virtual {p3, p2}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    const p2, 0x1020016

    .line 447
    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 448
    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getUserInfoByGroup(I)Landroid/content/pm/UserInfo;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 450
    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getUserInfoByGroup(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 451
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result p4

    if-eqz p4, :cond_1

    const-string p0, "Separated Apps"

    .line 452
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 453
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 454
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 456
    :cond_2
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings;->-$$Nest$fgetmDevicePolicyManager(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/app/admin/DevicePolicyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance p4, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;)V

    const-string p0, "Settings.WORK_CATEGORY_HEADER"

    invoke-virtual {p1, p0, p4}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 462
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getUserInfoByGroup(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 463
    sget p0, Lcom/android/settings/R$string;->dual_app_title:I

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 465
    :cond_4
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings;->-$$Nest$fgetmDevicePolicyManager(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/app/admin/DevicePolicyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance p4, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p4, p0}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;)V

    const-string p0, "Settings.PERSONAL_CATEGORY_HEADER"

    invoke-virtual {p1, p0, p4}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-object p3
.end method

.method public getUserInfoByGroup(I)Landroid/content/pm/UserInfo;
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->-$$Nest$fgetmUserManager(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getUserIdByGroup(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public hasStableIds()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isChildSelectable(II)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public load()V
    .locals 1

    .line 516
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;-><init>(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 0

    .line 491
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {p0, p3, p4}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getChild(II)Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settings/TrustedCredentialsSettings;->-$$Nest$mshowCertDialog(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 501
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .line 503
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v1, v0}, Lcom/android/settings/TrustedCredentialsSettings;->-$$Nest$fputmSelectedCertHolder(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V

    const/16 v1, 0x8

    .line 504
    invoke-virtual {p1, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 506
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/TrustedCredentialsSettings;->removeOrInstallCert(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V

    return-void
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 0

    .line 512
    invoke-virtual {p0, p3}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->checkGroupExpandableAndStartWarningActivity(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public remove(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 0

    .line 520
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->remove(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V

    return-void
.end method
