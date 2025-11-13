.class public Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryLoggingUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final LOGGING_SECURITY_TYPE_COUNT:I = 0x7

.field public static final LOGGING_SEMWIFICONFIG_TYPE:I = 0x3

.field public static final LOGGING_TYPE_CAPTIVE_PORTAL:I = 0x0

.field public static final LOGGING_TYPE_EAP:I = 0x5

.field public static final LOGGING_TYPE_LOCK_DOWN:I = 0x1

.field public static final LOGGING_TYPE_NO_INTERNET:I = 0x2

.field public static final LOGGING_TYPE_OPEN:I = 0x0

.field public static final LOGGING_TYPE_OWE_ONLY:I = 0x1

.field public static final LOGGING_TYPE_PSK:I = 0x3

.field public static final LOGGING_TYPE_SAE_ONLY:I = 0x4

.field public static final LOGGING_TYPE_WAPI:I = 0x6

.field public static final LOGGING_TYPE_WEP:I = 0x2

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;


# direct methods
.method public static synthetic $r8$lambda$0Pe-fANh2xP3E6N2CGQA9cIO7so(I)I
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryLoggingUtils;->lambda$getSecurityTypeForStatusLogging$0(I)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ItVZ4nSBeTJFii-RGs08iFzO_5A(I)I
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryLoggingUtils;->lambda$getSemConfigTypeForStatusLogging$1(I)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryLoggingUtils$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryLoggingUtils;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSecurityTypeForStatusLogging(Ljava/util/List;)[I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)[I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryLoggingUtils$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryLoggingUtils$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->map(Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    invoke-static {v8}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryLoggingUtils;->isOpenNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget v9, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-static {v8}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryLoggingUtils;->isOweNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget v9, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {v8}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryLoggingUtils;->isPskNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget v9, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-static {v8}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryLoggingUtils;->isSaeNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget v9, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-static {v8}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryLoggingUtils;->isEapNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget v9, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    invoke-static {v8}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryLoggingUtils;->isWapiNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget v9, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {p0, v8}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {p0, v8}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v8, 0x1

    if-eqz v2, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    iget v9, v2, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    if-ltz v9, :cond_7

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v10, v2

    if-ge v9, v10, :cond_7

    aget-object v2, v2, v9

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_8

    const/4 v2, 0x2

    aget v9, v1, v2

    add-int/2addr v9, v8

    aput v9, v1, v2

    goto :goto_1

    :cond_8
    aget v2, v1, v0

    add-int/2addr v2, v8

    aput v2, v1, v0

    goto :goto_1

    :cond_9
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result p0

    aput p0, v1, v8

    const/4 p0, 0x3

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v0

    aput v0, v1, p0

    const/4 p0, 0x4

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v0

    aput v0, v1, p0

    const/4 p0, 0x5

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v0

    aput v0, v1, p0

    const/4 p0, 0x6

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v0

    aput v0, v1, p0

    return-object v1
.end method

.method public static getSemConfigTypeForStatusLogging(Ljava/util/List;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiConfiguration;",
            ">;)[I"
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryLoggingUtils$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryLoggingUtils$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/stream/IntStream;->map(Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wifi/SemWifiConfiguration;

    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    aget v2, v0, v1

    add-int/2addr v2, v4

    aput v2, v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown()Z

    move-result v3

    if-eqz v3, :cond_2

    aget v2, v0, v4

    add-int/2addr v2, v4

    aput v2, v0, v4

    goto :goto_0

    :cond_2
    iget-boolean v2, v2, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    aget v3, v0, v2

    add-int/2addr v3, v4

    aput v3, v0, v2

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private static isEapNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

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

.method private static isOpenNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isOweNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result p0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isPskNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private static isSaeNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result p0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isWapiNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result p0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe

    if-ne p0, v0, :cond_0

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

.method private static synthetic lambda$getSecurityTypeForStatusLogging$0(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$getSemConfigTypeForStatusLogging$1(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
