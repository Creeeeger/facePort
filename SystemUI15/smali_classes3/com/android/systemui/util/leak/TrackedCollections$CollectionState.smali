.class Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field halfwayCount:I

.field lastCount:I

.field lastUptime:J

.field startUptime:J

.field tag:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->halfwayCount:I

    iput v0, p0, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->lastCount:I

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;-><init>()V

    return-void
.end method

.method private ratePerHour(JIJI)F
    .locals 0

    cmp-long p0, p1, p4

    if-gez p0, :cond_1

    if-ltz p3, :cond_1

    if-gez p6, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p0, p6

    int-to-float p3, p3

    sub-float/2addr p0, p3

    sub-long/2addr p4, p1

    long-to-float p1, p4

    div-float/2addr p0, p1

    const/high16 p1, 0x42700000    # 60.0f

    mul-float/2addr p0, p1

    const p1, 0x476a6000    # 60000.0f

    mul-float/2addr p0, p1

    return p0

    :cond_1
    :goto_0
    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v9, p0, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->tag:Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->startUptime:J

    const-wide/32 v10, 0x1b7740

    add-long v4, v1, v10

    iget v6, p0, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->halfwayCount:I

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->ratePerHour(JIJI)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    iget-wide v0, p0, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->startUptime:J

    add-long v1, v0, v10

    iget v3, p0, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->halfwayCount:I

    iget v6, p0, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->lastCount:I

    move-object v0, p0

    move-wide v4, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->ratePerHour(JIJI)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    iget-wide v1, p0, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->startUptime:J

    const/4 v3, 0x0

    iget v6, p0, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->lastCount:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->ratePerHour(JIJI)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->lastCount:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v9, v12, v10, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s: %.2f (start-30min) / %.2f (30min-now) / %.2f (start-now) (growth rate in #/hour); %d (current size)"

    invoke-virtual {p1, v0, p0}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return-void
.end method
