.class public final Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAirplaneModeEnabled:Z

.field public mConnected:Z

.field public mEnabled:Z

.field public mIsTransient:Z

.field public mNoDefaultNetwork:Z

.field public mNoNetworksAvailable:Z

.field public mNoValidatedNetwork:Z

.field public mSsid:Ljava/lang/String;

.field public mWifiSignalContentDescription:Ljava/lang/String;

.field public mWifiSignalIconId:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public final copyTo(Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mAirplaneModeEnabled:Z

    iput-boolean v0, p1, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mAirplaneModeEnabled:Z

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mEnabled:Z

    iput-boolean v0, p1, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mEnabled:Z

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mConnected:Z

    iput-boolean v0, p1, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mConnected:Z

    iget v0, p0, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mWifiSignalIconId:I

    iput v0, p1, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mWifiSignalIconId:I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mSsid:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mSsid:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mWifiSignalContentDescription:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mWifiSignalContentDescription:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mIsTransient:Z

    iput-boolean v0, p1, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mIsTransient:Z

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mNoDefaultNetwork:Z

    iput-boolean v0, p1, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mNoDefaultNetwork:Z

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mNoValidatedNetwork:Z

    iput-boolean v0, p1, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mNoValidatedNetwork:Z

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mNoNetworksAvailable:Z

    iput-boolean p0, p1, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mNoNetworksAvailable:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WifiCallbackInfo[mAirplaneModeEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mAirplaneModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mWifiSignalIconId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mWifiSignalIconId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mSsid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mWifiSignalContentDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mWifiSignalContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mIsTransient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mIsTransient:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mNoDefaultNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mNoDefaultNetwork:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mNoValidatedNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mNoValidatedNetwork:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mNoNetworksAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mNoNetworksAvailable:Z

    const/16 v1, 0x5d

    invoke-static {v0, p0, v1}, Landroidx/compose/animation/ChangeSize$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
