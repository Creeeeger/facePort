.class Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;
.super Ljava/lang/Object;
.source "SavedAccessPointsListAdapter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SavedWifiEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/wifitrackerlib/WifiEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsChecked:Z

.field private mTitle:Ljava/lang/String;

.field private mViewType:I

.field private mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field final synthetic this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    .line 391
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;->mTitle:Ljava/lang/String;

    .line 396
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 397
    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;->mTitle:Ljava/lang/String;

    const/4 p1, 0x0

    .line 398
    iput p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;->mViewType:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;Ljava/lang/String;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;->mTitle:Ljava/lang/String;

    const/4 p1, 0x1

    .line 403
    iput p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;->mViewType:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/wifitrackerlib/WifiEntry;)I
    .locals 0

    .line 434
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 388
    check-cast p1, Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;->compareTo(Lcom/android/wifitrackerlib/WifiEntry;)I

    move-result p0

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 429
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getViewType()I
    .locals 0

    .line 425
    iget p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;->mViewType:I

    return p0
.end method

.method public getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;
    .locals 0

    .line 416
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    return-object p0
.end method

.method public isChecked()Z
    .locals 0

    .line 420
    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;->mIsChecked:Z

    return p0
.end method

.method public setChecked(Z)V
    .locals 2

    .line 411
    iget v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;->mViewType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->isRemovable(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 412
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;->mIsChecked:Z

    :cond_1
    :goto_0
    return-void
.end method
