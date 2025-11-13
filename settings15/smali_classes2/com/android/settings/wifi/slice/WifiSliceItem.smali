.class public final Lcom/android/settings/wifi/slice/WifiSliceItem;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final WIFI_CONNECTION_STRENGTH:[I


# instance fields
.field public final mConnectedState:I

.field public final mContext:Landroid/content/Context;

.field public final mInstantHotspotDeviceType:I

.field public final mIsInstantHotspotNetwork:Z

.field public final mIsWifi6ENetwork:Z

.field public final mIsWifi6Network:Z

.field public final mKey:Ljava/lang/String;

.field public final mLevel:I

.field public final mSecurity:I

.field public final mShouldEditBeforeConnect:Z

.field public final mShouldShowXLevelIcon:Z

.field public final mSummary:Ljava/lang/String;

.field public final mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const v0, 0x7f140222

    const v1, 0x7f140221

    const v2, 0x7f140123

    const v3, 0x7f14021d

    const v4, 0x7f140223

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/slice/WifiSliceItem;->WIFI_CONNECTION_STRENGTH:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mKey:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity$1()I

    move-result p1

    iput p1, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mSecurity:I

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p1

    iput p1, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mConnectedState:I

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result p1

    iput p1, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mLevel:I

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->shouldShowXLevelIcon()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mShouldShowXLevelIcon:Z

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->shouldEditBeforeConnect()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mShouldEditBeforeConnect:Z

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->hasInternetAccess()Z

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mSummary:Ljava/lang/String;

    instance-of p1, p2, Lcom/android/wifitrackerlib/HotspotNetworkEntry;

    iput-boolean p1, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mIsInstantHotspotNetwork:Z

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Lcom/android/wifitrackerlib/HotspotNetworkEntry;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->getDeviceType()I

    move-result p1

    iput p1, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mInstantHotspotDeviceType:I

    :cond_0
    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->semIsWifi6ENetwork()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mIsWifi6ENetwork:Z

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->semIsWifi6Network()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mIsWifi6Network:Z

    iget-object p0, p2, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/settings/wifi/slice/WifiSliceItem;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/settings/wifi/slice/WifiSliceItem;

    iget-object v0, p1, Lcom/android/settings/wifi/slice/WifiSliceItem;->mKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mKey:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mConnectedState:I

    iget v2, p1, Lcom/android/settings/wifi/slice/WifiSliceItem;->mConnectedState:I

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    iget v0, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mLevel:I

    iget v2, p1, Lcom/android/settings/wifi/slice/WifiSliceItem;->mLevel:I

    if-eq v0, v2, :cond_3

    return v1

    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mShouldShowXLevelIcon:Z

    iget-boolean v2, p1, Lcom/android/settings/wifi/slice/WifiSliceItem;->mShouldShowXLevelIcon:Z

    if-eq v0, v2, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mSummary:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/settings/wifi/slice/WifiSliceItem;->mSummary:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mIsInstantHotspotNetwork:Z

    iget-boolean v2, p1, Lcom/android/settings/wifi/slice/WifiSliceItem;->mIsInstantHotspotNetwork:Z

    if-eq v0, v2, :cond_6

    return v1

    :cond_6
    iget p0, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mInstantHotspotDeviceType:I

    iget p1, p1, Lcom/android/settings/wifi/slice/WifiSliceItem;->mInstantHotspotDeviceType:I

    if-eq p0, p1, :cond_7

    return v1

    :cond_7
    const/4 p0, 0x1

    return p0
.end method
