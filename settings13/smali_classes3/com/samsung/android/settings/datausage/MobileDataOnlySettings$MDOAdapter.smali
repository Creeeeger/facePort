.class public Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MobileDataOnlySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MDOAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$UidDetailTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/apppickerview/widget/AppPickerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field mMDOLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mParent:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private final mProvider:Lcom/android/settingslib/net/UidDetailProvider;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPolicyManager(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;)Landroid/net/NetworkPolicyManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misChecked(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->isChecked(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smupdateView(Lcom/android/settingslib/net/UidDetail;Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->updateView(Lcom/android/settingslib/net/UidDetail;Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;Ljava/util/List;Lcom/android/settingslib/net/UidDetailProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;",
            "Lcom/android/settingslib/net/UidDetailProvider;",
            ")V"
        }
    .end annotation

    .line 581
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 575
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->mMDOLists:Ljava/util/List;

    .line 582
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->mParent:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    .line 583
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->mContext:Landroid/content/Context;

    .line 584
    iput-object p3, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->mProvider:Lcom/android/settingslib/net/UidDetailProvider;

    .line 585
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->setList(Ljava/util/List;)V

    .line 587
    invoke-static {}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->supportSmartManagerForChina()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 588
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    :cond_0
    return-void
.end method

.method private isBlockListed(I)Z
    .locals 0

    .line 701
    invoke-static {}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->-$$Nest$sfgetmBlockMap()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 704
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->-$$Nest$sfgetmBlockMap()Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isChecked(I)Z
    .locals 0

    .line 697
    iget-object p0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/net/ConnectivitySettingsManager;->getMobileDataPreferredUids(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static updateView(Lcom/android/settingslib/net/UidDetail;Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;)V
    .locals 2

    const-string v0, "MobileDataOnlySettings"

    if-nez p1, :cond_0

    const-string p0, "updateView: viewHolder is null, return"

    .line 709
    invoke-static {v0, p0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 714
    :cond_0
    :try_start_0
    iget-object v1, p1, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->appIcon:Landroidx/preference/internal/PreferenceImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->appIcon:Landroidx/preference/internal/PreferenceImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v0, p1, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->uid:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v1, v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    .line 723
    iget-object p0, p0, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception p0

    .line 718
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateView:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 686
    iget-object p0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->mMDOLists:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public onBindViewHolder(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;I)V
    .locals 7

    .line 611
    instance-of v0, p1, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 612
    check-cast p1, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;

    .line 613
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->mMDOLists:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 614
    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, p1, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->uid:I

    .line 615
    iget-object v3, p1, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->appIcon:Landroidx/preference/internal/PreferenceImageView;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 616
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    .line 617
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v4, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$1;

    invoke-direct {v4, p0, p1}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$1;-><init>(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 623
    iget v2, p1, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->uid:I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->isBlockListed(I)Z

    move-result v2

    xor-int/2addr v2, v3

    invoke-virtual {p1, v2}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->setEnabled(Z)V

    .line 625
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->mProvider:Lcom/android/settingslib/net/UidDetailProvider;

    iget v4, p1, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->uid:I

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/settingslib/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settingslib/net/UidDetail;

    move-result-object v2

    const-string v4, "MobileDataOnlySettings"

    if-eqz v2, :cond_0

    .line 627
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UidDetailTask from cache:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->uid:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-static {v2, p1}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->updateView(Lcom/android/settingslib/net/UidDetail;Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;)V

    goto :goto_0

    .line 630
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UidDetailTask new task:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->uid:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    new-instance v2, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$UidDetailTask;

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->mProvider:Lcom/android/settingslib/net/UidDetailProvider;

    invoke-direct {v2, v4, p1, v1}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$UidDetailTask;-><init>(Lcom/android/settingslib/net/UidDetailProvider;Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$UidDetailTask-IA;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v4, v5, [Ljava/lang/Void;

    invoke-virtual {v2, v1, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 634
    :goto_0
    iget-object v1, p1, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->appName:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 635
    iget-object v0, p1, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->appSwitch:Landroid/widget/Switch;

    iget v1, p1, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->uid:I

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->isChecked(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 636
    iget-object v0, p1, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->appSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$2;-><init>(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    if-ne p2, v3, :cond_1

    const/4 p2, 0x3

    .line 665
    iget-object v0, p1, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->view:Landroid/view/View;

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p2, p0}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    .line 666
    iget-object p0, p1, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->semSetRoundedCorners(I)V

    goto :goto_1

    .line 668
    :cond_1
    iget-object p0, p1, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p0, v5}, Landroid/view/View;->semSetRoundedCorners(I)V

    goto :goto_1

    .line 670
    :cond_2
    instance-of p2, p1, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$SeparatorViewHolder;

    if-eqz p2, :cond_3

    .line 671
    check-cast p1, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$SeparatorViewHolder;

    .line 672
    iget-object p2, p1, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$SeparatorViewHolder;->spinner:Landroid/widget/Spinner;

    invoke-virtual {p2, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 673
    iget-object p2, p1, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$SeparatorViewHolder;->spinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->mParent:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->-$$Nest$fgetmSelectedFilter(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 674
    iget-object p1, p1, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$SeparatorViewHolder;->spinner:Landroid/widget/Spinner;

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->mParent:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-static {p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->-$$Nest$fgetmOnItemSelectedListener(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 572
    check-cast p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->onBindViewHolder(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/apppickerview/widget/AppPickerView$ViewHolder;
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 602
    iget-object p0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcom/android/settings/R$layout;->sec_preference_app:I

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 603
    new-instance p1, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    .line 605
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected viewType: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 599
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/android/settings/R$layout;->sec_mobile_data_only_header:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 600
    new-instance p2, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$SeparatorViewHolder;

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->mParent:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-direct {p2, p1, p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$SeparatorViewHolder;-><init>(Landroid/view/View;Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 572
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public setList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 691
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->mMDOLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 692
    iget-object p0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->mMDOLists:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method
