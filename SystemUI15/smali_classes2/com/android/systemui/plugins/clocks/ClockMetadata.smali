.class public final Lcom/android/systemui/plugins/clocks/ClockMetadata;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private final clockId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/plugins/clocks/ClockMetadata;->clockId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/systemui/plugins/clocks/ClockMetadata;Ljava/lang/String;ILjava/lang/Object;)Lcom/android/systemui/plugins/clocks/ClockMetadata;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/android/systemui/plugins/clocks/ClockMetadata;->clockId:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/plugins/clocks/ClockMetadata;->copy(Ljava/lang/String;)Lcom/android/systemui/plugins/clocks/ClockMetadata;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/clocks/ClockMetadata;->clockId:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;)Lcom/android/systemui/plugins/clocks/ClockMetadata;
    .locals 0

    new-instance p0, Lcom/android/systemui/plugins/clocks/ClockMetadata;

    invoke-direct {p0, p1}, Lcom/android/systemui/plugins/clocks/ClockMetadata;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/plugins/clocks/ClockMetadata;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/plugins/clocks/ClockMetadata;

    iget-object p0, p0, Lcom/android/systemui/plugins/clocks/ClockMetadata;->clockId:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/systemui/plugins/clocks/ClockMetadata;->clockId:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getClockId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/clocks/ClockMetadata;->clockId:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/clocks/ClockMetadata;->clockId:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/plugins/clocks/ClockMetadata;->clockId:Ljava/lang/String;

    const-string v0, "ClockMetadata(clockId="

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
