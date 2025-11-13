.class public final Lcom/samsung/android/sdk/moneta/memory/option/ActivityQueryOption$WrapBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final activityType:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

.field public final contentFill:Z

.field public final endTimestamp:Ljava/lang/Long;

.field public final engramId:Ljava/lang/String;

.field public final limit:I

.field public final offset:I

.field public final queryType:Lcom/samsung/android/sdk/moneta/memory/option/ActivityQueryType;

.field public final startTimestamp:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 11

    const/16 v9, 0xff

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/sdk/moneta/memory/option/ActivityQueryOption$WrapBuilder;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;IILcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;Lcom/samsung/android/sdk/moneta/memory/option/ActivityQueryType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;IILcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;Lcom/samsung/android/sdk/moneta/memory/option/ActivityQueryType;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/moneta/memory/option/ActivityQueryOption$WrapBuilder;->startTimestamp:Ljava/lang/Long;

    iput-object p2, p0, Lcom/samsung/android/sdk/moneta/memory/option/ActivityQueryOption$WrapBuilder;->endTimestamp:Ljava/lang/Long;

    iput-object p3, p0, Lcom/samsung/android/sdk/moneta/memory/option/ActivityQueryOption$WrapBuilder;->engramId:Ljava/lang/String;

    iput p4, p0, Lcom/samsung/android/sdk/moneta/memory/option/ActivityQueryOption$WrapBuilder;->limit:I

    iput p5, p0, Lcom/samsung/android/sdk/moneta/memory/option/ActivityQueryOption$WrapBuilder;->offset:I

    iput-object p6, p0, Lcom/samsung/android/sdk/moneta/memory/option/ActivityQueryOption$WrapBuilder;->activityType:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    iput-object p7, p0, Lcom/samsung/android/sdk/moneta/memory/option/ActivityQueryOption$WrapBuilder;->queryType:Lcom/samsung/android/sdk/moneta/memory/option/ActivityQueryType;

    iput-boolean p8, p0, Lcom/samsung/android/sdk/moneta/memory/option/ActivityQueryOption$WrapBuilder;->contentFill:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;IILcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;Lcom/samsung/android/sdk/moneta/memory/option/ActivityQueryType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p10, p9, 0x1

    const/4 v0, 0x0

    if-eqz p10, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_3

    const/16 p4, 0x64

    :cond_3
    and-int/lit8 p10, p9, 0x10

    const/4 v1, 0x0

    if-eqz p10, :cond_4

    move p5, v1

    :cond_4
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_6

    sget-object p7, Lcom/samsung/android/sdk/moneta/memory/option/ActivityQueryType;->BETWEEN_TIMESTAMP:Lcom/samsung/android/sdk/moneta/memory/option/ActivityQueryType;

    :cond_6
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_7

    move p8, v1

    :cond_7
    invoke-direct/range {p0 .. p8}, Lcom/samsung/android/sdk/moneta/memory/option/ActivityQueryOption$WrapBuilder;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;IILcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;Lcom/samsung/android/sdk/moneta/memory/option/ActivityQueryType;Z)V

    return-void
.end method
