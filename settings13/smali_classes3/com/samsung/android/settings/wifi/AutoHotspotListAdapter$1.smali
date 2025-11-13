.class Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$1;
.super Ljava/lang/Object;
.source "AutoHotspotListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->onBindViewHolder(Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;

.field final synthetic val$bleAp:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

.field final synthetic val$connectedState:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;Lcom/samsung/android/wifi/SemWifiApBleScanResult;I)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$1;->this$0:Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$1;->val$bleAp:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    iput p3, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$1;->val$connectedState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 236
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "currentHolder.mView.setOnClickListener`s onClick() - Clicked BleAp values, mWifiMac: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$1;->val$bleAp:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    iget-object v0, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mSSID: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$1;->val$bleAp:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    iget-object v0, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", connectedState:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$1;->val$connectedState:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",bleAp.version:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$1;->val$bleAp:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    iget v0, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->version:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AutoHotspotListAdapter"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$1;->this$0:Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$1;->val$bleAp:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mDevice:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mMHSdeviceType:I

    iget v3, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mhidden:I

    iget v4, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    iget-object v5, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mUserName:Ljava/lang/String;

    iget v7, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->version:I

    iget-boolean v8, p0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->isWifiProfileShareEnabled:Z

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/wifi/SemWifiManager;->connectToSmartMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IZ)Z

    return-void
.end method
