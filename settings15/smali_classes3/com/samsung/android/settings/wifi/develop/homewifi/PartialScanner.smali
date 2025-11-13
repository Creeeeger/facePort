.class public final Lcom/samsung/android/settings/wifi/develop/homewifi/PartialScanner;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mPartialScanListener:Lcom/samsung/android/settings/wifi/develop/homewifi/PartialScanner$1;

.field public mReceiver:Lcom/samsung/android/settings/wifi/develop/homewifi/SignalMeasureFragment$$ExternalSyntheticLambda4;

.field public final mTargetFrequencies:Ljava/util/ArrayList;

.field public mWifiScanner:Landroid/net/wifi/WifiScanner;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/PartialScanner;->mTargetFrequencies:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/homewifi/PartialScanner$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/develop/homewifi/PartialScanner$1;-><init>(Lcom/samsung/android/settings/wifi/develop/homewifi/PartialScanner;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/PartialScanner;->mPartialScanListener:Lcom/samsung/android/settings/wifi/develop/homewifi/PartialScanner$1;

    return-void
.end method
