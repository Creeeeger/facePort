.class public final Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final STATE_NONE:[I

.field public static final STATE_SECURED:[I

.field public static final STATE_WIFI6E_NONE:[I

.field public static final STATE_WIFI6E_SECURED:[I

.field public static final STATE_WIFI6_NONE:[I

.field public static final STATE_WIFI6_SECURED:[I


# instance fields
.field public mContext:Landroid/content/Context;

.field public mMcfAccessPoints:Ljava/util/List;

.field public mParentView:Landroidx/recyclerview/widget/RecyclerView;

.field public mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field public mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const v0, 0x7f0405dd

    filled-new-array {v0}, [I

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->STATE_SECURED:[I

    const/4 v1, 0x0

    new-array v1, v1, [I

    sput-object v1, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->STATE_NONE:[I

    const v1, 0x7f0405e7

    filled-new-array {v1, v0}, [I

    move-result-object v2

    sput-object v2, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->STATE_WIFI6_SECURED:[I

    filled-new-array {v1}, [I

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->STATE_WIFI6_NONE:[I

    const v1, 0x7f0405e8

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->STATE_WIFI6E_SECURED:[I

    filled-new-array {v1}, [I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->STATE_WIFI6E_NONE:[I

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mMcfAccessPoints:Ljava/util/List;

    if-nez p0, :cond_0

    const-string p0, "McfAutoHotspotListAdapter"

    const-string v0, "getItemCount() - mBleAccessPoints is null so returning 0"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 11

    check-cast p1, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;

    const-string v0, "onBindViewHolder() - Start"

    const-string v1, "McfAutoHotspotListAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p2, :cond_17

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mMcfAccessPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mMcfAccessPoints:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget-object v2, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/samsung/android/wifi/SemWifiManager;->getMcfConnectedStatusFromScanResult(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onBindViewHolder() - Current BleAp values, mWifiMac: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mSSID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", connectedState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p1, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->mIcon:Landroid/widget/ImageView;

    iget-object v3, p1, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    const-string/jumbo v4, "updateIcon() - Triggered"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBLERssi:I

    const-string v5, "bleRssiLevel:"

    const-string v6, ",ap.mNetworkType"

    invoke-static {v4, v5, v6}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mNetworkType:I

    invoke-static {v5, v6, v1}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/16 v5, -0x37

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-lt v4, v5, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/16 v5, -0x41

    if-lt v4, v5, :cond_2

    move v4, v7

    goto :goto_0

    :cond_2
    const/16 v5, -0x4b

    if-lt v4, v5, :cond_3

    move v4, v6

    goto :goto_0

    :cond_3
    const/16 v5, -0x55

    if-lt v4, v5, :cond_4

    move v4, v9

    goto :goto_0

    :cond_4
    move v4, v8

    :goto_0
    if-eqz v3, :cond_e

    invoke-virtual {v3}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0806a2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    sget-boolean v2, Lcom/android/settings/Utils;->MHSDBG:Z

    if-eqz v2, :cond_6

    const-string/jumbo v2, "vendor.wifiap.bleap.icon"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mNetworkType:I

    :cond_6
    iget v2, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mNetworkType:I

    sget v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->MHS_WIFI_6_NETWORK:I

    sget-object v5, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->STATE_WIFI6_NONE:[I

    sget-object v10, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->STATE_WIFI6_SECURED:[I

    if-ne v2, v4, :cond_8

    iget v2, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    if-ne v2, v9, :cond_7

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_2

    :cond_7
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_2

    :cond_8
    sget v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->MHS_WIFI_6E_NETWORK:I

    if-ne v2, v4, :cond_a

    iget v2, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    if-ne v2, v9, :cond_9

    sget-object v2, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->STATE_WIFI6E_SECURED:[I

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_2

    :cond_9
    sget-object v2, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->STATE_WIFI6E_NONE:[I

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_2

    :cond_a
    if-ne v2, v4, :cond_c

    iget v2, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    if-ne v2, v9, :cond_b

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_2

    :cond_b
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_2

    :cond_c
    iget v2, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    if-ne v2, v9, :cond_d

    sget-object v2, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->STATE_SECURED:[I

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_2

    :cond_d
    sget-object v2, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->STATE_NONE:[I

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    :cond_e
    :goto_2
    sget v2, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->$r8$clinit:I

    iget-object v2, p1, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p1, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->mView:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->setEnabled(Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mUserName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v0, v7, :cond_f

    const-string v3, "onBindViewHolder() - Selected  BleAp is in connected state. THIS SHOULD HAVE BE REMOVED"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_f
    iget v3, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBattery:I

    const/16 v4, 0xf

    const-string v5, " "

    const v7, 0x7f1409b2

    if-gt v3, v4, :cond_10

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onBindViewHolder() - Selected  BleAp  has low battery: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBattery:I

    invoke-static {v3, v4, v1}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v7, v2, v5}, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f1432d4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->mView:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_4

    :cond_10
    if-eq v0, v9, :cond_13

    if-ne v0, v6, :cond_11

    goto :goto_3

    :cond_11
    if-gez v0, :cond_12

    const-string v3, "onBindViewHolder() - Selected  BleAp is in (Failed)/(Connection Timed out) state"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v7, v2, v5}, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f142cb6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->mView:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_4

    :cond_12
    const-string v3, "onBindViewHolder() - Available Hotspot live device"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_13
    :goto_3
    const-string v3, "onBindViewHolder() - Selected  BleAp is in Connecting state"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v7, v2, v5}, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f142cb5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v3, :cond_14

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    :cond_14
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getVerboseLoggingLevel()I

    move-result v3

    if-lez v3, :cond_15

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ",version:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->version:I

    const-string v5, ",BLE RSSI:"

    invoke-static {v3, v4, v2, v5}, Landroidx/core/text/PrecomputedTextCompat$Params$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBLERssi:I

    const-string v5, ",battery:"

    invoke-static {v3, v4, v2, v5}, Landroidx/core/text/PrecomputedTextCompat$Params$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBattery:I

    const-string v5, ",Security:"

    invoke-static {v3, v4, v2, v5}, Landroidx/core/text/PrecomputedTextCompat$Params$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    const-string v5, ",hidden:"

    invoke-static {v3, v4, v2, v5}, Landroidx/core/text/PrecomputedTextCompat$Params$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mhidden:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    iget-object v3, p1, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p1, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "onBindViewHolder(): BleAp item is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->mView:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, p1, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->mTitle:Landroid/widget/TextView;

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, p1, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, p1, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_5

    :cond_16
    iget-object v1, p1, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->mView:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, p1, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->mTitle:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, p1, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, p1, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_5
    iget-object p1, p1, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->mView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$1;

    invoke-direct {v1, p0, p2, v0}, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$1;-><init>(Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;Lcom/samsung/android/wifi/SemWifiApBleScanResult;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7

    :cond_17
    :goto_6
    const-string p0, "onBindViewHolder() - invalid index "

    invoke-static {p2, p0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :goto_7
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const-string p1, "McfAutoHotspotListAdapter"

    const-string p2, "onCreateViewHolder() - Start"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    const v1, 0x7f0d0a7b

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mParentView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;

    invoke-direct {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const-string v1, "AutoHotspotApViewHolder() - initiated"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f0a119e

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, v0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->mIcon:Landroid/widget/ImageView;

    const p1, 0x7f0a1041

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->mTitle:Landroid/widget/TextView;

    const p1, 0x7f0a0f81

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->mSummary:Landroid/widget/TextView;

    iput-object p2, v0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->mView:Landroid/view/View;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mContext:Landroid/content/Context;

    const p1, 0x7f080e25

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/StateListDrawable;

    iput-object p0, v0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    return-object v0
.end method
