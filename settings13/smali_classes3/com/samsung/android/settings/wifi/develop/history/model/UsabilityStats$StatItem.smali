.class final enum Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;
.super Ljava/lang/Enum;
.source "UsabilityStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StatItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

.field public static final enum BCN_CNT:Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

.field public static final enum LINK_SPEED:Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

.field public static final enum RSSI:Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

.field public static final enum TIME_STAMP:Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

.field public static final enum TX_BAD:Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

.field public static final enum TX_GOOD:Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

.field public static final enum TX_RETRY:Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

.field private static mMaxIndex:I


# instance fields
.field private mIndex:I

.field private final mKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 33
    new-instance v0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    const-string v1, "TIME_STAMP"

    const/4 v2, 0x0

    const-string v3, "TimeStamp"

    const/4 v4, -0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->TIME_STAMP:Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    .line 34
    new-instance v1, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    const-string v3, "RSSI"

    const/4 v5, 0x1

    const-string v6, "Rssi"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->RSSI:Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    .line 35
    new-instance v3, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    const-string v6, "LINK_SPEED"

    const/4 v7, 0x2

    const-string v8, "LinkSpeed"

    invoke-direct {v3, v6, v7, v8, v4}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->LINK_SPEED:Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    .line 36
    new-instance v6, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    const-string v8, "BCN_CNT"

    const/4 v9, 0x3

    const-string v10, "BcnCnt"

    invoke-direct {v6, v8, v9, v10, v4}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v6, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->BCN_CNT:Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    .line 37
    new-instance v8, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    const-string v10, "TX_GOOD"

    const/4 v11, 0x4

    const-string v12, "TxGood"

    invoke-direct {v8, v10, v11, v12, v4}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v8, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->TX_GOOD:Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    .line 38
    new-instance v10, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    const-string v12, "TX_BAD"

    const/4 v13, 0x5

    const-string v14, "TxBad"

    invoke-direct {v10, v12, v13, v14, v4}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v10, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->TX_BAD:Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    .line 39
    new-instance v12, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    const-string v14, "TX_RETRY"

    const/4 v15, 0x6

    const-string v13, "TxRetry"

    invoke-direct {v12, v14, v15, v13, v4}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v12, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->TX_RETRY:Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    aput-object v0, v13, v2

    aput-object v1, v13, v5

    aput-object v3, v13, v7

    aput-object v6, v13, v9

    aput-object v8, v13, v11

    const/4 v0, 0x5

    aput-object v10, v13, v0

    aput-object v12, v13, v15

    .line 32
    sput-object v13, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->$VALUES:[Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    .line 41
    sput v4, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->mMaxIndex:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->mKey:Ljava/lang/String;

    .line 48
    iput p4, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->mIndex:I

    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;
    .locals 5

    .line 73
    invoke-static {}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->values()[Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 74
    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->getKey()Ljava/lang/String;

    move-result-object v4

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

    .line 85
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->isValidIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->getIndex()I

    move-result p0

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

    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->isValidIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->getIndex()I

    move-result p0

    aget-object p0, p1, p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    :goto_0
    return-wide p0
.end method

.method public static isValid()Z
    .locals 2

    .line 89
    sget v0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->mMaxIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static reset()V
    .locals 5

    .line 93
    invoke-static {}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->values()[Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 94
    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->setIndex(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    :cond_0
    sput v3, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->mMaxIndex:I

    return-void
.end method

.method public static size()I
    .locals 1

    .line 69
    sget v0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->mMaxIndex:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;
    .locals 1

    .line 32
    const-class v0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;
    .locals 1

    .line 32
    sget-object v0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->$VALUES:[Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 0

    .line 56
    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->mIndex:I

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public isValidIndex()Z
    .locals 1

    .line 65
    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->mIndex:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setIndex(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->mIndex:I

    .line 61
    sget p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->mMaxIndex:I

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    sput p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->mMaxIndex:I

    return-void
.end method
