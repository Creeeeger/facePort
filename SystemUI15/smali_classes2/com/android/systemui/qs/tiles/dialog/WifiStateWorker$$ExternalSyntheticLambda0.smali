.class public final synthetic Lcom/android/systemui/qs/tiles/dialog/WifiStateWorker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/dialog/WifiStateWorker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/dialog/WifiStateWorker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/WifiStateWorker$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/dialog/WifiStateWorker;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/WifiStateWorker$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/dialog/WifiStateWorker;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/WifiStateWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tiles/dialog/WifiStateWorker;->mWifiState:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WifiManager.getWifiState():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/systemui/qs/tiles/dialog/WifiStateWorker;->mWifiState:I

    const-string v1, "WifiStateWorker"

    invoke-static {p0, v1, v0}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method
