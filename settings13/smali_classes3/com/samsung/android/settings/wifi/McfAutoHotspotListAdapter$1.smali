.class Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$1;
.super Ljava/lang/Object;
.source "McfAutoHotspotListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->onBindViewHolder(Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;

.field final synthetic val$bleAp:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

.field final synthetic val$connectedState:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;Lcom/samsung/android/wifi/SemWifiApBleScanResult;I)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$1;->this$0:Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$1;->val$bleAp:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    iput p3, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$1;->val$connectedState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 213
    invoke-static {}, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentHolder.mView.setOnClickListener`s onClick() - Clicked BleAp values, mWifiMac: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$1;->val$bleAp:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    iget-object v1, v1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSSID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$1;->val$bleAp:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    iget-object v1, v1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", connectedState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$1;->val$connectedState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",bleAp.version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$1;->val$bleAp:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    iget v1, v1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
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
