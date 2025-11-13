.class public final Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;

.field public final synthetic val$bleAp:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

.field public final synthetic val$connectedState:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;Lcom/samsung/android/wifi/SemWifiApBleScanResult;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$1;->this$0:Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$1;->val$bleAp:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    iput p3, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$1;->val$connectedState:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "currentHolder.mView.setOnClickListener`s onClick() - Clicked BleAp values, mWifiMac: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$1;->val$bleAp:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    iget-object v0, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mSSID: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$1;->val$bleAp:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    iget-object v0, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", connectedState:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$1;->val$connectedState:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",bleAp.version:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$1;->val$bleAp:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    iget v0, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->version:I

    const-string v1, "McfAutoHotspotListAdapter"

    invoke-static {p1, v0, v1}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$1;->this$0:Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$1;->val$bleAp:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mDevice:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mMHSdeviceType:I

    iget v3, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mhidden:I

    iget v4, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    iget-object v5, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mUserName:Ljava/lang/String;

    iget v7, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->version:I

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/wifi/SemWifiManager;->connectToMcfMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;I)I

    return-void
.end method
