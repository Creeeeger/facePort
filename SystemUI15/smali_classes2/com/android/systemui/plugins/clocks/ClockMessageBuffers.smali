.class public final Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private final infraMessageBuffer:Lcom/android/systemui/log/core/MessageBuffer;

.field private final largeClockMessageBuffer:Lcom/android/systemui/log/core/MessageBuffer;

.field private final smallClockMessageBuffer:Lcom/android/systemui/log/core/MessageBuffer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/core/MessageBuffer;Lcom/android/systemui/log/core/MessageBuffer;Lcom/android/systemui/log/core/MessageBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;->infraMessageBuffer:Lcom/android/systemui/log/core/MessageBuffer;

    iput-object p2, p0, Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;->smallClockMessageBuffer:Lcom/android/systemui/log/core/MessageBuffer;

    iput-object p3, p0, Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;->largeClockMessageBuffer:Lcom/android/systemui/log/core/MessageBuffer;

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;Lcom/android/systemui/log/core/MessageBuffer;Lcom/android/systemui/log/core/MessageBuffer;Lcom/android/systemui/log/core/MessageBuffer;ILjava/lang/Object;)Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;->infraMessageBuffer:Lcom/android/systemui/log/core/MessageBuffer;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;->smallClockMessageBuffer:Lcom/android/systemui/log/core/MessageBuffer;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;->largeClockMessageBuffer:Lcom/android/systemui/log/core/MessageBuffer;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;->copy(Lcom/android/systemui/log/core/MessageBuffer;Lcom/android/systemui/log/core/MessageBuffer;Lcom/android/systemui/log/core/MessageBuffer;)Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/android/systemui/log/core/MessageBuffer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;->infraMessageBuffer:Lcom/android/systemui/log/core/MessageBuffer;

    return-object p0
.end method

.method public final component2()Lcom/android/systemui/log/core/MessageBuffer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;->smallClockMessageBuffer:Lcom/android/systemui/log/core/MessageBuffer;

    return-object p0
.end method

.method public final component3()Lcom/android/systemui/log/core/MessageBuffer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;->largeClockMessageBuffer:Lcom/android/systemui/log/core/MessageBuffer;

    return-object p0
.end method

.method public final copy(Lcom/android/systemui/log/core/MessageBuffer;Lcom/android/systemui/log/core/MessageBuffer;Lcom/android/systemui/log/core/MessageBuffer;)Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;
    .locals 0

    new-instance p0, Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;-><init>(Lcom/android/systemui/log/core/MessageBuffer;Lcom/android/systemui/log/core/MessageBuffer;Lcom/android/systemui/log/core/MessageBuffer;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;

    iget-object v1, p0, Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;->infraMessageBuffer:Lcom/android/systemui/log/core/MessageBuffer;

    iget-object v3, p1, Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;->infraMessageBuffer:Lcom/android/systemui/log/core/MessageBuffer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;->smallClockMessageBuffer:Lcom/android/systemui/log/core/MessageBuffer;

    iget-object v3, p1, Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;->smallClockMessageBuffer:Lcom/android/systemui/log/core/MessageBuffer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;->largeClockMessageBuffer:Lcom/android/systemui/log/core/MessageBuffer;

    iget-object p1, p1, Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;->largeClockMessageBuffer:Lcom/android/systemui/log/core/MessageBuffer;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getInfraMessageBuffer()Lcom/android/systemui/log/core/MessageBuffer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;->infraMessageBuffer:Lcom/android/systemui/log/core/MessageBuffer;

    return-object p0
.end method

.method public final getLargeClockMessageBuffer()Lcom/android/systemui/log/core/MessageBuffer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;->largeClockMessageBuffer:Lcom/android/systemui/log/core/MessageBuffer;

    return-object p0
.end method

.method public final getSmallClockMessageBuffer()Lcom/android/systemui/log/core/MessageBuffer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;->smallClockMessageBuffer:Lcom/android/systemui/log/core/MessageBuffer;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;->infraMessageBuffer:Lcom/android/systemui/log/core/MessageBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;->smallClockMessageBuffer:Lcom/android/systemui/log/core/MessageBuffer;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;->largeClockMessageBuffer:Lcom/android/systemui/log/core/MessageBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;->infraMessageBuffer:Lcom/android/systemui/log/core/MessageBuffer;

    iget-object v1, p0, Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;->smallClockMessageBuffer:Lcom/android/systemui/log/core/MessageBuffer;

    iget-object p0, p0, Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;->largeClockMessageBuffer:Lcom/android/systemui/log/core/MessageBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ClockMessageBuffers(infraMessageBuffer="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", smallClockMessageBuffer="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", largeClockMessageBuffer="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
