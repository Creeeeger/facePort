.class public final synthetic Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    iput p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda0;->f$1:I

    iput-boolean p3, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    iget v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda0;->f$1:I

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda0;->f$2:Z

    iget-object v2, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mCarrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

    invoke-virtual {v2, v1}, Lcom/android/systemui/util/CarrierConfigTracker;->getCarrierProvisionsWifiMergedNetworksBool(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->getMergedCarrierEntry()Lcom/android/wifitrackerlib/MergedCarrierEntry;

    move-result-object v0

    if-nez v0, :cond_1

    sget-boolean p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "InternetDialogController"

    const-string v0, "MergedCarrierEntry is null, can not set the status."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v2, v0, Lcom/android/wifitrackerlib/MergedCarrierEntry;->mSubscriptionId:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, p0}, Landroid/net/wifi/WifiManager;->setCarrierNetworkOffloadEnabled(IZZ)V

    if-nez p0, :cond_2

    iget-object p0, v0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->stopRestrictingAutoJoinToSubscriptionId()V

    iget-object p0, v0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->startScan()Z

    :cond_2
    :goto_0
    return-void
.end method
