.class Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter$SavedWifiEntry;
.super Ljava/lang/Object;
.source "DiagnosisAvailableWifiEntryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedWifiEntry"
.end annotation


# instance fields
.field private mTitle:Ljava/lang/String;

.field private mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;


# direct methods
.method public constructor <init>(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 108
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter$SavedWifiEntry;->mTitle:Ljava/lang/String;

    .line 111
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter$SavedWifiEntry;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 112
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter$SavedWifiEntry;->mTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter$SavedWifiEntry;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    return-object p0
.end method
