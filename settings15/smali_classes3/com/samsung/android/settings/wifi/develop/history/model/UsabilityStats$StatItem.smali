.class final enum Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

.field public static final enum BCN_CNT:Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

.field public static final enum LINK_SPEED:Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

.field public static final enum RSSI:Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

.field public static final enum TIME_STAMP:Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

.field public static final enum TX_BAD:Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

.field public static final enum TX_GOOD:Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

.field public static final enum TX_RETRY:Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

.field public static mMaxIndex:I


# instance fields
.field private mIndex:I

.field private final mKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    const-string v1, "TIME_STAMP"

    const/4 v2, 0x0

    const-string v3, "TimeStamp"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->TIME_STAMP:Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    new-instance v1, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    const-string v2, "Rssi"

    const-string v3, "RSSI"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->RSSI:Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    new-instance v2, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    const-string v3, "LinkSpeed"

    const-string v4, "LINK_SPEED"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->LINK_SPEED:Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    new-instance v3, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    const-string v4, "BcnCnt"

    const-string v5, "BCN_CNT"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->BCN_CNT:Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    new-instance v4, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    const-string v5, "TxGood"

    const-string v6, "TX_GOOD"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->TX_GOOD:Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    new-instance v5, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    const-string v6, "TxBad"

    const-string v7, "TX_BAD"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->TX_BAD:Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    new-instance v6, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    const-string v7, "TxRetry"

    const-string v8, "TX_RETRY"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->TX_RETRY:Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    filled-new-array/range {v0 .. v6}, [Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->$VALUES:[Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->mMaxIndex:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->mKey:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->mIndex:I

    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;
    .locals 5

    invoke-static {}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->values()[Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->mKey:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getIntegerValue(Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;[Ljava/lang/String;)I
    .locals 1

    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->mIndex:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    aget-object p0, p1, p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getLongValue(Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;[Ljava/lang/String;)J
    .locals 1

    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->mIndex:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    aget-object p0, p1, p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    :goto_0
    return-wide p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->$VALUES:[Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    return-object v0
.end method


# virtual methods
.method public final setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->mIndex:I

    sget p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->mMaxIndex:I

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    sput p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->mMaxIndex:I

    return-void
.end method
