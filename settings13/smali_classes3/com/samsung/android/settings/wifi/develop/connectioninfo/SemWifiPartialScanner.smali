.class public Lcom/samsung/android/settings/wifi/develop/connectioninfo/SemWifiPartialScanner;
.super Ljava/lang/Object;
.source "SemWifiPartialScanner.java"

# interfaces
.implements Landroid/net/wifi/WifiScanner$ScanListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/develop/connectioninfo/SemWifiPartialScanner$PartialScannerCallback;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String; = "ConnectionInfo.WifiPartialScanner"


# instance fields
.field mListener:Lcom/samsung/android/settings/wifi/develop/connectioninfo/SemWifiPartialScanner$PartialScannerCallback;

.field mWifiScanner:Landroid/net/wifi/WifiScanner;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/wifi/develop/connectioninfo/SemWifiPartialScanner$PartialScannerCallback;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "wifiscanner"

    .line 34
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiScanner;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/SemWifiPartialScanner;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 35
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/SemWifiPartialScanner;->mListener:Lcom/samsung/android/settings/wifi/develop/connectioninfo/SemWifiPartialScanner$PartialScannerCallback;

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onFullResult(Landroid/net/wifi/ScanResult;)V
    .locals 0

    return-void
.end method

.method public onPeriodChanged(I)V
    .locals 0

    return-void
.end method

.method public onResults([Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/SemWifiPartialScanner;->mListener:Lcom/samsung/android/settings/wifi/develop/connectioninfo/SemWifiPartialScanner$PartialScannerCallback;

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/SemWifiPartialScanner$PartialScannerCallback;->onPartialScanUpdated([Landroid/net/wifi/WifiScanner$ScanData;)V

    return-void
.end method

.method public onSuccess()V
    .locals 0

    return-void
.end method

.method public triggerPartialScan(I)V
    .locals 4

    .line 39
    sget-object v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/SemWifiPartialScanner;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trigger partial scan "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    new-instance v0, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    const/4 v1, 0x2

    .line 41
    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->type:I

    const/4 v1, 0x0

    .line 43
    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 44
    iput-object v2, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 45
    new-instance v3, Landroid/net/wifi/WifiScanner$ChannelSpec;

    invoke-direct {v3, p1}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    aput-object v3, v2, v1

    const/4 p1, 0x3

    .line 46
    iput p1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    .line 48
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/SemWifiPartialScanner;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    invoke-virtual {p1, v0, p0}, Landroid/net/wifi/WifiScanner;->startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;)V

    return-void
.end method
