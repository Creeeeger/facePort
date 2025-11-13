.class public Lcom/android/wifitrackerlib/StandardWifiEntry;
.super Lcom/android/wifitrackerlib/WifiEntry;
.source "StandardWifiEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;,
        Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mHasAddConfigUserRestriction:Z

.field private final mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

.field private mIsAdminRestricted:Z

.field private final mIsEnhancedOpenSupported:Z

.field private mIsOweTransitionMode:Z

.field private mIsPskSaeTransitionMode:Z

.field private mIsUserShareable:Z

.field private final mIsWapiSupported:Z

.field private final mIsWpa3SaeSupported:Z

.field private final mIsWpa3SuiteBSupported:Z

.field private final mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

.field private final mMatchingScanResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mMatchingWifiConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private mShouldAutoOpenCaptivePortal:Z

.field private mSupportWpaEap:Z

.field private final mTargetScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetSecurityTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$6x8atAI5jZ-ESlO1CXLpC7Qnx98(Landroid/net/wifi/ScanResult;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->lambda$semIs6GHzOnly$7(Landroid/net/wifi/ScanResult;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$BNOv0DaeSYrbD4uxWuNPGPtrXFk(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->lambda$connect$0(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Oj8LAlv3oYIR1ZuYJaMh673O0GM(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->lambda$connect$1(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$__f5AjECLgwlYcFNU21EmkcKlao(Landroid/net/wifi/ScanResult;)I
    .locals 0

    invoke-static {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->lambda$getScanResultDescription$5(Landroid/net/wifi/ScanResult;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$aj0QpM09KMbI4Efalj-kR5YZAJU(Lcom/android/wifitrackerlib/StandardWifiEntry;Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/StandardWifiEntry;->lambda$disconnect$2(Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ds6gYPm53zteeVIyrL6DFyE-E54(Lcom/android/wifitrackerlib/StandardWifiEntry;Ljava/lang/StringBuilder;JLandroid/net/wifi/ScanResult;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wifitrackerlib/StandardWifiEntry;->lambda$getScanResultDescription$6(Ljava/lang/StringBuilder;JLandroid/net/wifi/ScanResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rcjRehuinsPpZzXKNaCQkf1mF90(IILandroid/net/wifi/ScanResult;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/wifitrackerlib/StandardWifiEntry;->lambda$getScanResultDescription$3(IILandroid/net/wifi/ScanResult;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$vTFj_pUh9D-moP24TjrzaxX_zes(Ljava/lang/String;Landroid/net/wifi/ScanResult;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wifitrackerlib/StandardWifiEntry;->lambda$semGetSecurityString$8(Ljava/lang/String;Landroid/net/wifi/ScanResult;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$wMVJgrM88hOjj9apXQHltyPJkC0(Landroid/net/wifi/ScanResult;)I
    .locals 0

    invoke-static {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->lambda$getScanResultDescription$4(Landroid/net/wifi/ScanResult;)I

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/content/Context;Landroid/os/Handler;Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;Landroid/net/wifi/WifiManager;Z)V
    .locals 0

    .line 172
    invoke-direct {p0, p3, p5, p6}, Lcom/android/wifitrackerlib/WifiEntry;-><init>(Landroid/os/Handler;Landroid/net/wifi/WifiManager;Z)V

    .line 128
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mMatchingScanResults:Ljava/util/Map;

    .line 131
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mMatchingWifiConfigs:Ljava/util/Map;

    .line 137
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetScanResults:Ljava/util/List;

    .line 140
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    const/4 p3, 0x0

    .line 142
    iput-boolean p3, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsUserShareable:Z

    .line 144
    iput-boolean p3, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mShouldAutoOpenCaptivePortal:Z

    .line 146
    iput-boolean p3, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsAdminRestricted:Z

    .line 147
    iput-boolean p3, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mHasAddConfigUserRestriction:Z

    .line 156
    iput-boolean p3, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsPskSaeTransitionMode:Z

    .line 157
    iput-boolean p3, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsOweTransitionMode:Z

    .line 158
    iput-boolean p3, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mSupportWpaEap:Z

    .line 173
    iput-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

    .line 174
    iput-object p2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    .line 175
    iput-object p4, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    .line 182
    iget-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {p2}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isWpa3SaeSupported(Landroid/net/wifi/WifiManager;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsWpa3SaeSupported:Z

    .line 183
    iget-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {p2}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isWpa3SuiteBSupported(Landroid/net/wifi/WifiManager;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsWpa3SuiteBSupported:Z

    .line 184
    iget-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {p2}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isEnhancedOpenSupported(Landroid/net/wifi/WifiManager;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsEnhancedOpenSupported:Z

    .line 185
    iget-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {p2}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isWapiSupported(Landroid/net/wifi/WifiManager;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsWapiSupported:Z

    .line 188
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiTrackerInjector;->getUserManager()Landroid/os/UserManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mUserManager:Landroid/os/UserManager;

    .line 189
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiTrackerInjector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 190
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateSecurityTypes()V

    .line 191
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateAdminRestrictions()V

    return-void
.end method

.method constructor <init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/content/Context;Landroid/os/Handler;Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;Ljava/util/List;Ljava/util/List;Landroid/net/wifi/WifiManager;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wifitrackerlib/WifiTrackerInjector;",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Landroid/net/wifi/WifiManager;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p7

    move v6, p8

    .line 202
    invoke-direct/range {v0 .. v6}, Lcom/android/wifitrackerlib/StandardWifiEntry;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/content/Context;Landroid/os/Handler;Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;Landroid/net/wifi/WifiManager;Z)V

    if-eqz p5, :cond_0

    .line 204
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 205
    invoke-virtual {p0, p5}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateConfig(Ljava/util/List;)V

    :cond_0
    if-eqz p6, :cond_1

    .line 207
    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 208
    invoke-virtual {p0, p6}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateScanResultInfo(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method private declared-synchronized getScanResultDescription(II)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 1092
    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetScanResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2}, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda3;-><init>(II)V

    .line 1093
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda4;

    invoke-direct {p2}, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda4;-><init>()V

    .line 1095
    invoke-static {p2}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 1096
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 1098
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_0

    const-string p1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1100
    monitor-exit p0

    return-object p1

    .line 1103
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    .line 1104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    if-le p2, v1, :cond_1

    .line 1106
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda5;-><init>()V

    .line 1107
    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/stream/IntStream;->max()Ljava/util/OptionalInt;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p2

    const-string/jumbo v1, "max="

    .line 1108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1111
    new-instance p2, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0, v0, v1, v2}, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda6;-><init>(Lcom/android/wifitrackerlib/StandardWifiEntry;Ljava/lang/StringBuilder;J)V

    invoke-interface {p1, p2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized getScanResultDescription(Landroid/net/wifi/ScanResult;J)Ljava/lang/String;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    monitor-enter p0

    .line 1119
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " \n{"

    .line 1120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1121
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1122
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "*"

    .line 1123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "="

    .line 1125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1127
    invoke-virtual {p1}, Landroid/net/wifi/ScanResult;->getWifiStandard()I

    move-result v1

    const-string v2, ","

    .line 1128
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/wifitrackerlib/Utils;->getStandardString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1129
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    const-string v1, ",mldMac="

    .line 1130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/ScanResult;->getApMldMacAddress()Landroid/net/MacAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",linkId="

    .line 1131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/ScanResult;->getApMloLinkId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",affLinks="

    .line 1132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/ScanResult;->getAffiliatedMloLinks()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1134
    :cond_1
    iget-wide v1, p1, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    sub-long/2addr p2, v1

    long-to-int p1, p2

    div-int/lit16 p1, p1, 0x3e8

    const-string p2, ","

    .line 1135
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "s"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "}"

    .line 1136
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getSemWifiManager()Lcom/samsung/android/wifi/SemWifiManager;
    .locals 2

    .line 1629
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    if-nez v0, :cond_0

    .line 1630
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sem_wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 1632
    :cond_0
    iget-object p0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-object p0
.end method

.method private hasAdminRestrictions()Z
    .locals 1

    .line 1203
    iget-boolean v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mHasAddConfigUserRestriction:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->isSaved()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->isSuggestion()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean p0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsAdminRestricted:Z

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static isOweTransitionMode(Landroid/net/wifi/ScanResult;)Z
    .locals 1

    .line 1281
    iget-object p0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "OWE_TRANSITION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static isPskSaeTransitionMode(Landroid/net/wifi/ScanResult;)Z
    .locals 2

    .line 1276
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "SAE"

    .line 1277
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSecurityTypeSupported(I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    .line 968
    :pswitch_0
    iget-boolean p0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsWapiSupported:Z

    return p0

    .line 964
    :pswitch_1
    iget-boolean p0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsEnhancedOpenSupported:Z

    return p0

    .line 962
    :pswitch_2
    iget-boolean p0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsWpa3SuiteBSupported:Z

    return p0

    .line 960
    :pswitch_3
    iget-boolean p0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsWpa3SaeSupported:Z

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic lambda$connect$0(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V
    .locals 1

    const/4 v0, 0x3

    .line 444
    invoke-interface {p0, v0}, Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;->onConnectResult(I)V

    return-void
.end method

.method private static synthetic lambda$connect$1(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V
    .locals 1

    const/4 v0, 0x1

    .line 495
    invoke-interface {p0, v0}, Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;->onConnectResult(I)V

    return-void
.end method

.method private synthetic lambda$disconnect$2(Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 513
    iget-boolean p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCalledDisconnect:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 514
    invoke-interface {p1, p0}, Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;->onDisconnectResult(I)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$getScanResultDescription$3(IILandroid/net/wifi/ScanResult;)Z
    .locals 0

    .line 1093
    iget p2, p2, Landroid/net/wifi/ScanResult;->frequency:I

    if-lt p2, p0, :cond_0

    if-gt p2, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getScanResultDescription$4(Landroid/net/wifi/ScanResult;)I
    .locals 0

    .line 1095
    iget p0, p0, Landroid/net/wifi/ScanResult;->level:I

    mul-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private static synthetic lambda$getScanResultDescription$5(Landroid/net/wifi/ScanResult;)I
    .locals 0

    .line 1107
    iget p0, p0, Landroid/net/wifi/ScanResult;->level:I

    return p0
.end method

.method private synthetic lambda$getScanResultDescription$6(Ljava/lang/StringBuilder;JLandroid/net/wifi/ScanResult;)V
    .locals 0

    .line 1112
    invoke-direct {p0, p4, p2, p3}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getScanResultDescription(Landroid/net/wifi/ScanResult;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static synthetic lambda$semGetSecurityString$8(Ljava/lang/String;Landroid/net/wifi/ScanResult;)Z
    .locals 0

    .line 1309
    iget-object p1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$semIs6GHzOnly$7(Landroid/net/wifi/ScanResult;)Z
    .locals 0

    .line 1303
    iget p0, p0, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {p0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->is6GHz(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static supportWpaEap(Landroid/net/wifi/ScanResult;)Z
    .locals 1

    .line 1285
    iget-object p0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "WPA-EAP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private declared-synchronized updateTargetScanResultInfo()V
    .locals 2

    monitor-enter p0

    .line 870
    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetScanResults:Ljava/util/List;

    invoke-static {v0}, Lcom/android/wifitrackerlib/Utils;->getBestScanResultByLevel(Ljava/util/List;)Landroid/net/wifi/ScanResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 874
    invoke-virtual {p0, v0}, Lcom/android/wifitrackerlib/WifiEntry;->updateBestRssi(Landroid/net/wifi/ScanResult;)V

    .line 875
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mBssid:Ljava/lang/String;

    .line 879
    :cond_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 883
    iget v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mRssi:I

    invoke-static {v0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->calculateSignalLevel(I)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 884
    :goto_0
    iput v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    if-ne v0, v1, :cond_2

    const/16 v0, -0x7f

    .line 888
    iput v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mRssi:I

    .line 891
    :cond_2
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->semUpdateQoSInformation()Z

    .line 892
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->semUpdateSpeed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 895
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized canConnect()Z
    .locals 5

    monitor-enter p0

    .line 399
    :try_start_0
    iget v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_9

    .line 400
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 404
    :cond_0
    invoke-direct {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->hasAdminRestrictions()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return v2

    .line 408
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_8

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v0, :cond_8

    .line 410
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->isAuthenticationSimBased()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    .line 411
    monitor-exit p0

    return v3

    .line 413
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    const-class v4, Landroid/telephony/SubscriptionManager;

    .line 414
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 415
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 418
    :cond_3
    iget-object v4, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->carrierId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v4, v1, :cond_4

    .line 420
    monitor-exit p0

    return v3

    .line 422
    :cond_4
    :try_start_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 423
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v1

    iget-object v4, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->carrierId:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v1, v4, :cond_5

    .line 424
    monitor-exit p0

    return v3

    .line 427
    :cond_6
    monitor-exit p0

    return v2

    .line 416
    :cond_7
    :goto_0
    monitor-exit p0

    return v2

    .line 429
    :cond_8
    monitor-exit p0

    return v3

    .line 401
    :cond_9
    :goto_1
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public canDisconnect()Z
    .locals 1

    .line 504
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public declared-synchronized canEasyConnect()Z
    .locals 5

    monitor-enter p0

    .line 598
    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiTrackerInjector;->isDemoMode()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 599
    monitor-exit p0

    return v1

    .line 602
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 604
    monitor-exit p0

    return v1

    .line 607
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isEasyConnectSupported()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_2

    .line 608
    monitor-exit p0

    return v1

    .line 611
    :cond_2
    :try_start_3
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v3, "no_sharing_admin_configured_wifi"

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 613
    invoke-static {v4}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 611
    invoke-virtual {v2, v3, v4}, Landroid/os/UserManager;->hasUserRestrictionForUser(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    .line 614
    invoke-static {v2, v0, v3}, Lcom/android/wifitrackerlib/Utils;->isDeviceOrProfileOwner(ILjava/lang/String;Landroid/content/Context;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_3

    .line 616
    monitor-exit p0

    return v1

    .line 620
    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    const/4 v2, 0x4

    .line 621
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v1, 0x1

    .line 620
    :cond_5
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public canForget()Z
    .locals 0

    .line 526
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canSetAutoJoinEnabled()Z
    .locals 1

    .line 700
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->isSaved()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->isSuggestion()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public canSetMeteredChoice()Z
    .locals 0

    .line 640
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canSetPrivacy()Z
    .locals 0

    .line 661
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->isSaved()Z

    move-result p0

    return p0
.end method

.method public declared-synchronized canShare()Z
    .locals 5

    monitor-enter p0

    .line 562
    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiTrackerInjector;->isDemoMode()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 563
    monitor-exit p0

    return v1

    .line 566
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 568
    monitor-exit p0

    return v1

    .line 571
    :cond_1
    :try_start_2
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v3, "no_sharing_admin_configured_wifi"

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 573
    invoke-static {v4}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 571
    invoke-virtual {v2, v3, v4}, Landroid/os/UserManager;->hasUserRestrictionForUser(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    .line 574
    invoke-static {v2, v0, v3}, Lcom/android/wifitrackerlib/Utils;->isDeviceOrProfileOwner(ILjava/lang/String;Landroid/content/Context;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    .line 576
    monitor-exit p0

    return v1

    .line 579
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    const/4 v4, 0x4

    if-eq v2, v4, :cond_3

    const/4 v4, 0x6

    if-eq v2, v4, :cond_3

    goto :goto_0

    .line 586
    :cond_3
    monitor-exit p0

    return v3

    .line 589
    :cond_4
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized canSignIn()Z
    .locals 2

    monitor-enter p0

    .line 540
    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_0

    const/16 v1, 0x11

    .line 541
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 540
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V
    .locals 4

    monitor-enter p0

    .line 434
    :try_start_0
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectCallback:Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;

    const/4 v0, 0x0

    .line 437
    iput-boolean v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mShouldAutoOpenCaptivePortal:Z

    .line 438
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->stopRestrictingAutoJoinToSubscriptionId()V

    .line 439
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->isSaved()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->isSuggestion()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 460
    :cond_0
    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 462
    new-instance p1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    invoke-virtual {v3}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->getScanResultKey()Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->getSsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 464
    invoke-virtual {p1, v2}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 467
    new-instance v1, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;

    iget-object v2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->reportConnectNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 468
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v2, Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;

    invoke-direct {v2, p0}, Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;-><init>(Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-virtual {v1, p1, v2}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 469
    iput-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 470
    invoke-direct {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getSemWifiManager()Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v1

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/wifi/SemWifiManager;->notifyConnect(ILjava/lang/String;)V

    .line 471
    iget-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 473
    new-instance p1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->getScanResultKey()Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 475
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 478
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_1

    .line 480
    :cond_1
    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 482
    new-instance p1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->getScanResultKey()Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 484
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 487
    new-instance v0, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;

    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->reportConnectNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 488
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v1, Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;

    invoke-direct {v1, p0}, Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;-><init>(Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 489
    iput-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 490
    invoke-direct {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getSemWifiManager()Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v0

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/wifi/SemWifiManager;->notifyConnect(ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_7

    .line 494
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda1;-><init>(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 440
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/wifitrackerlib/Utils;->isSimCredential(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    .line 441
    invoke-static {v0, v1}, Lcom/android/wifitrackerlib/Utils;->isSimPresent(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p1, :cond_4

    .line 443
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda0;-><init>(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    :cond_4
    monitor-exit p0

    return-void

    .line 450
    :cond_5
    :try_start_1
    iget-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-gez p1, :cond_6

    const-string p1, "StandardWifiEntry"

    const-string v0, "failed to connect - invalid network ID"

    .line 451
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 452
    monitor-exit p0

    return-void

    .line 456
    :cond_6
    :try_start_2
    new-instance p1, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;

    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->reportConnectNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 457
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    new-instance v1, Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;

    invoke-direct {v1, p0}, Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;-><init>(Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 458
    invoke-direct {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getSemWifiManager()Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/wifi/SemWifiManager;->notifyConnect(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 500
    :cond_7
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized connectionInfoMatches(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z
    .locals 3

    monitor-enter p0

    .line 1049
    :try_start_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_3

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isOsuAp()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1052
    :cond_0
    iget-object p2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mMatchingWifiConfigs:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 1053
    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_1

    const/4 p1, 0x1

    .line 1054
    monitor-exit p0

    return p1

    .line 1057
    :cond_2
    monitor-exit p0

    return v0

    .line 1050
    :cond_3
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized disconnect(Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;)V
    .locals 4

    monitor-enter p0

    .line 509
    :try_start_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->canDisconnect()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 510
    iput-boolean v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCalledDisconnect:Z

    .line 511
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mDisconnectCallback:Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;

    .line 512
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda2;-><init>(Lcom/android/wifitrackerlib/StandardWifiEntry;Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 518
    new-instance p1, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;

    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->reportDisconnectNetwork()V

    .line 519
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->getScanResultKey()Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->disableEphemeralNetwork(Ljava/lang/String;)V

    .line 520
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->disconnect()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized forget(Lcom/android/wifitrackerlib/WifiEntry$ForgetCallback;)V
    .locals 2

    monitor-enter p0

    .line 531
    :try_start_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->canForget()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mForgetCallback:Lcom/android/wifitrackerlib/WifiEntry$ForgetCallback;

    .line 533
    new-instance p1, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;

    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1, v0}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->reportForgetNetwork(I)V

    .line 534
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    new-instance v1, Lcom/android/wifitrackerlib/WifiEntry$ForgetActionListener;

    invoke-direct {v1, p0}, Lcom/android/wifitrackerlib/WifiEntry$ForgetActionListener;-><init>(Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getMacAddress()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 361
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "02:00:00:00:00:00"

    .line 362
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 363
    monitor-exit p0

    return-object v0

    .line 366
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getPrivacy()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getRandomizedMacAddress()Landroid/net/MacAddress;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 367
    :cond_2
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getFactoryMacAddresses()[Ljava/lang/String;

    move-result-object v0

    .line 368
    array-length v1, v0

    if-lez v1, :cond_3

    const/4 v1, 0x0

    .line 369
    aget-object v0, v0, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    .line 371
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMeteredChoice()I
    .locals 2

    monitor-enter p0

    .line 627
    :try_start_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->isSuggestion()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    .line 628
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 630
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 632
    monitor-exit p0

    return v1

    :cond_1
    const/4 v0, 0x0

    .line 635
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getNetworkSelectionDescription()Ljava/lang/String;
    .locals 0

    .line 1142
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wifitrackerlib/Utils;->getNetworkSelectionDescription(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getPrivacy()I
    .locals 1

    monitor-enter p0

    .line 667
    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 670
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 672
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized getScanResultDescription()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 1077
    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetScanResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1078
    monitor-exit p0

    return-object v0

    .line 1081
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 1082
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x960

    const/16 v2, 0x9c4

    .line 1083
    invoke-direct {p0, v1, v2}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getScanResultDescription(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x1324

    const/16 v2, 0x170c

    .line 1084
    invoke-direct {p0, v1, v2}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getScanResultDescription(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x1725

    const/16 v2, 0x1bd5

    .line 1085
    invoke-direct {p0, v1, v2}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getScanResultDescription(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0xe3d0

    const v2, 0x11238

    .line 1086
    invoke-direct {p0, v1, v2}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getScanResultDescription(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 1087
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSecondSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 343
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/wifitrackerlib/Utils;->getImsiProtectionDescription(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public declared-synchronized getSecurityString(Z)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 714
    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 715
    :cond_0
    iget-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_none:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object p1

    .line 717
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsPskSaeTransitionMode:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 718
    iget-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_short_wpa2_wpa3:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 719
    :cond_2
    iget-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_wpa2_wpa3:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 718
    :goto_1
    monitor-exit p0

    return-object p1

    .line 721
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_d

    .line 722
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    if-eqz p1, :cond_4

    .line 739
    iget-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_short_eap_wpa3:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 741
    :cond_4
    iget-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_eap_wpa3:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 739
    :goto_2
    monitor-exit p0

    return-object p1

    .line 768
    :pswitch_1
    :try_start_3
    iget-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifi_security_wapi_cert:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    .line 766
    :pswitch_2
    :try_start_4
    iget-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifi_security_wapi_psk:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p1

    :pswitch_3
    if-eqz p1, :cond_5

    .line 759
    :try_start_5
    iget-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_short_owe:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 761
    :cond_5
    iget-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_owe:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 759
    :goto_3
    monitor-exit p0

    return-object p1

    :pswitch_4
    if-eqz p1, :cond_6

    .line 744
    :try_start_6
    iget-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_short_eap_suiteb:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 746
    :cond_6
    iget-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_eap_suiteb:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 744
    :goto_4
    monitor-exit p0

    return-object p1

    :pswitch_5
    if-eqz p1, :cond_7

    .line 755
    :try_start_7
    iget-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_short_sae:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 757
    :cond_7
    iget-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_sae:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 755
    :goto_5
    monitor-exit p0

    return-object p1

    .line 726
    :pswitch_6
    :try_start_8
    iget-boolean v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mSupportWpaEap:Z

    if-eqz v0, :cond_9

    if-eqz p1, :cond_8

    .line 727
    iget-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_short_eap_wpa_wpa2:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    .line 729
    :cond_8
    iget-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_eap_wpa_wpa2:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 727
    :goto_6
    monitor-exit p0

    return-object p1

    :cond_9
    if-eqz p1, :cond_a

    .line 732
    :try_start_9
    iget-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_short_eap_wpa2_wpa3:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    .line 734
    :cond_a
    iget-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_eap_wpa2_wpa3:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 732
    :goto_7
    monitor-exit p0

    return-object p1

    :pswitch_7
    if-eqz p1, :cond_b

    .line 748
    :try_start_a
    iget-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_short_wpa_wpa2:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    .line 750
    :cond_b
    iget-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_wpa_wpa2:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 748
    :goto_8
    monitor-exit p0

    return-object p1

    .line 753
    :pswitch_8
    :try_start_b
    iget-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_wep:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit p0

    return-object p1

    :pswitch_9
    if-eqz p1, :cond_c

    :try_start_c
    const-string p1, ""

    goto :goto_9

    .line 763
    :cond_c
    iget-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_none:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :goto_9
    monitor-exit p0

    return-object p1

    .line 771
    :cond_d
    :goto_a
    :try_start_d
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    .line 772
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    const/4 v2, 0x6

    .line 773
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    if-eqz p1, :cond_e

    .line 774
    iget-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifi_security_short_none_owe:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_b

    .line 775
    :cond_e
    iget-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifi_security_none_owe:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 774
    :goto_b
    monitor-exit p0

    return-object p1

    .line 777
    :cond_f
    :try_start_e
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    const/4 v1, 0x4

    .line 778
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    if-eqz p1, :cond_10

    .line 779
    iget-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_short_wpa2_wpa3:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_c

    .line 780
    :cond_10
    iget-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_wpa2_wpa3:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 779
    :goto_c
    monitor-exit p0

    return-object p1

    .line 782
    :cond_11
    :try_start_f
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    const/16 v1, 0x9

    .line 783
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz p1, :cond_12

    .line 784
    iget-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_short_eap_wpa_wpa2_wpa3:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_d

    .line 786
    :cond_12
    iget-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_eap_wpa_wpa2_wpa3:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 784
    :goto_d
    monitor-exit p0

    return-object p1

    :cond_13
    :try_start_10
    const-string v0, "StandardWifiEntry"

    .line 791
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t get string for security types: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_14

    const-string p1, ""

    goto :goto_e

    .line 792
    :cond_14
    iget-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_none:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :goto_e
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized getSecurityTypes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 354
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->getScanResultKey()Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->getSsid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getStandardString()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 797
    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    .line 798
    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/wifitrackerlib/Utils;->getStandardString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 800
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetScanResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 801
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetScanResults:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    invoke-virtual {v1}, Landroid/net/wifi/ScanResult;->getWifiStandard()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/wifitrackerlib/Utils;->getStandardString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_2
    const-string v0, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 803
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getStandardWifiEntryKey()Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    return-object p0
.end method

.method public declared-synchronized getSummary(Z)Ljava/lang/String;
    .locals 9

    monitor-enter p0

    .line 228
    :try_start_0
    invoke-direct {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->hasAdminRestrictions()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 229
    iget-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_admin_restricted_network:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 232
    :cond_0
    :try_start_1
    new-instance p1, Ljava/util/StringJoiner;

    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_summary_separator:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 236
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    const-string v3, "StandardWifiEntry"

    .line 262
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getConnectedState() returned unknown state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0

    .line 255
    :cond_1
    iget-object v3, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v5, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    iget-boolean v7, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsDefaultNetwork:Z

    iget-boolean v8, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsLowQuality:Z

    invoke-static/range {v3 .. v8}, Lcom/android/wifitrackerlib/Utils;->getConnectedDescription(Landroid/content/Context;Landroid/net/wifi/WifiInfo;Landroid/net/wifi/WifiConfiguration;Landroid/net/NetworkCapabilities;ZZ)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 252
    :cond_2
    iget-object v3, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-static {v3, v4}, Lcom/android/wifitrackerlib/Utils;->getConnectingDescription(Landroid/content/Context;Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 246
    :cond_3
    iget-object v3, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    invoke-static {v3, v4, v5}, Lcom/android/wifitrackerlib/Utils;->getDisconnectedDescription(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;)Ljava/lang/String;

    move-result-object v3

    .line 267
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 268
    invoke-virtual {p1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 269
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->semIsEphemeral()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 270
    :cond_4
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    invoke-static {p0, v0}, Lcom/android/wifitrackerlib/Utils;->getVerboseLoggingDescription(Lcom/android/wifitrackerlib/WifiEntry;Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;)Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 272
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 274
    :cond_5
    invoke-virtual {p1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 278
    :cond_6
    :try_start_2
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v3

    if-ne v3, v2, :cond_7

    .line 279
    iget-object v2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    invoke-static {v2, p0}, Lcom/android/wifitrackerlib/Utils;->getWarningDescription(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/String;

    move-result-object v2

    .line 280
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 281
    invoke-virtual {p1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 285
    :cond_7
    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    iget-boolean v3, v2, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->networkScoringUiEnabled:Z

    if-eqz v3, :cond_9

    .line 286
    iget-object v3, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    invoke-static {v3, p0, v2}, Lcom/android/wifitrackerlib/Utils;->getSpeedDescription(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;)Ljava/lang/String;

    move-result-object v2

    .line 287
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 288
    invoke-virtual {p1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 291
    :cond_8
    iget-object v2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    invoke-static {v2, p0, v3}, Lcom/android/wifitrackerlib/Utils;->getNetworkTypeDescription(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;)Ljava/lang/String;

    move-result-object v2

    .line 292
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 293
    invoke-virtual {p1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 297
    :cond_9
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->semIsCarrierNetwork()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 298
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 299
    invoke-static {v0, p0, v2}, Lcom/android/wifitrackerlib/Utils;->getCarrierNetworkOffloadDescription(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/wifi/WifiManager;)Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 301
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_1

    :cond_a
    if-nez v0, :cond_b

    .line 305
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/wifitrackerlib/Utils;->getAutoConnectDescription(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/String;

    move-result-object v0

    .line 306
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 307
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 314
    :cond_b
    :goto_1
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/wifitrackerlib/Utils;->getMeteredDescription(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/String;

    move-result-object v0

    .line 315
    invoke-virtual {p1}, Ljava/util/StringJoiner;->length()I

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 318
    new-instance v2, Ljava/util/StringJoiner;

    iget-object v3, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 320
    invoke-virtual {v2, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 321
    invoke-virtual {p1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-object p1, v2

    .line 328
    :cond_c
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    invoke-static {p0, v0}, Lcom/android/wifitrackerlib/Utils;->getVerboseLoggingDescription(Lcom/android/wifitrackerlib/WifiEntry;Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;)Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 330
    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 334
    :cond_d
    invoke-static {}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isTencentSecuritySupported()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    iget-boolean v0, v0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isTencentRiskAp:Z

    if-eqz v0, :cond_e

    .line 335
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/wifitrackerlib/R$string;->wifi_risk_ap_warning:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 338
    :cond_e
    invoke-virtual {p1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->getScanResultKey()Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->getSsid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    monitor-enter p0

    .line 394
    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isAutoJoinEnabled()Z
    .locals 1

    monitor-enter p0

    .line 689
    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 691
    monitor-exit p0

    return v0

    .line 695
    :cond_0
    :try_start_1
    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isMetered()Z
    .locals 2

    monitor-enter p0

    .line 378
    :try_start_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getMeteredChoice()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSaved()Z
    .locals 1

    monitor-enter p0

    .line 384
    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSuggestion()Z
    .locals 1

    monitor-enter p0

    .line 389
    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isUserShareable()Z
    .locals 1

    monitor-enter p0

    .line 1043
    :try_start_0
    iget-boolean v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsUserShareable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized semGetBssids()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1334
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1335
    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetScanResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 1336
    iget-object v2, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1338
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized semGetFrequency(Ljava/lang/String;)I
    .locals 4

    monitor-enter p0

    .line 1322
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1323
    monitor-exit p0

    return v1

    .line 1325
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetScanResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 1326
    iget-object v3, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1327
    iget p1, v2, Landroid/net/wifi/ScanResult;->frequency:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    .line 1330
    :cond_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized semGetSecurityString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1308
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1309
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetScanResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 1310
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/ScanResult;

    if-eqz p1, :cond_0

    .line 1312
    invoke-static {p1}, Lcom/android/wifitrackerlib/StandardWifiEntry;->isPskSaeTransitionMode(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsPskSaeTransitionMode:Z

    .line 1313
    invoke-static {p1}, Lcom/android/wifitrackerlib/StandardWifiEntry;->isOweTransitionMode(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsOweTransitionMode:Z

    .line 1314
    invoke-static {p1}, Lcom/android/wifitrackerlib/StandardWifiEntry;->supportWpaEap(Landroid/net/wifi/ScanResult;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mSupportWpaEap:Z

    :cond_0
    const/4 p1, 0x0

    .line 1317
    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getSecurityString(Z)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized semIs6GHzOnly()Z
    .locals 2

    monitor-enter p0

    .line 1302
    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetScanResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda8;-><init>()V

    .line 1303
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1302
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public semIsAdminRestricted()Z
    .locals 0

    .line 1637
    invoke-direct {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->hasAdminRestrictions()Z

    move-result p0

    return p0
.end method

.method public declared-synchronized semIsMobileHotspot()Z
    .locals 1

    monitor-enter p0

    .line 1220
    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetScanResults:Ljava/util/List;

    invoke-static {v0}, Lcom/android/wifitrackerlib/Utils;->getBestScanResultByLevel(Ljava/util/List;)Landroid/net/wifi/ScanResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/wifitrackerlib/WifiEntry;->semUpdateFlags(Landroid/net/wifi/ScanResult;)V

    .line 1221
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    invoke-virtual {v0}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->maybeMobileHotspot()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    invoke-virtual {v0}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isSamsungMobileHotspot()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized semIsOllehGigaAp()Z
    .locals 2

    monitor-enter p0

    .line 1289
    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    invoke-virtual {v0}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->hasVHTVSICapabilities()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_1

    .line 1290
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    .line 1291
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1292
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetScanResults:Ljava/util/List;

    invoke-static {v0}, Lcom/android/wifitrackerlib/Utils;->getBestScanResultByLevel(Ljava/util/List;)Landroid/net/wifi/ScanResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/wifitrackerlib/WifiEntry;->semUpdateFlags(Landroid/net/wifi/ScanResult;)V

    goto :goto_0

    :cond_0
    const-string v0, "StandardWifiEntryStandardWifiEntry:"

    const-string v1, "connected network\'s WifiInfo.getBSSID is null"

    .line 1294
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    invoke-virtual {v0}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->hasVHTVSICapabilities()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized semMatches(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4

    monitor-enter p0

    .line 1226
    :try_start_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1227
    monitor-exit p0

    return v1

    .line 1230
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    iget-boolean v2, p1, Landroid/net/wifi/WifiConfiguration;->shared:Z

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 1235
    :cond_1
    invoke-static {p1}, Lcom/android/wifitrackerlib/Utils;->getSecurityTypesFromWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)Ljava/util/List;

    move-result-object v0

    .line 1236
    iget-boolean v2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsPskSaeTransitionMode:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    const/4 v2, 0x4

    .line 1237
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1238
    invoke-static {v2}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isWpa3SaeSupported(Landroid/net/wifi/WifiManager;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v2, 0x2

    .line 1239
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_4

    .line 1240
    :cond_3
    monitor-exit p0

    return v3

    .line 1244
    :cond_4
    :try_start_2
    iget-boolean v2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsOweTransitionMode:Z

    if-eqz v2, :cond_7

    const/4 v2, 0x6

    .line 1245
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1246
    invoke-static {v2}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isEnhancedOpenSupported(Landroid/net/wifi/WifiManager;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1247
    :cond_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_7

    .line 1248
    :cond_6
    monitor-exit p0

    return v3

    .line 1252
    :cond_7
    :try_start_3
    invoke-static {p1}, Lcom/android/wifitrackerlib/Utils;->getSecurityTypesFromWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return p1

    .line 1232
    :cond_8
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized semUpdateConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    monitor-enter p0

    .line 911
    :try_start_0
    iput-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 912
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiEntry;->semUpdateFlags(Landroid/net/wifi/WifiInfo;)V

    .line 913
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 914
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized semUpdateScores(Lcom/samsung/wifitrackerlib/WifiQoSScoredCache;)V
    .locals 4

    monitor-enter p0

    .line 1258
    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetScanResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 1259
    invoke-virtual {p1, v1}, Lcom/samsung/wifitrackerlib/WifiQoSScoredCache;->getScoredNetwork(Landroid/net/wifi/ScanResult;)Lcom/samsung/wifitrackerlib/WifiScoredNetwork;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1261
    iget-object v3, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    iget-object v3, v3, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->qoSScoredNetworkCache:Ljava/util/Map;

    iget-object v1, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1264
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public semUpdateSpeed()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public declared-synchronized setAutoJoinEnabled(Z)V
    .locals 2

    monitor-enter p0

    .line 705
    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->canSetAutoJoinEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiManager;->allowAutojoin(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 710
    monitor-exit p0

    return-void

    .line 706
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMeteredChoice(I)V
    .locals 2

    monitor-enter p0

    .line 645
    :try_start_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->canSetMeteredChoice()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 646
    monitor-exit p0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 650
    :try_start_1
    iget-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v0, 0x0

    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 652
    iget-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 654
    iget-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 656
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 657
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPrivacy(I)V
    .locals 2

    monitor-enter p0

    .line 678
    :try_start_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->canSetPrivacy()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 679
    monitor-exit p0

    return-void

    .line 682
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/4 p1, 0x3

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 683
    :goto_0
    iput p1, v0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    .line 684
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 685
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setUserShareable(Z)V
    .locals 0

    monitor-enter p0

    .line 1035
    :try_start_0
    iput-boolean p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsUserShareable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1036
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized shouldEditBeforeConnect()Z
    .locals 3

    monitor-enter p0

    .line 808
    :try_start_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 810
    monitor-exit p0

    return v1

    .line 814
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    .line 815
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionStatus()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    .line 816
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v2

    if-gtz v2, :cond_1

    const/16 v2, 0x8

    .line 817
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v2

    if-gtz v2, :cond_1

    const/4 v2, 0x5

    .line 819
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 821
    monitor-exit p0

    return v0

    .line 825
    :cond_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public signIn(Lcom/android/wifitrackerlib/WifiEntry$SignInCallback;)V
    .locals 1

    .line 547
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->canSignIn()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 550
    iget-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    const-class v0, Landroid/net/ConnectivityManager;

    .line 551
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 552
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object p0

    .line 550
    invoke-static {p1, p0}, Lcom/android/wifitrackerlib/NonSdkApiWrapper;->startCaptivePortalApp(Landroid/net/ConnectivityManager;Landroid/net/Network;)V

    :cond_0
    return-void
.end method

.method updateAdminRestrictions()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1148
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1151
    :cond_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mUserManager:Landroid/os/UserManager;

    if-eqz v0, :cond_1

    const-string/jumbo v1, "no_add_wifi_config"

    .line 1152
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mHasAddConfigUserRestriction:Z

    .line 1155
    :cond_1
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 1158
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getMinimumRequiredWifiSecurityLevel()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 1161
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getSecurityTypes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1162
    invoke-static {v4}, Lcom/android/wifitrackerlib/Utils;->convertSecurityTypeToDpmWifiSecurity(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    goto :goto_0

    :cond_3
    if-gt v0, v4, :cond_2

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    if-nez v0, :cond_5

    .line 1175
    iput-boolean v2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsAdminRestricted:Z

    return-void

    .line 1180
    :cond_5
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getWifiSsidPolicy()Landroid/app/admin/WifiSsidPolicy;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1182
    invoke-virtual {v0}, Landroid/app/admin/WifiSsidPolicy;->getPolicyType()I

    move-result v3

    .line 1183
    invoke-virtual {v0}, Landroid/app/admin/WifiSsidPolicy;->getSsids()Ljava/util/Set;

    move-result-object v0

    if-nez v3, :cond_6

    .line 1187
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-static {v4}, Landroid/net/wifi/WifiSsid;->fromBytes([B)Landroid/net/wifi/WifiSsid;

    move-result-object v4

    .line 1186
    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1188
    iput-boolean v2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsAdminRestricted:Z

    return-void

    :cond_6
    if-ne v3, v2, :cond_7

    .line 1193
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiSsid;->fromBytes([B)Landroid/net/wifi/WifiSsid;

    move-result-object v3

    .line 1192
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1194
    iput-boolean v2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsAdminRestricted:Z

    return-void

    .line 1199
    :cond_7
    iput-boolean v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsAdminRestricted:Z

    return-void
.end method

.method public declared-synchronized updateConfig(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    .line 920
    :try_start_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 923
    :cond_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->getScanResultKey()Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    move-result-object v0

    .line 924
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->getSsid()Ljava/lang/String;

    move-result-object v1

    .line 925
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->getSecurityTypes()Ljava/util/Set;

    move-result-object v0

    .line 926
    iget-object v2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mMatchingWifiConfigs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 927
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 928
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 935
    invoke-static {v2}, Lcom/android/wifitrackerlib/Utils;->getSecurityTypesFromWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 936
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 943
    invoke-direct {p0, v4}, Lcom/android/wifitrackerlib/StandardWifiEntry;->isSecurityTypeSupported(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 944
    iget-object v5, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mMatchingWifiConfigs:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 937
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to update with wrong security! Expected one of: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", Actual: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Config: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 929
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to update with wrong SSID! Expected: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Actual: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 932
    invoke-static {v1}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Config: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 948
    :cond_5
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateSecurityTypes()V

    .line 949
    invoke-direct {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateTargetScanResultInfo()V

    .line 951
    iget-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiEntry;->semUpdateFlags(Landroid/net/wifi/WifiConfiguration;)V

    .line 952
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiEntry;->semUpdateFlags(Landroid/net/wifi/WifiInfo;)V

    .line 954
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 955
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized updateNetworkCapabilities(Landroid/net/NetworkCapabilities;)V
    .locals 0

    monitor-enter p0

    .line 900
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/wifitrackerlib/WifiEntry;->updateNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 903
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->canSignIn()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mShouldAutoOpenCaptivePortal:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 904
    iput-boolean p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mShouldAutoOpenCaptivePortal:Z

    const/4 p1, 0x0

    .line 905
    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/StandardWifiEntry;->signIn(Lcom/android/wifitrackerlib/WifiEntry$SignInCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 907
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized updateScanResultInfo(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    .line 832
    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 835
    :cond_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    invoke-virtual {v0}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->removeAllCapabilities()V

    .line 837
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->getScanResultKey()Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->getSsid()Ljava/lang/String;

    move-result-object v0

    .line 838
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 839
    iget-object v3, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 845
    invoke-virtual {p0, v2}, Lcom/android/wifitrackerlib/WifiEntry;->semUpdateFlags(Landroid/net/wifi/ScanResult;)V

    goto :goto_0

    .line 840
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to update with wrong SSID! Expected: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Actual: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ScanResult: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 849
    :cond_2
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mMatchingScanResults:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 850
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->getScanResultKey()Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->getSecurityTypes()Ljava/util/Set;

    move-result-object v0

    .line 851
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 852
    invoke-static {v1}, Lcom/android/wifitrackerlib/Utils;->getSecurityTypesFromScanResult(Landroid/net/wifi/ScanResult;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 853
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, v3}, Lcom/android/wifitrackerlib/StandardWifiEntry;->isSecurityTypeSupported(I)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    .line 856
    :cond_5
    iget-object v4, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mMatchingScanResults:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 857
    iget-object v4, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mMatchingScanResults:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    :cond_6
    iget-object v4, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mMatchingScanResults:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 863
    :cond_7
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateSecurityTypes()V

    .line 864
    invoke-direct {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateTargetScanResultInfo()V

    .line 865
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 866
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized updateSecurityTypes()V
    .locals 5

    monitor-enter p0

    .line 977
    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 978
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    .line 979
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getCurrentSecurityType()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 981
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getCurrentSecurityType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 985
    :cond_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mMatchingWifiConfigs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 986
    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->isTargetingNewNetworks()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 991
    iget-object v2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mMatchingScanResults:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 992
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 993
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_3

    .line 999
    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1004
    :cond_3
    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1005
    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1010
    :cond_4
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1011
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->getScanResultKey()Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->getSecurityTypes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1016
    :cond_5
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mMatchingWifiConfigs:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    .line 1017
    invoke-static {v1}, Lcom/android/wifitrackerlib/Utils;->getSingleSecurityTypeFromMultipleSecurityTypes(Ljava/util/List;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1016
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1020
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1021
    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1022
    iget-object v3, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mMatchingScanResults:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1023
    iget-object v3, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mMatchingScanResults:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1026
    :cond_7
    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetScanResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1027
    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetScanResults:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1028
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateSemConfig(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/wifi/SemWifiConfiguration;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1622
    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 1623
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiConfiguration;

    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiEntry;->semUpdateFlags(Lcom/samsung/android/wifi/SemWifiConfiguration;)V

    .line 1625
    :cond_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1626
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
