.class public Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DiagnosisAvailableWifiEntryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter$SavedWifiEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/OnRestartConnectingListener;

.field private mSavedWifiEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter$SavedWifiEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$VIQc_meOtNKIM_574mQaViQ3u98(Ljava/util/List;Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;->lambda$getReorderedWifiEntries$1(Ljava/util/List;Lcom/android/wifitrackerlib/WifiEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yU4w5Fch07tLSvXjRUHRp-PVSv0(Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;Lcom/android/wifitrackerlib/WifiEntry;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;->lambda$onBindViewHolder$0(Lcom/android/wifitrackerlib/WifiEntry;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/net/wifi/WifiManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;",
            "Landroid/net/wifi/WifiManager;",
            ")V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;->mContext:Landroid/content/Context;

    .line 50
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;->mSavedWifiEntries:Ljava/util/List;

    .line 52
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;->updateAllAccessPoints(Ljava/util/Collection;)V

    return-void
.end method

.method private getReorderedWifiEntries(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter$SavedWifiEntry;",
            ">;"
        }
    .end annotation

    .line 95
    sget-object p0, Lcom/android/wifitrackerlib/WifiEntry;->TITLE_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 97
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-object p0
.end method

.method private static synthetic lambda$getReorderedWifiEntries$1(Ljava/util/List;Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 1

    .line 100
    new-instance v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter$SavedWifiEntry;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter$SavedWifiEntry;-><init>(Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/android/wifitrackerlib/WifiEntry;Landroid/view/View;)V
    .locals 0

    const/4 p2, 0x0

    .line 72
    invoke-virtual {p1, p2}, Lcom/android/wifitrackerlib/WifiEntry;->connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V

    .line 73
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;->mListener:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/OnRestartConnectingListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/OnRestartConnectingListener;->onStartConnecting(Lcom/android/wifitrackerlib/WifiEntry;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;->mSavedWifiEntries:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 38
    check-cast p1, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;->onBindViewHolder(Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryHolder;I)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;->mSavedWifiEntries:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryHolder;->getCell()Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryItem;

    move-result-object p1

    .line 68
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;->mSavedWifiEntries:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter$SavedWifiEntry;

    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter$SavedWifiEntry;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p2

    .line 69
    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryItem;->setWifiEntry(Lcom/android/wifitrackerlib/WifiEntry;)V

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryItem;->setTextColor(Z)V

    .line 71
    new-instance v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryHolder;
    .locals 1

    .line 59
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcom/android/settings/R$layout;->sec_diagnosis_access_point_cell:I

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryItem;

    .line 61
    new-instance p1, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryHolder;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryHolder;-><init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryItem;)V

    return-object p1
.end method

.method public setListener(Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/OnRestartConnectingListener;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;->mListener:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/OnRestartConnectingListener;

    return-void
.end method

.method public updateAllAccessPoints(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;)V"
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;->mSavedWifiEntries:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 88
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;->mSavedWifiEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 89
    check-cast p1, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;->getReorderedWifiEntries(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;->mSavedWifiEntries:Ljava/util/List;

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAllAccessPoints "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;->mSavedWifiEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DiagnosisAvailableWifiEntryListAdapter"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
