.class public Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;
.super Ljava/lang/Object;
.source "TcpSocketStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;
    }
.end annotation


# static fields
.field private static final DEFAULT_DATE_FORMAT:Ljava/text/SimpleDateFormat;


# instance fields
.field private final mDate:Ljava/util/Date;

.field private final mGoodSockets:I

.field private final mResult:Ljava/lang/String;

.field private final mSlowSockets:I

.field private final mUid:Ljava/lang/String;

.field private final mWaitSockets:I


# direct methods
.method static bridge synthetic -$$Nest$sfgetDEFAULT_DATE_FORMAT()Ljava/text/SimpleDateFormat;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->DEFAULT_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->DEFAULT_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mDate:Ljava/util/Date;

    const-string v0, ""

    .line 196
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mUid:Ljava/lang/String;

    const/4 v1, 0x0

    .line 197
    iput v1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mGoodSockets:I

    .line 198
    iput v1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mWaitSockets:I

    .line 199
    iput v1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mSlowSockets:I

    .line 200
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mResult:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mDate:Ljava/util/Date;

    .line 187
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mUid:Ljava/lang/String;

    .line 188
    iput p3, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mGoodSockets:I

    .line 189
    iput p4, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mWaitSockets:I

    .line 190
    iput p5, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mSlowSockets:I

    .line 191
    iput-object p6, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mResult:Ljava/lang/String;

    return-void
.end method

.method private static parse([Ljava/lang/String;)Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;
    .locals 9

    if-nez p0, :cond_0

    .line 139
    new-instance p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;-><init>()V

    return-object p0

    .line 141
    :cond_0
    array-length v0, p0

    invoke-static {}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 143
    :try_start_0
    new-instance v0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;

    sget-object v1, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->TIME_STAMP:Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;

    .line 144
    invoke-static {v1, p0}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->getDate(Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;[Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    sget-object v1, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->UID:Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;

    .line 145
    invoke-static {v1, p0}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->getStringValue(Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v1, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->E:Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;

    .line 146
    invoke-static {v1, p0}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->getIntegerValue(Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;[Ljava/lang/String;)I

    move-result v5

    sget-object v1, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->S:Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;

    .line 147
    invoke-static {v1, p0}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->getIntegerValue(Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;[Ljava/lang/String;)I

    move-result v6

    sget-object v1, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->R:Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;

    .line 148
    invoke-static {v1, p0}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->getIntegerValue(Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;[Ljava/lang/String;)I

    move-result v7

    sget-object v1, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->RESULT:Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;

    .line 149
    invoke-static {v1, p0}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->getStringValue(Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;-><init>(Ljava/util/Date;Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string p0, "TcpSocketStats"

    const-string v0, "malformed TcpSocketStats"

    .line 151
    invoke-static {p0, v0}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_1
    new-instance p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;-><init>()V

    return-object p0
.end method

.method public static declared-synchronized parseEntry(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;",
            ">;>;"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;

    monitor-enter v0

    .line 159
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "\n"

    .line 160
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 162
    array-length v2, p0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    const/4 v2, 0x0

    .line 163
    aget-object v2, p0, v2

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->parseHeader(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    .line 164
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 165
    aget-object v3, p0, v2

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 166
    sget-object v4, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->PACKAGE_NAME:Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;

    invoke-static {v4, v3}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->getStringValue(Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 167
    invoke-static {v3}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->parse([Ljava/lang/String;)Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;

    move-result-object v3

    .line 169
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 170
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_0
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 176
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 177
    new-instance v3, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v3}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->sort(Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 182
    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static parseHeader(Ljava/lang/String;)Z
    .locals 2

    .line 123
    invoke-static {}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->reset()V

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string v1, ","

    .line 126
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 127
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 128
    aget-object v1, p0, v0

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->get(Ljava/lang/String;)Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->setIndex(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->isValid()Z

    move-result p0

    return p0

    :cond_2
    return v0
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mDate:Ljava/util/Date;

    return-object p0
.end method

.method public getGoodSockets()I
    .locals 0

    .line 34
    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mGoodSockets:I

    return p0
.end method

.method public getTotalSockets()I
    .locals 2

    .line 46
    iget v0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mGoodSockets:I

    iget v1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mWaitSockets:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mSlowSockets:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mDate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mUid="

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mGoodSockets="

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mGoodSockets:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mWaitSockets="

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mWaitSockets:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSlowSockets="

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mSlowSockets:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mResult="

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mResult:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
