.class public interface abstract Lcom/android/systemui/bouncer/ui/viewmodel/EntryToken;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Comparable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/systemui/bouncer/ui/viewmodel/EntryToken$Companion;->$$INSTANCE:Lcom/android/systemui/bouncer/ui/viewmodel/EntryToken$Companion;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/systemui/bouncer/ui/viewmodel/EntryToken;

    invoke-interface {p0}, Lcom/android/systemui/bouncer/ui/viewmodel/EntryToken;->getSequenceNumber()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1}, Lcom/android/systemui/bouncer/ui/viewmodel/EntryToken;->getSequenceNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0
.end method

.method public abstract getSequenceNumber()I
.end method
