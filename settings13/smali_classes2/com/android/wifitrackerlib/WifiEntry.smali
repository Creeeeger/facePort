.class public Lcom/android/wifitrackerlib/WifiEntry;
.super Ljava/lang/Object;
.source "WifiEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wifitrackerlib/WifiEntry$ManageSubscriptionAction;,
        Lcom/android/wifitrackerlib/WifiEntry$ForgetActionListener;,
        Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;,
        Lcom/android/wifitrackerlib/WifiEntry$SignInCallback;,
        Lcom/android/wifitrackerlib/WifiEntry$ForgetCallback;,
        Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;,
        Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;,
        Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;,
        Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;
    }
.end annotation


# static fields
.field public static TITLE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static WIFI_PICKER_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mBssid:Ljava/lang/String;

.field protected final mCallbackHandler:Landroid/os/Handler;

.field protected mCalledConnect:Z

.field protected mCalledDisconnect:Z

.field protected mConnectCallback:Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;

.field protected mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

.field protected mDisconnectCallback:Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;

.field final mForSavedNetworksPage:Z

.field protected mForgetCallback:Lcom/android/wifitrackerlib/WifiEntry$ForgetCallback;

.field protected mIsDefaultNetwork:Z

.field protected mIsLowQuality:Z

.field private mIsValidated:Z

.field protected mLevel:I

.field private mListener:Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;

.field private final mLog:Lcom/samsung/wifitrackerlib/LogUtils;

.field private mManageSubscriptionAction:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wifitrackerlib/WifiEntry$ManageSubscriptionAction;",
            ">;"
        }
    .end annotation
.end field

.field protected mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field protected mNetworkInfo:Landroid/net/NetworkInfo;

.field mRssi:I

.field final mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

.field protected mSpeed:I

.field protected mWifiInfo:Landroid/net/wifi/WifiInfo;

.field protected final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$EF47qZBvGbMAYay1rZ-5OE346mo(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wifitrackerlib/WifiEntry;->lambda$notifyOnUpdated$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$IUPo_WGC0UjsfB7Y40barcLTK9U(Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/android/wifitrackerlib/WifiEntry;->lambda$static$0(Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$M2P_RO5k68pw7ANR5WYYCFTwqAY(Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/android/wifitrackerlib/WifiEntry;->lambda$static$3(Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NuxOg7rRMQLu_sJChsKxPlgb8vg(Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/android/wifitrackerlib/WifiEntry;->lambda$static$2(Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_Vu5OIWfIb_GYu10lAuE7BwFYxk(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wifitrackerlib/WifiEntry;->lambda$updateConnectionInfo$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$fsEK57e_HIvwN4LBdPy0HA_VxLg(Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/android/wifitrackerlib/WifiEntry;->lambda$static$6(Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mV_4wy-qyzaZkxrzHcQBgzPkvoc(Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/android/wifitrackerlib/WifiEntry;->lambda$static$5(Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oFgNZEoqBf0iMJ67VdBnU50WNW0(Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/android/wifitrackerlib/WifiEntry;->lambda$static$1(Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tW12bGPIn659p7GQKNJB_4FLGr8(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wifitrackerlib/WifiEntry;->lambda$updateConnectionInfo$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$xhmILXyZdTLsY057zFb_WW4HLnk(Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/android/wifitrackerlib/WifiEntry;->lambda$static$4(Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 275
    new-instance v0, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda1;-><init>()V

    .line 276
    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda2;-><init>()V

    .line 278
    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda3;-><init>()V

    .line 279
    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda4;-><init>()V

    .line 280
    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda5;-><init>()V

    .line 281
    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda6;-><init>()V

    .line 282
    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda7;-><init>()V

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 283
    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda8;-><init>()V

    .line 284
    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/wifitrackerlib/WifiEntry;->WIFI_PICKER_COMPARATOR:Ljava/util/Comparator;

    .line 295
    new-instance v0, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda7;-><init>()V

    .line 296
    invoke-static {v0, v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/wifitrackerlib/WifiEntry;->TITLE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/net/wifi/WifiManager;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 308
    iput v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    const/4 v0, 0x0

    .line 318
    iput-boolean v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCalledConnect:Z

    .line 319
    iput-boolean v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCalledDisconnect:Z

    .line 325
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mManageSubscriptionAction:Ljava/util/Optional;

    .line 329
    iput v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSpeed:I

    const/16 v0, -0x7f

    .line 331
    iput v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mRssi:I

    const-string v0, ""

    .line 332
    iput-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mBssid:Ljava/lang/String;

    const-string v0, "Cannot construct with null handler!"

    .line 338
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cannot construct with null WifiManager!"

    .line 339
    invoke-static {p2, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCallbackHandler:Landroid/os/Handler;

    .line 341
    iput-boolean p3, p0, Lcom/android/wifitrackerlib/WifiEntry;->mForSavedNetworksPage:Z

    .line 342
    iput-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 344
    new-instance p1, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    invoke-direct {p1}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    .line 345
    new-instance p1, Lcom/samsung/wifitrackerlib/LogUtils;

    invoke-direct {p1}, Lcom/samsung/wifitrackerlib/LogUtils;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLog:Lcom/samsung/wifitrackerlib/LogUtils;

    return-void
.end method

.method private checkWifi6EStandard(II)Z
    .locals 0

    .line 1168
    invoke-static {p1}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->is6GHz(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1172
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "invalid Wi-Fi 6E network "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiEntry."

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private hasKtVhtVsiCapabilities(Ljava/nio/ByteBuffer;)Z
    .locals 2

    .line 1274
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    new-array v0, p0, [B

    .line 1275
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    const/16 v1, 0x18

    if-le p0, v1, :cond_0

    .line 1276
    aget-byte p0, v0, v1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private synthetic lambda$notifyOnUpdated$7()V
    .locals 0

    .line 812
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mListener:Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;

    if-eqz p0, :cond_0

    .line 814
    invoke-interface {p0}, Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;->onUpdated()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$static$0(Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/Boolean;
    .locals 1

    .line 276
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$1(Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/Boolean;
    .locals 0

    .line 278
    invoke-direct {p0}, Lcom/android/wifitrackerlib/WifiEntry;->semIsValidRssi()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$2(Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/Boolean;
    .locals 0

    .line 279
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$3(Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/Boolean;
    .locals 0

    .line 280
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSuggestion()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$4(Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/Integer;
    .locals 0

    .line 281
    invoke-direct {p0}, Lcom/android/wifitrackerlib/WifiEntry;->semGetComparableSpeed()I

    move-result p0

    neg-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$5(Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/Integer;
    .locals 0

    .line 282
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result p0

    neg-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$6(Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/Integer;
    .locals 0

    .line 284
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$updateConnectionInfo$8()V
    .locals 1

    .line 952
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectCallback:Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 954
    invoke-interface {p0, v0}, Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;->onConnectResult(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateConnectionInfo$9()V
    .locals 1

    .line 978
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mDisconnectCallback:Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 980
    invoke-interface {p0, v0}, Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;->onDisconnectResult(I)V

    :cond_0
    return-void
.end method

.method private semGetComparableSpeed()I
    .locals 2

    .line 1105
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    iget-boolean v0, v0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->networkScoringUiEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSpeed()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 1106
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->semGetNetworkType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1107
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSpeed()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private semIsValidRssi()Z
    .locals 1

    .line 1099
    iget p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mRssi:I

    const/16 v0, -0x7f

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public canConnect()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canDisconnect()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canEasyConnect()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canForget()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canManageSubscription()Z
    .locals 0

    .line 721
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mManageSubscriptionAction:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    return p0
.end method

.method public canSetAutoJoinEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canSetMeteredChoice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canSetPrivacy()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canShare()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canSignIn()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V
    .locals 0

    return-void
.end method

.method protected connectionInfoMatches(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public disconnect(Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;)V
    .locals 0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1088
    instance-of v0, p1, Lcom/android/wifitrackerlib/WifiEntry;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1089
    :cond_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object p0

    check-cast p1, Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public forget(Lcom/android/wifitrackerlib/WifiEntry$ForgetCallback;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized getConnectedInfo()Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;
    .locals 2

    monitor-enter p0

    .line 552
    :try_start_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 556
    :cond_0
    new-instance v1, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    invoke-direct {v1, v0}, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;-><init>(Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 553
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConnectedState()I
    .locals 3

    monitor-enter p0

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkInfo:Landroid/net/NetworkInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 361
    monitor-exit p0

    return v1

    .line 364
    :cond_0
    :try_start_1
    sget-object v2, Lcom/android/wifitrackerlib/WifiEntry$1;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v0

    aget v0, v2, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 375
    monitor-exit p0

    return v1

    :pswitch_0
    const/4 v0, 0x2

    .line 373
    monitor-exit p0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    .line 371
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getHelpUriString()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getLevel()I
    .locals 0

    .line 411
    iget p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    return p0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMeteredChoice()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method getNetworkCapabilityDescription()Ljava/lang/String;
    .locals 3

    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 767
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "isValidated:"

    .line 768
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsValidated:Z

    .line 769
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDefaultNetwork:"

    .line 770
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsDefaultNetwork:Z

    .line 771
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isLowQuality:"

    .line 772
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsLowQuality:Z

    .line 773
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 775
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getNetworkSelectionDescription()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getPrivacy()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method protected getScanResultDescription()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getSecondSummary()Ljava/lang/CharSequence;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getSecurity()I
    .locals 1

    .line 461
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurityTypes()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wifitrackerlib/Utils;->getSingleSecurityTypeFromMultipleSecurityTypes(Ljava/util/List;)I

    move-result p0

    const/4 v0, 0x3

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    return v0

    :pswitch_2
    const/4 p0, 0x7

    return p0

    :pswitch_3
    const/16 p0, 0x9

    return p0

    :pswitch_4
    const/16 p0, 0x8

    return p0

    :pswitch_5
    const/4 p0, 0x4

    return p0

    :pswitch_6
    const/4 p0, 0x6

    return p0

    :pswitch_7
    const/4 p0, 0x5

    return p0

    :pswitch_8
    return v0

    :pswitch_9
    const/4 p0, 0x2

    return p0

    :pswitch_a
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getSecurityString(Z)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getSecurityTypes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 498
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSpeed()I
    .locals 0

    .line 450
    iget p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSpeed:I

    return p0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getStandardString()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 388
    invoke-virtual {p0, v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSummary(Z)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method declared-synchronized getWifiInfoDescription()Ljava/lang/String;
    .locals 8

    monitor-enter p0

    .line 1068
    :try_start_0
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 1069
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_1

    .line 1070
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "f = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1071
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1073
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1075
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "standard = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getStandardString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1076
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rssi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1077
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "score = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getScore()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const-string v1, " tx=%.1f,"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 1078
    iget-object v4, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSuccessfulTxPacketsPerSecond()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const-string v1, "%.1f,"

    new-array v3, v2, [Ljava/lang/Object;

    .line 1079
    iget-object v4, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getRetriedTxPacketsPerSecond()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const-string v1, "%.1f "

    new-array v3, v2, [Ljava/lang/Object;

    .line 1080
    iget-object v4, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getLostTxPacketsPerSecond()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const-string/jumbo v1, "rx=%.1f"

    new-array v2, v2, [Ljava/lang/Object;

    .line 1081
    iget-object v3, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSuccessfulRxPacketsPerSecond()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1083
    :cond_1
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasInternetAccess()Z
    .locals 0

    .line 427
    iget-boolean p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsValidated:Z

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 1094
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public isAutoJoinEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDefaultNetwork()Z
    .locals 0

    .line 435
    iget-boolean p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsDefaultNetwork:Z

    return p0
.end method

.method public isMetered()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSaved()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSubscription()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSuggestion()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public manageSubscription()V
    .locals 1

    .line 736
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mManageSubscriptionAction:Ljava/util/Optional;

    new-instance v0, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected notifyOnUpdated()V
    .locals 2

    .line 810
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mListener:Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda9;-><init>(Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public semGetBssid()Ljava/lang/String;
    .locals 1

    .line 1405
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mBssid:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public semGetFrequency(Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public semGetHighestSecurity()I
    .locals 1

    .line 1508
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurityTypes()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wifitrackerlib/Utils;->getHighestSingleSecurityTypeFromMultipleSecurityTypes(Ljava/util/List;)I

    move-result p0

    const/4 v0, 0x3

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    return v0

    :pswitch_2
    const/4 p0, 0x7

    return p0

    :pswitch_3
    const/16 p0, 0x9

    return p0

    :pswitch_4
    const/16 p0, 0x8

    return p0

    :pswitch_5
    const/4 p0, 0x4

    return p0

    :pswitch_6
    const/4 p0, 0x6

    return p0

    :pswitch_7
    const/4 p0, 0x5

    return p0

    :pswitch_8
    return v0

    :pswitch_9
    const/4 p0, 0x2

    return p0

    :pswitch_a
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public semGetNetworkType()I
    .locals 0

    .line 1499
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    iget p0, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->networkType:I

    return p0
.end method

.method public semGetOemDisableReason()I
    .locals 0

    .line 1395
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    invoke-virtual {p0}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->getSemDisableReason()I

    move-result p0

    return p0
.end method

.method public semGetSecurityString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    .line 1400
    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurityString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public semHasSamsungScore()Z
    .locals 0

    .line 1438
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    invoke-virtual {p0}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->hasSamsungScore()Z

    move-result p0

    return p0
.end method

.method public semIs6GHzOnly()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public semIsAdminRestricted()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public semIsCaptivePortal()Z
    .locals 0

    .line 1289
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    invoke-virtual {p0}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isCaptivePortal()Z

    move-result p0

    return p0
.end method

.method public semIsCarrierNetwork()Z
    .locals 0

    .line 1294
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    invoke-virtual {p0}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isCarrierNetwork()Z

    move-result p0

    return p0
.end method

.method public semIsChanged()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public semIsEphemeral()Z
    .locals 1

    .line 1304
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isEphemeral()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz p0, :cond_0

    .line 1305
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p0

    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public semIsLocked()Z
    .locals 0

    .line 1299
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    invoke-virtual {p0}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isLocked()Z

    move-result p0

    return p0
.end method

.method public semIsMobileHotspot()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public semIsOpenRoamingNetwork()Z
    .locals 0

    .line 1320
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    invoke-virtual {p0}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isOpenRoamingNetwork()Z

    move-result p0

    return p0
.end method

.method public semIsOsuProvider()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public semIsSummaryChanged()Z
    .locals 2

    .line 1429
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary()Ljava/lang/String;

    move-result-object v0

    .line 1430
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    invoke-virtual {v1}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->getPrevSummaryString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1433
    :cond_0
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    invoke-virtual {p0}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->getPrevSummaryString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public semIsSupportedSecurity()Z
    .locals 3

    .line 1334
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1355
    :cond_0
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {p0}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isWapiSupported(Landroid/net/wifi/WifiManager;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    .line 1349
    :cond_1
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {p0}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isWpa3SuiteBSupported(Landroid/net/wifi/WifiManager;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    .line 1336
    :cond_2
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isWpa3SaeSupported(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    .line 1339
    :cond_3
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    invoke-virtual {v0}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isH2ENetwork()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {p0}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isWpa3SaeH2eSupported(Landroid/net/wifi/WifiManager;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    .line 1344
    :cond_4
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {p0}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isEnhancedOpenSupported(Landroid/net/wifi/WifiManager;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public semIsTencentRiskAp()Z
    .locals 0

    .line 1369
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    iget-boolean p0, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isTencentRiskAp:Z

    return p0
.end method

.method public semIsTipsRequired()Z
    .locals 1

    .line 1544
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    invoke-virtual {p0}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->getSemDisableReason()I

    move-result p0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public semIsWifi6ENetwork()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public semIsWifi6Network()Z
    .locals 4

    .line 1375
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x6

    if-eqz v0, :cond_1

    .line 1376
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    move-result p0

    if-ne p0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 1378
    :cond_1
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    invoke-virtual {p0}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->getWifiStandard()I

    move-result p0

    if-ne p0, v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public semMatches(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public semSetPrintedSummaryForAnimation(Ljava/lang/String;)V
    .locals 0

    .line 1424
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    invoke-virtual {p0, p1}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->setPrevSummaryString(Ljava/lang/String;)V

    return-void
.end method

.method public semUpdateConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    return-void
.end method

.method public semUpdateFlags(Landroid/net/wifi/ScanResult;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 1185
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/ScanResult;->getWifiStandard()I

    move-result v0

    .line 1186
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    invoke-virtual {v1}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->getWifiStandard()I

    move-result v2

    if-ge v2, v0, :cond_1

    goto :goto_0

    .line 1187
    :cond_1
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    invoke-virtual {v0}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->getWifiStandard()I

    move-result v0

    .line 1186
    :goto_0
    invoke-virtual {v1, v0}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->setWifiStandard(I)V

    .line 1189
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    invoke-virtual {v0}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->has6EStandard()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1190
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    iget v1, p1, Landroid/net/wifi/ScanResult;->frequency:I

    .line 1191
    invoke-virtual {v0}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->getWifiStandard()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/wifitrackerlib/WifiEntry;->checkWifi6EStandard(II)Z

    move-result v1

    .line 1190
    invoke-virtual {v0, v1}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->setHas6EStandard(Z)V

    .line 1199
    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/ScanResult;->getInformationElements()Ljava/util/List;

    move-result-object v0

    .line 1200
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult$InformationElement;

    .line 1201
    invoke-virtual {v1}, Landroid/net/wifi/ScanResult$InformationElement;->getId()I

    move-result v2

    const/16 v3, 0xb

    const/4 v4, 0x0

    const-string v5, " BufferUnderflowException ie:"

    const-string v6, "WifiEntry."

    if-eq v2, v3, :cond_b

    const/16 v3, 0x32

    const/4 v7, 0x1

    if-eq v2, v3, :cond_6

    const/16 v3, 0xdd

    if-eq v2, v3, :cond_4

    goto :goto_1

    .line 1239
    :cond_4
    :try_start_0
    invoke-virtual {v1}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1240
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    const v4, 0xffffff

    and-int/2addr v4, v3

    const v8, 0x321600

    if-ne v4, v8, :cond_5

    ushr-int/lit8 v1, v3, 0x18

    const/16 v3, 0x80

    if-ne v1, v3, :cond_3

    .line 1243
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    invoke-virtual {v1, v7}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->setSamsungMobileHotspot(Z)V

    goto :goto_1

    .line 1245
    :cond_5
    sget-object v4, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->KTT:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    invoke-static {}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->getOpBranding()Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    move-result-object v8

    if-ne v4, v8, :cond_3

    iget v4, p1, Landroid/net/wifi/ScanResult;->frequency:I

    const/16 v8, 0x1324

    if-le v4, v8, :cond_3

    const v4, 0x11c31700

    if-ne v3, v4, :cond_3

    .line 1248
    invoke-direct {p0, v1}, Lcom/android/wifitrackerlib/WifiEntry;->hasKtVhtVsiCapabilities(Ljava/nio/ByteBuffer;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1249
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    invoke-virtual {v1, v7}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->setHasVHTVSICapabilities(Z)V
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1252
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLog:Lcom/samsung/wifitrackerlib/LogUtils;

    iget-object v4, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/wifitrackerlib/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1217
    :cond_6
    invoke-virtual {v1}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v3

    if-nez v3, :cond_7

    return-void

    .line 1220
    :cond_7
    invoke-virtual {v1}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    new-array v8, v3, [B

    const/16 v8, 0x8

    if-gt v3, v8, :cond_a

    if-ge v3, v7, :cond_8

    goto :goto_3

    .line 1225
    :cond_8
    :try_start_1
    invoke-virtual {v1}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    :goto_2
    if-ge v4, v3, :cond_3

    .line 1227
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    and-int/lit8 v8, v8, 0x7f

    const/16 v9, 0x7b

    if-ne v8, v9, :cond_9

    .line 1229
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    invoke-virtual {v1, v7}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->setH2ENetwork(Z)V
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1234
    :catch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLog:Lcom/samsung/wifitrackerlib/LogUtils;

    iget-object v4, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/wifitrackerlib/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_a
    :goto_3
    return-void

    .line 1206
    :cond_b
    :try_start_2
    iget-object v3, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    invoke-virtual {v3}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->getStaCount()I

    move-result v3

    if-gez v3, :cond_c

    goto :goto_4

    :cond_c
    iget-object v3, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    invoke-virtual {v3}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->getStaCount()I

    move-result v4

    .line 1208
    :goto_4
    invoke-virtual {v1}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1209
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const v3, 0xffff

    and-int/2addr v1, v3

    add-int/2addr v4, v1

    .line 1211
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    invoke-virtual {v1, v4}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->setStaCount(I)V
    :try_end_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 1213
    :catch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLog:Lcom/samsung/wifitrackerlib/LogUtils;

    iget-object v4, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/wifitrackerlib/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_d
    return-void
.end method

.method public semUpdateFlags(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1137
    :cond_0
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1138
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p1, p1, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1137
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->setCarrierNetwork(Z)V

    return-void
.end method

.method public semUpdateFlags(Landroid/net/wifi/WifiInfo;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1156
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->setMaybeMobileHotspot(Z)V

    :cond_0
    return-void
.end method

.method public semUpdateFlags(Landroid/net/wifi/hotspot2/PasspointConfiguration;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 1145
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v0

    .line 1146
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    .line 1147
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "samsung.openroaming.net"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1148
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OpenRoaming"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1146
    :goto_0
    invoke-virtual {v1, v0}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->setOpenRoamingNetwork(Z)V

    .line 1150
    :cond_1
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    invoke-virtual {p0, p1}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->setPasspointConfiguration(Landroid/net/wifi/hotspot2/PasspointConfiguration;)V

    return-void
.end method

.method public semUpdateFlags(Lcom/samsung/android/wifi/SemWifiConfiguration;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1122
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->setLocked(Z)V

    .line 1123
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->setCaptivePortal(Z)V

    .line 1124
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    invoke-virtual {v0, p1}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->setSemWifiConfiguration(Lcom/samsung/android/wifi/SemWifiConfiguration;)V

    goto :goto_0

    .line 1126
    :cond_0
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->setLocked(Z)V

    .line 1127
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    invoke-virtual {p1, v0}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->setCaptivePortal(Z)V

    .line 1129
    :goto_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V

    return-void
.end method

.method public semUpdateQoSInformation()Z
    .locals 10

    .line 1455
    iget v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSpeed:I

    .line 1456
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    iget v2, v1, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->networkType:I

    .line 1457
    iget-object v1, v1, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->qoSScoredNetworkCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    return v3

    .line 1463
    :cond_0
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    iget-object v1, v1, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->qoSScoredNetworkCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v3

    move v5, v4

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/wifitrackerlib/WifiScoredNetwork;

    .line 1464
    iget v7, p0, Lcom/android/wifitrackerlib/WifiEntry;->mRssi:I

    invoke-virtual {v6, v7}, Lcom/samsung/wifitrackerlib/WifiScoredNetwork;->calculateRankingScore(I)I

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_2

    .line 1466
    iget v7, p0, Lcom/android/wifitrackerlib/WifiEntry;->mRssi:I

    const/16 v8, -0x47

    if-gt v7, v8, :cond_2

    const/4 v6, 0x5

    :cond_2
    if-lez v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v5, v6

    goto :goto_0

    :cond_3
    if-nez v4, :cond_4

    move v5, v3

    goto :goto_1

    .line 1475
    :cond_4
    div-int/2addr v5, v4

    .line 1476
    :goto_1
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    iget-object v1, v1, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->qoSScoredNetworkCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/wifitrackerlib/WifiScoredNetwork;

    .line 1477
    iget-object v6, v4, Lcom/samsung/wifitrackerlib/WifiScoredNetwork;->bssid:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/wifitrackerlib/WifiEntry;->mBssid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1478
    iget-object v6, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    iget v4, v4, Lcom/samsung/wifitrackerlib/WifiScoredNetwork;->networkType:I

    iput v4, v6, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->networkType:I

    goto :goto_2

    :cond_6
    const/4 v1, 0x2

    const/4 v4, 0x3

    const-string v6, "WifiEntry."

    const/4 v7, 0x1

    if-eqz v5, :cond_7

    new-array v8, v4, [Ljava/lang/Object;

    .line 1483
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    iget-object v9, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    iget v9, v9, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->networkType:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    const-string v9, "%s generated fallback speed is: %d networkType: %s"

    .line 1482
    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    :cond_7
    invoke-static {v5}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->roundToClosestSpeedEnum(I)I

    move-result v5

    iput v5, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSpeed:I

    if-ne v0, v5, :cond_9

    .line 1488
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    iget v0, v0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->networkType:I

    if-eq v2, v0, :cond_8

    goto :goto_3

    :cond_8
    move v0, v3

    goto :goto_4

    :cond_9
    :goto_3
    move v0, v7

    :goto_4
    if-eqz v0, :cond_a

    new-array v2, v4, [Ljava/lang/Object;

    .line 1491
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iget v3, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSpeed:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    iget v3, v3, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->networkType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "%s: Set speed to %d and NetworkType %s. set by Network Samsung QoS."

    .line 1490
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    :cond_a
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    iput-boolean v7, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->hasSamsungScore:Z

    return v0
.end method

.method public setAutoJoinEnabled(Z)V
    .locals 0

    return-void
.end method

.method declared-synchronized setIsDefaultNetwork(Z)V
    .locals 0

    monitor-enter p0

    .line 1045
    :try_start_0
    iput-boolean p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsDefaultNetwork:Z

    .line 1046
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1047
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setIsLowQuality(Z)V
    .locals 0

    monitor-enter p0

    .line 1051
    :try_start_0
    iput-boolean p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsLowQuality:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1052
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setListener(Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;)V
    .locals 0

    monitor-enter p0

    .line 792
    :try_start_0
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mListener:Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 793
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMeteredChoice(I)V
    .locals 0

    return-void
.end method

.method public setNetworkScoringUiEnabled(Z)V
    .locals 0

    .line 1419
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;

    iput-boolean p1, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->networkScoringUiEnabled:Z

    return-void
.end method

.method public setPrivacy(I)V
    .locals 0

    return-void
.end method

.method public shouldEditBeforeConnect()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public shouldShowXLevelIcon()Z
    .locals 1

    .line 418
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsValidated:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsDefaultNetwork:Z

    if-nez v0, :cond_1

    .line 419
    :cond_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->canSignIn()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public signIn(Lcom/android/wifitrackerlib/WifiEntry$SignInCallback;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1622
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",title:"

    .line 1623
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1624
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",summary:"

    .line 1625
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1626
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",isSaved:"

    .line 1627
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1628
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isSubscription:"

    .line 1629
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1630
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isSuggestion:"

    .line 1631
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1632
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSuggestion()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",level:"

    .line 1633
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1634
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1635
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->shouldShowXLevelIcon()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "X"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",security:"

    .line 1636
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1637
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurityTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",connected:"

    .line 1638
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1639
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "true"

    goto :goto_1

    :cond_1
    const-string v1, "false"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",connectedInfo:"

    .line 1640
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1641
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedInfo()Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",isValidated:"

    .line 1642
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsValidated:Z

    .line 1643
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isDefaultNetwork:"

    .line 1644
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsDefaultNetwork:Z

    .line 1645
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1646
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method updateBestRssi(Landroid/net/wifi/ScanResult;)V
    .locals 2

    .line 1558
    iget p1, p1, Landroid/net/wifi/ScanResult;->level:I

    const/16 v0, -0x7f

    if-eq p1, v0, :cond_0

    .line 1559
    iget v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mRssi:I

    if-eq v1, v0, :cond_0

    add-int/2addr v1, p1

    .line 1560
    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mRssi:I

    goto :goto_0

    .line 1562
    :cond_0
    iput p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mRssi:I

    :goto_0
    return-void
.end method

.method public declared-synchronized updateConnectionInfo(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 932
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/wifitrackerlib/WifiEntry;->connectionInfoMatches(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 935
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 936
    iput-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 937
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p2

    .line 939
    iput p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mRssi:I

    const/16 v1, -0x7f

    if-eq p2, v1, :cond_0

    .line 945
    invoke-static {p2}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->calculateSignalLevel(I)I

    move-result p2

    iput p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    .line 948
    :cond_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_4

    .line 949
    iget-boolean p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCalledConnect:Z

    if-eqz p2, :cond_1

    .line 950
    iput-boolean v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCalledConnect:Z

    .line 951
    iget-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCallbackHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda10;-><init>(Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 960
    :cond_1
    iget-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    if-nez p2, :cond_2

    .line 961
    new-instance p2, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    invoke-direct {p2}, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;-><init>()V

    iput-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    .line 963
    :cond_2
    iget-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v0

    iput v0, p2, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->frequencyMhz:I

    .line 964
    iget-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v0

    iput v0, p2, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->linkSpeedMbps:I

    .line 965
    iget-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    move-result p1

    iput p1, p2, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->wifiStandard:I

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 968
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 969
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 970
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 971
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    .line 972
    iput-boolean v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsValidated:Z

    .line 973
    iput-boolean v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsDefaultNetwork:Z

    .line 974
    iput-boolean v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsLowQuality:Z

    .line 975
    iget-boolean p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCalledDisconnect:Z

    if-eqz p1, :cond_4

    .line 976
    iput-boolean v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCalledDisconnect:Z

    .line 977
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCallbackHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda11;

    invoke-direct {p2, p0}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda11;-><init>(Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 986
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->updateSecurityTypes()V

    .line 987
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 988
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized updateLinkProperties(Landroid/net/LinkProperties;)V
    .locals 7

    monitor-enter p0

    if-eqz p1, :cond_7

    .line 999
    :try_start_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 1005
    :cond_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    if-nez v0, :cond_1

    .line 1006
    new-instance v0, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    invoke-direct {v0}, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;-><init>()V

    iput-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    .line 1009
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1010
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_0
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkAddress;

    .line 1011
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    instance-of v4, v4, Ljava/net/Inet4Address;

    if-eqz v4, :cond_3

    .line 1012
    iget-object v4, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->ipAddress:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x4

    :try_start_1
    new-array v4, v4, [B

    const/4 v5, 0x0

    const/4 v6, -0x1

    aput-byte v6, v4, v5

    const/4 v5, 0x1

    aput-byte v6, v4, v5

    aput-byte v6, v4, v1

    const/4 v5, 0x3

    aput-byte v6, v4, v5

    .line 1014
    invoke-static {v4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v4

    .line 1016
    iget-object v5, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    .line 1017
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v3

    .line 1016
    invoke-static {v4, v3}, Lcom/android/wifitrackerlib/Utils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v3

    .line 1017
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->subnetMask:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1021
    :cond_3
    :try_start_2
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    instance-of v4, v4, Ljava/net/Inet6Address;

    if-eqz v4, :cond_2

    .line 1022
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1025
    :cond_4
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    iput-object v0, v1, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->ipv6Addresses:Ljava/util/List;

    .line 1028
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 1029
    invoke-virtual {v1}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_5

    .line 1030
    invoke-virtual {v1}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1031
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    invoke-virtual {v1}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->gateway:Ljava/lang/String;

    .line 1037
    :cond_6
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda5;-><init>()V

    .line 1038
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, v0, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->dnsServers:Ljava/util/List;

    .line 1040
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1041
    monitor-exit p0

    return-void

    :cond_7
    :goto_1
    const/4 p1, 0x0

    .line 1000
    :try_start_3
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    .line 1001
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1002
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized updateNetworkCapabilities(Landroid/net/NetworkCapabilities;)V
    .locals 1

    monitor-enter p0

    .line 1057
    :try_start_0
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 1058
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1059
    monitor-exit p0

    return-void

    .line 1061
    :cond_0
    :try_start_1
    iput-object p1, v0, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz p1, :cond_1

    const/16 v0, 0x10

    .line 1063
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsValidated:Z

    .line 1064
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1065
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected updateSecurityTypes()V
    .locals 0

    return-void
.end method
