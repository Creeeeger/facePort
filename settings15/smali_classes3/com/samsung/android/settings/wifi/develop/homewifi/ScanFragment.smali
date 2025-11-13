.class public Lcom/samsung/android/settings/wifi/develop/homewifi/ScanFragment;
.super Landroidx/fragment/app/Fragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mRepo:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

.field public mSsidListAdapter:Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p2, "HomeWifi.ScanFragment"

    const-string p3, "onCreateView"

    invoke-static {p2, p3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p2, 0x7f0d0a63

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$LazyHolder;->INSTANCE:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/ScanFragment;->mRepo:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

    const p2, 0x7f0a11a6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/ScanFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/ScanFragment;->mSsidListAdapter:Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter;

    if-nez p2, :cond_0

    new-instance p2, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter;

    iget-object p3, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/ScanFragment;->mRepo:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

    iget-object p3, p3, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->ssidList:Ljava/util/ArrayList;

    invoke-direct {p2, p3}, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter;-><init>(Ljava/util/ArrayList;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/ScanFragment;->mSsidListAdapter:Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter;

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/ScanFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/ScanFragment;->mSsidListAdapter:Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter;

    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-object p1
.end method
