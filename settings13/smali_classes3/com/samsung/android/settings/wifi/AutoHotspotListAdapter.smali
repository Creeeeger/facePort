.class public Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AutoHotspotListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final STATE_METERED:[I

.field private static final STATE_NONE:[I

.field private static final STATE_SECURED:[I

.field private static final STATE_WIFI6E_NONE:[I

.field private static final STATE_WIFI6E_SECURED:[I

.field private static final STATE_WIFI6_NONE:[I

.field private static final STATE_WIFI6_SECURED:[I

.field private static final mDefaultIconResId:I


# instance fields
.field private mBleAccessPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApBleScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentIconSet:I

.field private final mHideLeftRightPadding:Z

.field private mParentView:Landroidx/recyclerview/widget/RecyclerView;

.field protected mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field protected mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 63
    sget v0, Lcom/android/settings/R$drawable;->ic_wifi_signal_0:I

    sput v0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->mDefaultIconResId:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 66
    sget v2, Lcom/android/settings/R$attr;->state_encrypted:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->STATE_SECURED:[I

    new-array v1, v0, [I

    .line 69
    sget v4, Lcom/android/settings/R$attr;->state_metered:I

    aput v4, v1, v3

    sput-object v1, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->STATE_METERED:[I

    new-array v1, v3, [I

    .line 72
    sput-object v1, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->STATE_NONE:[I

    const/4 v1, 0x2

    new-array v4, v1, [I

    .line 75
    sget v5, Lcom/android/settings/R$attr;->state_wifi_6:I

    aput v5, v4, v3

    aput v2, v4, v0

    sput-object v4, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->STATE_WIFI6_SECURED:[I

    new-array v4, v0, [I

    aput v5, v4, v3

    .line 78
    sput-object v4, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->STATE_WIFI6_NONE:[I

    new-array v1, v1, [I

    .line 81
    sget v4, Lcom/android/settings/R$attr;->state_wifi_6e:I

    aput v4, v1, v3

    aput v2, v1, v0

    sput-object v1, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->STATE_WIFI6E_SECURED:[I

    new-array v0, v0, [I

    aput v4, v0, v3

    .line 84
    sput-object v0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->STATE_WIFI6E_NONE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 2

    .line 96
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 91
    iput v0, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->mCurrentIconSet:I

    const-string v0, "AutoHotspotListAdapter"

    const-string v1, "AutoHotspotListAdapter() - initiated"

    .line 97
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->mContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->mParentView:Landroidx/recyclerview/widget/RecyclerView;

    .line 100
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->mBleAccessPoints:Ljava/util/List;

    .line 101
    iput-boolean p3, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->mHideLeftRightPadding:Z

    .line 102
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->mContext:Landroid/content/Context;

    const-string p2, "sem_wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 103
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private safeSetDefaultIcon(Landroid/widget/ImageView;)V
    .locals 1

    .line 285
    sget v0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->mDefaultIconResId:I

    if-eqz v0, :cond_0

    .line 286
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 287
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 289
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private visibleLeftRightPadding(Landroid/view/View;)V
    .locals 1

    .line 148
    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->mHideLeftRightPadding:Z

    if-eqz p0, :cond_0

    .line 149
    sget p0, Lcom/android/settings/R$id;->left_margin:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    .line 150
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 151
    sget p0, Lcom/android/settings/R$id;->right_margin:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 152
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 244
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->mBleAccessPoints:Ljava/util/List;

    if-nez p0, :cond_0

    const-string p0, "AutoHotspotListAdapter"

    const-string v0, "getItemCount() - mBleAccessPoints is null so returning 0"

    .line 245
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 248
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 44
    check-cast p1, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->onBindViewHolder(Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;I)V
    .locals 8

    const-string v0, "AutoHotspotListAdapter"

    const-string v1, "onBindViewHolder() - Start"

    .line 158
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p2, :cond_a

    .line 160
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->mBleAccessPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p2, v1, :cond_0

    goto/16 :goto_3

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->mBleAccessPoints:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    .line 165
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget-object v2, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/wifi/SemWifiManager;->getSmartApConnectedStatusFromScanResult(Ljava/lang/String;)I

    move-result v1

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBindViewHolder() - Current BleAp values, mWifiMac: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mSSID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", connectedState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;->-$$Nest$fgetmIcon(Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;->-$$Nest$fgetmFrictionSld(Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p2}, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->updateIcon(Landroid/widget/ImageView;Landroid/graphics/drawable/StateListDrawable;Lcom/samsung/android/wifi/SemWifiApBleScanResult;)V

    .line 168
    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;->-$$Nest$fputmBleAccessPoint(Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;Lcom/samsung/android/wifi/SemWifiApBleScanResult;)V

    .line 169
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;->-$$Nest$fgetmTitle(Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;->-$$Nest$fgetmView(Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    iget-object v4, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mUserName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-ne v1, v4, :cond_1

    const-string v4, "onBindViewHolder() - Selected  BleAp is in connected state. THIS SHOULD HAVE BE REMOVED"

    .line 174
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 176
    :cond_1
    iget v4, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBattery:I

    const/16 v6, 0xf

    const-string v7, " "

    if-gt v4, v6, :cond_2

    .line 177
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onBindViewHolder() - Selected  BleAp  has low battery: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBattery:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->comma:I

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->wifi_ap_auto_hotspot_low_battery_summary:I

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;->-$$Nest$fgetmView(Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_2
    if-eq v1, v3, :cond_6

    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    goto :goto_0

    :cond_3
    if-gez v1, :cond_4

    const-string v4, "onBindViewHolder() - Selected  BleAp is in (Failed)/(Connection Timed out) state"

    .line 193
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->comma:I

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->smart_tethering_ap_connection_failed_summary:I

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;->-$$Nest$fgetmView(Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 197
    :cond_4
    iget-boolean v4, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->isMobileDataLimitReached:Z

    if-eqz v4, :cond_5

    const-string v4, "onBindViewHolder() - Selected  BleAp  isMobileDataLimitReached : "

    .line 198
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->comma:I

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->wifi_ap_data_limit_reached:I

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const-string v4, "onBindViewHolder() - Available Hotspot live device"

    .line 204
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    :goto_0
    const-string v4, "onBindViewHolder() - Selected  BleAp is in Connecting state"

    .line 188
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->comma:I

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->smart_tethering_ap_connecting_summary:I

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v4, :cond_7

    .line 209
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 210
    :cond_7
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getVerboseLoggingLevel()I

    move-result v4

    if-lez v4, :cond_8

    .line 211
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ",version:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->version:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ",BLE RSSI:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBLERssi:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 212
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ",battery:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBattery:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 213
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ",Security:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 214
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ",hidden:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mhidden:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 215
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    :cond_8
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;->-$$Nest$fgetmSummary(Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;->-$$Nest$fgetmView(Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "onBindViewHolder(): BleAp item is disabled"

    .line 221
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;->-$$Nest$fgetmView(Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setClickable(Z)V

    .line 223
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;->-$$Nest$fgetmTitle(Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 224
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;->-$$Nest$fgetmSummary(Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 225
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;->-$$Nest$fgetmIcon(Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_2

    .line 227
    :cond_9
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;->-$$Nest$fgetmView(Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 228
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;->-$$Nest$fgetmTitle(Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 229
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;->-$$Nest$fgetmSummary(Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 230
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;->-$$Nest$fgetmIcon(Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 233
    :goto_2
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;->-$$Nest$fgetmView(Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$1;

    invoke-direct {v0, p0, p2, v1}, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$1;-><init>(Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;Lcom/samsung/android/wifi/SemWifiApBleScanResult;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 161
    :cond_a
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onBindViewHolder() - invalid index "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;
    .locals 2

    const-string p1, "AutoHotspotListAdapter"

    const-string p2, "onCreateViewHolder() - Start"

    .line 138
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/android/settings/R$layout;->sec_wifi_list_preference:I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->mParentView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 142
    new-instance p2, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;-><init>(Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;Landroid/view/View;)V

    .line 143
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->visibleLeftRightPadding(Landroid/view/View;)V

    return-object p2
.end method

.method public removeAll()V
    .locals 2

    const-string v0, "AutoHotspotListAdapter"

    const-string v1, "removeAll() - initiated"

    .line 257
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->mBleAccessPoints:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 259
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected updateIcon(Landroid/widget/ImageView;Landroid/graphics/drawable/StateListDrawable;Lcom/samsung/android/wifi/SemWifiApBleScanResult;)V
    .locals 4

    const-string v0, "AutoHotspotListAdapter"

    const-string v1, "updateIcon() - Triggered"

    .line 294
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget v1, p3, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBLERssi:I

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bleRssiLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",ap.mNetworkType"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mNetworkType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/16 v2, -0x37

    if-lt v1, v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/16 v2, -0x41

    if-lt v1, v2, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    const/16 v2, -0x4b

    if-lt v1, v2, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const/16 v2, -0x55

    if-lt v1, v2, :cond_3

    move v1, v0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-eqz p2, :cond_b

    .line 311
    invoke-virtual {p2}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 313
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 314
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_1

    .line 316
    :cond_4
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->safeSetDefaultIcon(Landroid/widget/ImageView;)V

    .line 318
    :goto_1
    sget-boolean p0, Lcom/android/settings/Utils;->MHSDBG:Z

    if-eqz p0, :cond_5

    const-string p0, "vendor.wifiap.bleap.icon"

    .line 319
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 320
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p3, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mNetworkType:I

    .line 323
    :cond_5
    iget p0, p3, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mNetworkType:I

    sget p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->MHS_WIFI_6_NETWORK:I

    if-ne p0, p1, :cond_7

    .line 325
    iget p0, p3, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    if-ne p0, v0, :cond_6

    .line 326
    sget-object p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->STATE_WIFI6_SECURED:[I

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_2

    .line 328
    :cond_6
    sget-object p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->STATE_WIFI6_NONE:[I

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_2

    .line 336
    :cond_7
    sget p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->MHS_WIFI_6E_NETWORK:I

    if-ne p0, p1, :cond_9

    .line 338
    iget p0, p3, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    if-ne p0, v0, :cond_8

    .line 339
    sget-object p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->STATE_WIFI6_SECURED:[I

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_2

    .line 341
    :cond_8
    sget-object p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->STATE_WIFI6_NONE:[I

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_2

    .line 344
    :cond_9
    iget p0, p3, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    if-ne p0, v0, :cond_a

    .line 345
    sget-object p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->STATE_SECURED:[I

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_2

    .line 347
    :cond_a
    sget-object p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->STATE_NONE:[I

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    :cond_b
    :goto_2
    return-void
.end method

.method public updateItems(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApBleScanResult;",
            ">;)V"
        }
    .end annotation

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateItems() - Start, bleAccessPoint count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoHotspotListAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->mBleAccessPoints:Ljava/util/List;

    .line 265
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
