.class public Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "McfAutoHotspotListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;",
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

.field private static final TAG:Ljava/lang/String; = "McfAutoHotspotListAdapter"

.field private static final mDefaultIconResId:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentIconSet:I

.field private final mHideLeftRightPadding:Z

.field private mMcfAccessPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApBleScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mParentView:Landroidx/recyclerview/widget/RecyclerView;

.field protected mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field protected mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 46
    sget v0, Lcom/android/settings/R$drawable;->ic_wifi_signal_0:I

    sput v0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mDefaultIconResId:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 49
    sget v2, Lcom/android/settings/R$attr;->state_encrypted:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->STATE_SECURED:[I

    new-array v1, v0, [I

    .line 52
    sget v4, Lcom/android/settings/R$attr;->state_metered:I

    aput v4, v1, v3

    sput-object v1, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->STATE_METERED:[I

    new-array v1, v3, [I

    .line 55
    sput-object v1, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->STATE_NONE:[I

    const/4 v1, 0x2

    new-array v4, v1, [I

    .line 58
    sget v5, Lcom/android/settings/R$attr;->state_wifi_6:I

    aput v5, v4, v3

    aput v2, v4, v0

    sput-object v4, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->STATE_WIFI6_SECURED:[I

    new-array v4, v0, [I

    aput v5, v4, v3

    .line 61
    sput-object v4, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->STATE_WIFI6_NONE:[I

    new-array v1, v1, [I

    .line 64
    sget v4, Lcom/android/settings/R$attr;->state_wifi_6e:I

    aput v4, v1, v3

    aput v2, v1, v0

    sput-object v1, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->STATE_WIFI6E_SECURED:[I

    new-array v0, v0, [I

    aput v4, v0, v3

    .line 67
    sput-object v0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->STATE_WIFI6E_NONE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 2

    .line 79
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mCurrentIconSet:I

    .line 80
    sget-object v0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->TAG:Ljava/lang/String;

    const-string v1, "AutoHotspotListAdapter() - initiated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mParentView:Landroidx/recyclerview/widget/RecyclerView;

    .line 83
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mMcfAccessPoints:Ljava/util/List;

    .line 84
    iput-boolean p3, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mHideLeftRightPadding:Z

    .line 85
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mContext:Landroid/content/Context;

    const-string p2, "sem_wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 86
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private safeSetDefaultIcon(Landroid/widget/ImageView;)V
    .locals 1

    .line 262
    sget v0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mDefaultIconResId:I

    if-eqz v0, :cond_0

    .line 263
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 264
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 266
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private visibleLeftRightPadding(Landroid/view/View;)V
    .locals 1

    .line 131
    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mHideLeftRightPadding:Z

    if-eqz p0, :cond_0

    .line 132
    sget p0, Lcom/android/settings/R$id;->left_margin:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    .line 133
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 134
    sget p0, Lcom/android/settings/R$id;->right_margin:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 135
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 221
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mMcfAccessPoints:Ljava/util/List;

    if-nez p0, :cond_0

    .line 222
    sget-object p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->TAG:Ljava/lang/String;

    const-string v0, "getItemCount() - mBleAccessPoints is null so returning 0"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 225
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 28
    check-cast p1, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->onBindViewHolder(Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;I)V
    .locals 8

    .line 141
    sget-object v0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->TAG:Ljava/lang/String;

    const-string v1, "onBindViewHolder() - Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p2, :cond_9

    .line 142
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mMcfAccessPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p2, v1, :cond_0

    goto/16 :goto_3

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mMcfAccessPoints:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    .line 147
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget-object v2, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/wifi/SemWifiManager;->getMcfConnectedStatusFromScanResult(Ljava/lang/String;)I

    move-result v1

    .line 148
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

    .line 149
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->-$$Nest$fgetmIcon(Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->-$$Nest$fgetmFrictionSld(Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p2}, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->updateIcon(Landroid/widget/ImageView;Landroid/graphics/drawable/StateListDrawable;Lcom/samsung/android/wifi/SemWifiApBleScanResult;)V

    .line 150
    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->-$$Nest$fputmBleAccessPoint(Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;Lcom/samsung/android/wifi/SemWifiApBleScanResult;)V

    .line 151
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->-$$Nest$fgetmTitle(Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->-$$Nest$fgetmView(Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    iget-object v4, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mUserName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-ne v1, v4, :cond_1

    const-string v4, "onBindViewHolder() - Selected  BleAp is in connected state. THIS SHOULD HAVE BE REMOVED"

    .line 156
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 158
    :cond_1
    iget v4, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBattery:I

    const/16 v6, 0xf

    const-string v7, " "

    if-gt v4, v6, :cond_2

    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onBindViewHolder() - Selected  BleAp  has low battery: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBattery:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->comma:I

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->wifi_ap_auto_hotspot_low_battery_summary:I

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->-$$Nest$fgetmView(Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    if-eq v1, v3, :cond_5

    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    goto :goto_0

    :cond_3
    if-gez v1, :cond_4

    const-string v4, "onBindViewHolder() - Selected  BleAp is in (Failed)/(Connection Timed out) state"

    .line 175
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->comma:I

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->smart_tethering_ap_connection_failed_summary:I

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->-$$Nest$fgetmView(Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    :cond_4
    const-string v4, "onBindViewHolder() - Available Hotspot live device"

    .line 181
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    :goto_0
    const-string v4, "onBindViewHolder() - Selected  BleAp is in Connecting state"

    .line 170
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->comma:I

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->smart_tethering_ap_connecting_summary:I

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v4, :cond_6

    .line 186
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 187
    :cond_6
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getVerboseLoggingLevel()I

    move-result v4

    if-lez v4, :cond_7

    .line 188
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

    .line 189
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ",battery:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBattery:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 190
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ",Security:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 191
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ",hidden:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mhidden:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 192
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :cond_7
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->-$$Nest$fgetmSummary(Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->-$$Nest$fgetmView(Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "onBindViewHolder(): BleAp item is disabled"

    .line 198
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->-$$Nest$fgetmView(Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setClickable(Z)V

    .line 200
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->-$$Nest$fgetmTitle(Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 201
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->-$$Nest$fgetmSummary(Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 202
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->-$$Nest$fgetmIcon(Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_2

    .line 204
    :cond_8
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->-$$Nest$fgetmView(Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 205
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->-$$Nest$fgetmTitle(Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 206
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->-$$Nest$fgetmSummary(Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 207
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->-$$Nest$fgetmIcon(Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 210
    :goto_2
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->-$$Nest$fgetmView(Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$1;

    invoke-direct {v0, p0, p2, v1}, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$1;-><init>(Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;Lcom/samsung/android/wifi/SemWifiApBleScanResult;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 143
    :cond_9
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

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;
    .locals 2

    .line 121
    sget-object p1, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->TAG:Ljava/lang/String;

    const-string p2, "onCreateViewHolder() - Start"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/android/settings/R$layout;->sec_wifi_list_preference:I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mParentView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 125
    new-instance p2, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;-><init>(Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;Landroid/view/View;)V

    .line 126
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->visibleLeftRightPadding(Landroid/view/View;)V

    return-object p2
.end method

.method public removeAll()V
    .locals 2

    .line 234
    sget-object v0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->TAG:Ljava/lang/String;

    const-string v1, "removeAll() - initiated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mMcfAccessPoints:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 236
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected updateIcon(Landroid/widget/ImageView;Landroid/graphics/drawable/StateListDrawable;Lcom/samsung/android/wifi/SemWifiApBleScanResult;)V
    .locals 4

    .line 271
    sget-object v0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->TAG:Ljava/lang/String;

    const-string v1, "updateIcon() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget v1, p3, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBLERssi:I

    .line 275
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

    .line 288
    invoke-virtual {p2}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 290
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 291
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_1

    .line 293
    :cond_4
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->safeSetDefaultIcon(Landroid/widget/ImageView;)V

    .line 296
    :goto_1
    sget-boolean p0, Lcom/android/settings/Utils;->MHSDBG:Z

    if-eqz p0, :cond_5

    const-string p0, "vendor.wifiap.bleap.icon"

    .line 297
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 298
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p3, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mNetworkType:I

    .line 301
    :cond_5
    iget p0, p3, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mNetworkType:I

    sget p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->MHS_WIFI_6_NETWORK:I

    if-ne p0, p1, :cond_7

    .line 303
    iget p0, p3, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    if-ne p0, v0, :cond_6

    .line 304
    sget-object p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->STATE_WIFI6_SECURED:[I

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_2

    .line 307
    :cond_6
    sget-object p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->STATE_WIFI6_NONE:[I

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_2

    .line 316
    :cond_7
    sget p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->MHS_WIFI_6E_NETWORK:I

    if-ne p0, p1, :cond_9

    .line 318
    iget p0, p3, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    if-ne p0, v0, :cond_8

    .line 319
    sget-object p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->STATE_WIFI6_SECURED:[I

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_2

    .line 322
    :cond_8
    sget-object p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->STATE_WIFI6_NONE:[I

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_2

    .line 325
    :cond_9
    iget p0, p3, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    if-ne p0, v0, :cond_a

    .line 326
    sget-object p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->STATE_SECURED:[I

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_2

    .line 329
    :cond_a
    sget-object p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->STATE_NONE:[I

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    :cond_b
    :goto_2
    return-void
.end method

.method public updateItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApBleScanResult;",
            ">;)V"
        }
    .end annotation

    .line 240
    sget-object v0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateItems() - Start, bleAccessPoint count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mMcfAccessPoints:Ljava/util/List;

    .line 242
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
