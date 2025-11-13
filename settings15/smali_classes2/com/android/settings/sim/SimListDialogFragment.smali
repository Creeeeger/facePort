.class public Lcom/android/settings/sim/SimListDialogFragment;
.super Lcom/android/settings/sim/SimDialogFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mAdapter:Lcom/android/settings/sim/SimListDialogFragment$SelectSubscriptionAdapter;

.field mSubscriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/sim/SimDialogFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/sim/SimListDialogFragment;->mSubscriptions:Ljava/util/List;

    return-void
.end method

.method public static newInstance(IIZZ)Lcom/android/settings/sim/SimListDialogFragment;
    .locals 1

    new-instance v0, Lcom/android/settings/sim/SimListDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/sim/SimListDialogFragment;-><init>()V

    invoke-static {p0, p1}, Lcom/android/settings/sim/SimDialogFragment;->initArguments(II)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "include_ask_every_time"

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "show_cancel_item"

    invoke-virtual {p0, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getCurrentSubscriptions()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->createForAllUserProfiles()Landroid/telephony/SubscriptionManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x6ab

    return p0
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0b38

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a1041

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "title_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object v0, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    new-instance v0, Lcom/android/settings/sim/SimListDialogFragment$SelectSubscriptionAdapter;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/sim/SimListDialogFragment;->mSubscriptions:Ljava/util/List;

    invoke-direct {v0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object v3, v0, Lcom/android/settings/sim/SimListDialogFragment$SelectSubscriptionAdapter;->mSubscriptions:Ljava/util/List;

    iput-object v1, v0, Lcom/android/settings/sim/SimListDialogFragment$SelectSubscriptionAdapter;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/settings/sim/SimListDialogFragment;->mAdapter:Lcom/android/settings/sim/SimListDialogFragment$SelectSubscriptionAdapter;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0b37

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0a02d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/widget/ListView;

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/settings/sim/SimListDialogFragment;->setAdapter(Landroid/widget/ListView;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setVisibility(I)V

    new-instance v1, Lcom/android/settings/sim/SimListDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/sim/SimListDialogFragment$1;-><init>(Lcom/android/settings/sim/SimListDialogFragment;)V

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_1
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setView$1(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/settings/sim/SimListDialogFragment;->updateDialog()V

    return-object p1
.end method

.method public setAdapter(Landroid/widget/ListView;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/sim/SimListDialogFragment;->mAdapter:Lcom/android/settings/sim/SimListDialogFragment$SelectSubscriptionAdapter;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public final updateDialog()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dialog updated, dismiss status: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/settings/sim/SimDialogFragment;->mWasDismissed:Z

    const-string v2, "SimListDialogFragment"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/settings/sim/SimDialogFragment;->mWasDismissed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/sim/SimListDialogFragment;->getCurrentSubscriptions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogFragment;->dismiss()V

    return-void

    :cond_1
    new-instance v1, Lcom/android/settings/sim/SimListDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "include_ask_every_time"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "show_cancel_item"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v1, :cond_2

    if-eqz v2, :cond_5

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v3, v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v2, :cond_4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object v0, v4

    :cond_5
    iget-object v1, p0, Lcom/android/settings/sim/SimListDialogFragment;->mSubscriptions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-void

    :cond_6
    iget-object v1, p0, Lcom/android/settings/sim/SimListDialogFragment;->mSubscriptions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/android/settings/sim/SimListDialogFragment;->mSubscriptions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/android/settings/sim/SimListDialogFragment;->mAdapter:Lcom/android/settings/sim/SimListDialogFragment$SelectSubscriptionAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
