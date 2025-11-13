.class final enum Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;
.super Ljava/lang/Enum;
.source "TcpSocketStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StatItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;

.field public static final enum E:Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;

.field public static final enum PACKAGE_NAME:Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;

.field public static final enum R:Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;

.field public static final enum RESULT:Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;

.field public static final enum S:Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;

.field public static final enum TIME_STAMP:Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;

.field public static final enum UID:Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;

.field private static mMaxIndex:I


# instance fields
.field private mIndex:I

.field private final mKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 50
    new-instance v0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;

    const-string v1, "TIME_STAMP"

    const/4 v2, 0x0

    const-string v3, "dateTime"

    const/4 v4, -0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->TIME_STAMP:Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;

    .line 51
    new-instance v1, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;

    const-string v3, "UID"

    const/4 v5, 0x1

    invoke-direct {v1, v3, v5, v3, v4}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->UID:Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;

    .line 52
    new-instance v3, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;

    const-string v6, "PACKAGE_NAME"

    const/4 v7, 0x2

    const-string v8, "PN"

    invoke-direct {v3, v6, v7, v8, v4}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->PACKAGE_NAME:Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;

    .line 53
    new-instance v6, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;

    const-string v8, "E"

    const/4 v9, 0x3

    invoke-direct {v6, v8, v9, v8, v4}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v6, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->E:Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;

    .line 54
    new-instance v8, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;

    const-string v10, "S"

    const/4 v11, 0x4

    invoke-direct {v8, v10, v11, v10, v4}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v8, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->S:Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;

    .line 55
    new-instance v10, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;

    const-string v12, "R"

    const/4 v13, 0x5

    invoke-direct {v10, v12, v13, v12, v4}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v10, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->R:Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;

    .line 56
    new-instance v12, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;

    const-string v14, "RESULT"

    const/4 v15, 0x6

    const-string v13, "Result"

    invoke-direct {v12, v14, v15, v13, v4}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v12, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->RESULT:Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;

    aput-object v0, v13, v2

    aput-object v1, v13, v5

    aput-object v3, v13, v7

    aput-object v6, v13, v9

    aput-object v8, v13, v11

    const/4 v0, 0x5

    aput-object v10, v13, v0

    aput-object v12, v13, v15

    .line 49
    sput-object v13, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->$VALUES:[Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;

    .line 58
    sput v4, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->mMaxIndex:I

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

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->mKey:Ljava/lang/String;

    .line 65
    iput p4, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->mIndex:I

    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;
    .locals 5

    .line 90
    invoke-static {}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->values()[Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 91
    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->getKey()Ljava/lang/String;

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

.method public static getDate(Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;[Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->isValidIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->-$$Nest$sfgetDEFAULT_DATE_FORMAT()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->getIndex()I

    move-result p0

    aget-object p0, p1, p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    goto :goto_0

    .line 99
    :cond_0
    new-instance p0, Ljava/util/Date;

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    :goto_0
    return-object p0
.end method

.method public static getIntegerValue(Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;[Ljava/lang/String;)I
    .locals 1

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->isValidIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->getIndex()I

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

.method public static getStringValue(Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->isValidIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->getIndex()I

    move-result p0

    aget-object p0, p1, p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static isValid()Z
    .locals 2

    .line 111
    sget v0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->mMaxIndex:I

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

    .line 115
    invoke-static {}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->values()[Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 116
    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->setIndex(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    :cond_0
    sput v3, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->mMaxIndex:I

    return-void
.end method

.method public static size()I
    .locals 1

    .line 86
    sget v0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->mMaxIndex:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;
    .locals 1

    .line 49
    const-class v0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;
    .locals 1

    .line 49
    sget-object v0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->$VALUES:[Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 0

    .line 73
    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->mIndex:I

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public isValidIndex()Z
    .locals 1

    .line 82
    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->mIndex:I

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

    .line 77
    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->mIndex:I

    .line 78
    sget p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->mMaxIndex:I

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    sput p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->mMaxIndex:I

    return-void
.end method
