.class public final Lcom/android/systemui/plugins/clocks/AlarmData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private final descriptionId:Ljava/lang/String;

.field private final nextAlarmMillis:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/plugins/clocks/AlarmData;->nextAlarmMillis:Ljava/lang/Long;

    iput-object p2, p0, Lcom/android/systemui/plugins/clocks/AlarmData;->descriptionId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/systemui/plugins/clocks/AlarmData;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Lcom/android/systemui/plugins/clocks/AlarmData;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/android/systemui/plugins/clocks/AlarmData;->nextAlarmMillis:Ljava/lang/Long;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/android/systemui/plugins/clocks/AlarmData;->descriptionId:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/plugins/clocks/AlarmData;->copy(Ljava/lang/Long;Ljava/lang/String;)Lcom/android/systemui/plugins/clocks/AlarmData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/clocks/AlarmData;->nextAlarmMillis:Ljava/lang/Long;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/clocks/AlarmData;->descriptionId:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/Long;Ljava/lang/String;)Lcom/android/systemui/plugins/clocks/AlarmData;
    .locals 0

    new-instance p0, Lcom/android/systemui/plugins/clocks/AlarmData;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/plugins/clocks/AlarmData;-><init>(Ljava/lang/Long;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/plugins/clocks/AlarmData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/plugins/clocks/AlarmData;

    iget-object v1, p0, Lcom/android/systemui/plugins/clocks/AlarmData;->nextAlarmMillis:Ljava/lang/Long;

    iget-object v3, p1, Lcom/android/systemui/plugins/clocks/AlarmData;->nextAlarmMillis:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/plugins/clocks/AlarmData;->descriptionId:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/systemui/plugins/clocks/AlarmData;->descriptionId:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getDescriptionId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/clocks/AlarmData;->descriptionId:Ljava/lang/String;

    return-object p0
.end method

.method public final getNextAlarmMillis()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/clocks/AlarmData;->nextAlarmMillis:Ljava/lang/Long;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/plugins/clocks/AlarmData;->nextAlarmMillis:Ljava/lang/Long;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/systemui/plugins/clocks/AlarmData;->descriptionId:Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/plugins/clocks/AlarmData;->nextAlarmMillis:Ljava/lang/Long;

    iget-object p0, p0, Lcom/android/systemui/plugins/clocks/AlarmData;->descriptionId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AlarmData(nextAlarmMillis="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", descriptionId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
