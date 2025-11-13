.class public final Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfoExtra;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private isNegative:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfoExtra;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfoExtra;->isNegative:I

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfoExtra;-><init>(I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfoExtra;IILjava/lang/Object;)Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfoExtra;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfoExtra;->isNegative:I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfoExtra;->copy(I)Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfoExtra;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfoExtra;->isNegative:I

    return p0
.end method

.method public final copy(I)Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfoExtra;
    .locals 0

    new-instance p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfoExtra;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfoExtra;-><init>(I)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfoExtra;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfoExtra;

    iget p0, p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfoExtra;->isNegative:I

    iget p1, p1, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfoExtra;->isNegative:I

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfoExtra;->isNegative:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public final isNegative()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfoExtra;->isNegative:I

    return p0
.end method

.method public final setNegative(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfoExtra;->isNegative:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TargetInstanceInfoExtra(isNegative="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfoExtra;->isNegative:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/activity/BackEventCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
