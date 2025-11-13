.class public final Lcom/android/systemui/bouncer/ui/viewmodel/EntryToken$ClearAll;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/bouncer/ui/viewmodel/EntryToken;


# instance fields
.field public final sequenceNumber:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/bouncer/ui/viewmodel/EntryToken$ClearAll;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/bouncer/ui/viewmodel/EntryToken$ClearAll;->sequenceNumber:I

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget p1, Lcom/android/systemui/bouncer/ui/viewmodel/EntryToken$Companion;->nextSequenceNumber:I

    add-int/lit8 p2, p1, 0x1

    sput p2, Lcom/android/systemui/bouncer/ui/viewmodel/EntryToken$Companion;->nextSequenceNumber:I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/bouncer/ui/viewmodel/EntryToken$ClearAll;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/bouncer/ui/viewmodel/EntryToken$ClearAll;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/bouncer/ui/viewmodel/EntryToken$ClearAll;

    iget p0, p0, Lcom/android/systemui/bouncer/ui/viewmodel/EntryToken$ClearAll;->sequenceNumber:I

    iget p1, p1, Lcom/android/systemui/bouncer/ui/viewmodel/EntryToken$ClearAll;->sequenceNumber:I

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getSequenceNumber()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/bouncer/ui/viewmodel/EntryToken$ClearAll;->sequenceNumber:I

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/bouncer/ui/viewmodel/EntryToken$ClearAll;->sequenceNumber:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget p0, p0, Lcom/android/systemui/bouncer/ui/viewmodel/EntryToken$ClearAll;->sequenceNumber:I

    const-string v0, "ClearAll(sequenceNumber="

    const-string v1, ")"

    invoke-static {p0, v0, v1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
