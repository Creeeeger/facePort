.class public final Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final DEFAULT_DATE_FORMAT:Ljava/text/SimpleDateFormat;


# instance fields
.field public final mDate:Ljava/util/Date;

.field public final mGoodSockets:I

.field public final mResult:Ljava/lang/String;

.field public final mSlowSockets:I

.field public final mUid:Ljava/lang/String;

.field public final mWaitSockets:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->DEFAULT_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mDate:Ljava/util/Date;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mUid:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mGoodSockets:I

    iput v1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mWaitSockets:I

    iput v1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mSlowSockets:I

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mResult:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mDate:Ljava/util/Date;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mUid:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mGoodSockets:I

    iput p4, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mWaitSockets:I

    iput p5, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mSlowSockets:I

    iput-object p6, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mResult:Ljava/lang/String;

    return-void
.end method

.method public static parse([Ljava/lang/String;)Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;
    .locals 9

    if-nez p0, :cond_0

    new-instance p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;-><init>()V

    return-object p0

    :cond_0
    array-length v0, p0

    sget v1, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->mMaxIndex:I

    add-int/lit8 v1, v1, 0x1

    if-lt v0, v1, :cond_1

    :try_start_0
    new-instance v0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->getDate([Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    sget-object v1, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->UID:Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;

    invoke-static {v1, p0}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->getStringValue(Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v1, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->E:Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;

    invoke-static {v1, p0}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->getIntegerValue(Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;[Ljava/lang/String;)I

    move-result v5

    sget-object v1, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->S:Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;

    invoke-static {v1, p0}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->getIntegerValue(Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;[Ljava/lang/String;)I

    move-result v6

    sget-object v1, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->R:Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;

    invoke-static {v1, p0}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->getIntegerValue(Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;[Ljava/lang/String;)I

    move-result v7

    sget-object v1, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->RESULT:Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;

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

    invoke-static {p0, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;-><init>()V

    return-object p0
.end method

.method public static declared-synchronized parseEntry(Ljava/lang/String;)Ljava/util/Map;
    .locals 9

    const-class v0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "\n"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    array-length v2, p0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_5

    const/4 v2, 0x0

    aget-object v3, p0, v2

    invoke-static {}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->values()[Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_0
    const/4 v7, -0x1

    if-ge v6, v5, :cond_0

    aget-object v8, v4, v6

    invoke-virtual {v8, v7}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->setIndex(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    sput v7, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->mMaxIndex:I

    if-eqz v3, :cond_5

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_2

    aget-object v4, v3, v2

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->get(Ljava/lang/String;)Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4, v2}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->setIndex(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    sget v2, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->mMaxIndex:I

    if-eq v2, v7, :cond_5

    const/4 v2, 0x1

    :goto_2
    array-length v3, p0

    if-ge v2, v3, :cond_4

    aget-object v3, p0, v2

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->PACKAGE_NAME:Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;

    invoke-static {v4, v3}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;->getStringValue(Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$StatItem;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->parse([Ljava/lang/String;)Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;

    move-result-object v3

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_3
    :goto_3
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    new-instance v3, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-static {v3}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->sort(Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :cond_5
    monitor-exit v0

    return-object v1

    :goto_5
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mDate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mGoodSockets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mGoodSockets:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mWaitSockets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mWaitSockets:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSlowSockets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mSlowSockets:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mResult:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
