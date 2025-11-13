.class public Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SavedAccessPointsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$OnSavedAccessPointsListener;,
        Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static DBG:Z


# instance fields
.field private mActivatedEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mFragment:Landroidx/fragment/app/Fragment;

.field private mInactivateEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDevelopmentMode:Z

.field private mIsRemoveMode:Z

.field private mListener:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$OnSavedAccessPointsListener;

.field private mRemovableEntriesCount:I

.field private mRemoveCandidateEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedWifiEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$-c5sYK4dMY3zBho-opQeGidza84(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->lambda$getReorderedWifiEntries$4(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$2Gtf-zMA29UN88LcJWy6Gm8xRjI(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->isConnected(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$8kY2ZNId3Y5naIjtduoICJUnRXU(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;Lcom/android/wifitrackerlib/WifiEntry;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->lambda$onBindViewHolder$1(Lcom/android/wifitrackerlib/WifiEntry;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G6UeE6yrRKpFT094LIRBPWy2xX0(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;Ljava/util/ArrayList;Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->lambda$getReorderedWifiEntries$5(Ljava/util/ArrayList;Lcom/android/wifitrackerlib/WifiEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KxmK8RoexvgdMxwM7bfTLPftMjk(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;ILandroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->lambda$onBindViewHolder$0(ILandroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$bKsr74yO4xKtDjb4PW2qpzG-VEQ(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;Lcom/android/wifitrackerlib/WifiEntry;ILandroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->lambda$onBindViewHolder$2(Lcom/android/wifitrackerlib/WifiEntry;ILandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$trfDa3OVK9qJkT_8WwYeLDf-9zg(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;Lcom/android/wifitrackerlib/WifiEntry;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->lambda$forgetNetwork$6(Lcom/android/wifitrackerlib/WifiEntry;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$vlxxKaXtP4DI2cxUQqN9pKiax4E(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->lambda$updateAllAccessPoints$3(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 69
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/net/wifi/WifiManager;ZLandroidx/fragment/app/Fragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;",
            "Landroid/net/wifi/WifiManager;",
            "Z",
            "Landroidx/fragment/app/Fragment;",
            ")V"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mIsRemoveMode:Z

    .line 79
    iput v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mRemovableEntriesCount:I

    .line 87
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mContext:Landroid/content/Context;

    .line 88
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 89
    iput-boolean p4, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mIsDevelopmentMode:Z

    .line 90
    iput-object p5, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mFragment:Landroidx/fragment/app/Fragment;

    const-string p3, "connectivity"

    .line 91
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 92
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mRemoveCandidateEntries:Ljava/util/ArrayList;

    .line 93
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mInactivateEntries:Ljava/util/ArrayList;

    .line 94
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mSavedWifiEntries:Ljava/util/ArrayList;

    .line 95
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->updateAllAccessPoints(Ljava/util/Collection;)V

    return-void
.end method

.method private clearAll()V
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mSavedWifiEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 261
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;

    const/4 v2, 0x0

    .line 263
    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;->setChecked(Z)V

    goto :goto_0

    .line 265
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private getReorderedWifiEntries(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;",
            ">;"
        }
    .end annotation

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 223
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 225
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mActivatedEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 226
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mInactivateEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 229
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    return-object p1

    .line 231
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v1, :cond_1

    .line 233
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mActivatedEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 234
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 238
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 239
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v3, v1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$$ExternalSyntheticLambda6;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 240
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 243
    sget-object v1, Lcom/android/wifitrackerlib/WifiEntry;->TITLE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 246
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mActivatedEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v1, :cond_2

    .line 247
    new-instance v1, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->wifi_preference_connected_network:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;-><init>(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    new-instance v1, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mActivatedEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;-><init>(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 252
    new-instance v1, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->wifi_access_points_manage:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;-><init>(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    new-instance v1, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_3
    return-object p1
.end method

.method private isConnected(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    .line 348
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/android/wifitrackerlib/WifiEntry;->updateConnectionInfo(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    .line 349
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isRemoveRecommendedWifiEntry(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;)Z
    .locals 0

    .line 214
    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 215
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->hasEverConnected()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$forgetNetwork$6(Lcom/android/wifitrackerlib/WifiEntry;I)V
    .locals 0

    .line 312
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->checkRemovingStatus(Lcom/android/wifitrackerlib/WifiEntry;)V

    return-void
.end method

.method private static synthetic lambda$getReorderedWifiEntries$4(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 0

    .line 239
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$getReorderedWifiEntries$5(Ljava/util/ArrayList;Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 1

    .line 253
    new-instance v0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;-><init>(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(ILandroid/widget/CompoundButton;Z)V
    .locals 0

    .line 129
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mSavedWifiEntries:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;

    invoke-virtual {p1, p3}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;->setChecked(Z)V

    .line 130
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mListener:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$OnSavedAccessPointsListener;

    if-eqz p0, :cond_0

    .line 131
    invoke-interface {p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$OnSavedAccessPointsListener;->onCheckedChange()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Lcom/android/wifitrackerlib/WifiEntry;ILandroid/view/View;)V
    .locals 0

    .line 135
    iget-boolean p3, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mIsRemoveMode:Z

    if-nez p3, :cond_1

    .line 136
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mListener:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$OnSavedAccessPointsListener;

    if-eqz p2, :cond_0

    .line 137
    invoke-interface {p2}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$OnSavedAccessPointsListener;->onLaunchDetailsFragment()V

    .line 139
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->launchNetworkDetailsFragment(Lcom/android/wifitrackerlib/WifiEntry;)V

    goto :goto_0

    .line 141
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mSavedWifiEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 142
    iget-object p3, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mSavedWifiEntries:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;

    invoke-virtual {p3, p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;->setChecked(Z)V

    .line 143
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 144
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mListener:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$OnSavedAccessPointsListener;

    if-eqz p0, :cond_2

    .line 145
    invoke-interface {p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$OnSavedAccessPointsListener;->onCheckedChange()V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$2(Lcom/android/wifitrackerlib/WifiEntry;ILandroid/view/View;)Z
    .locals 1

    .line 151
    iget-object p3, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mListener:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$OnSavedAccessPointsListener;

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    .line 152
    :cond_0
    invoke-interface {p3}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$OnSavedAccessPointsListener;->onLongClick()V

    .line 153
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->isRemovable(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_1

    .line 154
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mSavedWifiEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mSavedWifiEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;

    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;->isChecked()Z

    move-result p2

    xor-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;->setChecked(Z)V

    .line 155
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mListener:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$OnSavedAccessPointsListener;

    invoke-interface {p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$OnSavedAccessPointsListener;->onCheckedChange()V

    :cond_1
    return p3
.end method

.method private synthetic lambda$updateAllAccessPoints$3(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;)Z
    .locals 0

    .line 202
    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->isRemovable(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p0

    return p0
.end method

.method private launchNetworkDetailsFragment(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 5

    .line 353
    sget-boolean v0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SavedAccessPointsListAdapter"

    const-string v1, "launchNetworkDetailsFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_0
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x1

    :goto_0
    const-string v0, "WIFI_220"

    const-string v4, "1266"

    .line 354
    invoke-static {v0, v4, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;J)V

    .line 357
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 358
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 359
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 360
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mContext:Landroid/content/Context;

    .line 361
    invoke-static {p0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    .line 360
    invoke-static {p0, p1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    .line 363
    :cond_2
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->canModifyNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 367
    :cond_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 368
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v2, "key_chosen_wifientry_key"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "key_chosen_wifientry_config"

    .line 369
    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    const-string v0, "manage_network"

    .line 370
    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 376
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;

    .line 377
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 p1, 0x67

    .line 378
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 379
    invoke-virtual {p0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 380
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method


# virtual methods
.method public canModifyNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    .line 385
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->canModifyNetwork(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0
.end method

.method public checkRemovingStatus(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mRemoveCandidateEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 333
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mRemoveCandidateEntries:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mListener:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$OnSavedAccessPointsListener;

    invoke-interface {p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$OnSavedAccessPointsListener;->onFinish()V

    :cond_0
    return-void
.end method

.method public forgetNetwork(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 308
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->canForget()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiUtils;->isBlockedByEnterprise(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mContext:Landroid/content/Context;

    .line 309
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 310
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->checkRemovingStatus(Lcom/android/wifitrackerlib/WifiEntry;)V

    goto :goto_0

    .line 312
    :cond_2
    new-instance v0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-virtual {p1, v0}, Lcom/android/wifitrackerlib/WifiEntry;->forget(Lcom/android/wifitrackerlib/WifiEntry$ForgetCallback;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public getCheckedCount()I
    .locals 2

    .line 337
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mSavedWifiEntries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$$ExternalSyntheticLambda8;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public getItemCount()I
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mSavedWifiEntries:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getItemViewType(I)I
    .locals 1

    if-ltz p1, :cond_1

    .line 192
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mSavedWifiEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mSavedWifiEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;->getViewType()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public getRecommendedWifiEntries()[Z
    .locals 3

    .line 206
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->getItemCount()I

    move-result v0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    .line 207
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 208
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mSavedWifiEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->isRemoveRecommendedWifiEntry(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;)Z

    move-result v2

    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getRemovableEntriesNumber()I
    .locals 0

    .line 322
    iget p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mRemovableEntriesCount:I

    return p0
.end method

.method public getSavedWifiEntries()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;",
            ">;"
        }
    .end annotation

    .line 318
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mSavedWifiEntries:Ljava/util/ArrayList;

    return-object p0
.end method

.method public isRemovable(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 326
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->canModifyNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->semIsEphemeral()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/settings/wifi/WifiUtils;->isBlockedByEnterprise(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mContext:Landroid/content/Context;

    .line 328
    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 66
    check-cast p1, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->onBindViewHolder(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsHolder;I)V
    .locals 6

    .line 114
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mSavedWifiEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 115
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 116
    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsHolder;->getCell()Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCell;

    move-result-object v0

    .line 117
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mSavedWifiEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v3

    .line 118
    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mIsDevelopmentMode:Z

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCell;->setWifiEntry(Lcom/android/wifitrackerlib/WifiEntry;Z)V

    .line 119
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->isConnected(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCell;->setTextColor(Z)V

    .line 120
    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mIsRemoveMode:Z

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCell;->setShowCheckbox(Z)V

    .line 121
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->isRemovable(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 122
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCell;->getCheckbox()Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 124
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCell;->getCheckbox()Landroid/widget/CheckBox;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 125
    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mIsRemoveMode:Z

    if-eqz v4, :cond_2

    .line 126
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCell;->getCheckbox()Landroid/widget/CheckBox;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mSavedWifiEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 128
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCell;->getCheckbox()Landroid/widget/CheckBox;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, p2}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;I)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 134
    new-instance v4, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v3, p2}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;Lcom/android/wifitrackerlib/WifiEntry;I)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLongClickable(Z)V

    .line 150
    new-instance v4, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v3, p2}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;Lcom/android/wifitrackerlib/WifiEntry;I)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 159
    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mIsRemoveMode:Z

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCell;->getDescription(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 160
    :cond_3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-ne v0, v2, :cond_a

    .line 161
    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsHolder;->getCategory()Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCategory;

    move-result-object v0

    .line 162
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mSavedWifiEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCategory;->setCategory(Ljava/lang/String;)V

    :goto_0
    add-int/lit8 v0, p2, -0x1

    .line 168
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->getItemViewType(I)I

    move-result v0

    add-int/lit8 v3, p2, 0x1

    .line 169
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->getItemViewType(I)I

    move-result v3

    if-eq v0, v2, :cond_7

    if-nez p2, :cond_4

    goto :goto_2

    .line 177
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->getItemCount()I

    move-result p0

    sub-int/2addr p0, v2

    if-eq p2, p0, :cond_6

    if-ne v3, v2, :cond_5

    goto :goto_1

    .line 181
    :cond_5
    iput v1, p1, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsHolder;->roundMode:I

    goto :goto_4

    :cond_6
    :goto_1
    const/16 p0, 0xc

    .line 178
    iput p0, p1, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsHolder;->roundMode:I

    goto :goto_4

    :cond_7
    :goto_2
    if-eq v3, v2, :cond_9

    .line 171
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->getItemCount()I

    move-result p0

    sub-int/2addr p0, v2

    if-ne p2, p0, :cond_8

    goto :goto_3

    :cond_8
    const/4 p0, 0x3

    .line 174
    iput p0, p1, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsHolder;->roundMode:I

    goto :goto_4

    :cond_9
    :goto_3
    const/16 p0, 0xf

    .line 172
    iput p0, p1, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsHolder;->roundMode:I

    :cond_a
    :goto_4
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsHolder;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 103
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcom/android/settings/R$layout;->sec_saved_access_point_cell:I

    .line 104
    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCell;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 106
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcom/android/settings/R$layout;->sec_saved_access_point_category:I

    .line 107
    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCategory;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 109
    :goto_0
    new-instance p1, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsHolder;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsHolder;-><init>(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointItem;)V

    return-object p1
.end method

.method public removeCheckedWifiEntries()V
    .locals 4

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mSavedWifiEntries:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 291
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 292
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 293
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;

    .line 294
    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v2

    .line 296
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mRemoveCandidateEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->forgetNetwork(Lcom/android/wifitrackerlib/WifiEntry;)V

    .line 298
    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 299
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->syncToRemove(Landroid/net/wifi/WifiConfiguration;)V

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SavedAccessPointsListAdapter"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setChecked(IZ)V
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mSavedWifiEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;

    .line 342
    invoke-virtual {v0, p2}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;->setChecked(Z)V

    .line 343
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public setOnSavedAccessPointsListener(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$OnSavedAccessPointsListener;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mListener:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$OnSavedAccessPointsListener;

    return-void
.end method

.method public setRemoveAllState(Z)V
    .locals 4

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mSavedWifiEntries:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 276
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, -0x1

    .line 278
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 280
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;

    .line 281
    invoke-virtual {v3, p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;->setChecked(Z)V

    .line 282
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 284
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mSavedWifiEntries:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 285
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mSavedWifiEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setRemoveMode(Z)V
    .locals 0

    .line 269
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mIsRemoveMode:Z

    if-eqz p1, :cond_0

    .line 270
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
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

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mSavedWifiEntries:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 198
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mSavedWifiEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 199
    check-cast p1, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->getReorderedWifiEntries(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mSavedWifiEntries:Ljava/util/ArrayList;

    .line 200
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAllAccessPoints "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mSavedWifiEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SavedAccessPointsListAdapter"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->clearAll()V

    .line 202
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mSavedWifiEntries:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->mRemovableEntriesCount:I

    return-void
.end method
