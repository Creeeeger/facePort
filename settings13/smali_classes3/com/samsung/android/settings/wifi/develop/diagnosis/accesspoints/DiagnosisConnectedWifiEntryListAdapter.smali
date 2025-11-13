.class public Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisConnectedWifiEntryListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DiagnosisConnectedWifiEntryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisConnectedWifiEntryListAdapter;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisConnectedWifiEntryListAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 31
    check-cast p1, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisConnectedWifiEntryListAdapter;->onBindViewHolder(Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryHolder;I)V
    .locals 0

    .line 54
    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryHolder;->getCell()Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryItem;

    move-result-object p1

    .line 55
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisConnectedWifiEntryListAdapter;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-nez p0, :cond_0

    return-void

    .line 56
    :cond_0
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryItem;->setWifiEntry(Lcom/android/wifitrackerlib/WifiEntry;)V

    const/4 p0, 0x1

    .line 57
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryItem;->setTextColor(Z)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisConnectedWifiEntryListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryHolder;
    .locals 1

    .line 47
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisConnectedWifiEntryListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcom/android/settings/R$layout;->sec_diagnosis_access_point_cell:I

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryItem;

    .line 49
    new-instance p1, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryHolder;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryHolder;-><init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryItem;)V

    return-object p1
.end method

.method public updateConnectedEntry(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisConnectedWifiEntryListAdapter;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 67
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
