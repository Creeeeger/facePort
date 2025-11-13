.class public final Lcom/android/systemui/util/kotlin/WithPrev;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T::TS;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final newValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final previousValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/kotlin/WithPrev;->previousValue:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/util/kotlin/WithPrev;->newValue:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/systemui/util/kotlin/WithPrev;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)Lcom/android/systemui/util/kotlin/WithPrev;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/android/systemui/util/kotlin/WithPrev;->previousValue:Ljava/lang/Object;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/android/systemui/util/kotlin/WithPrev;->newValue:Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/kotlin/WithPrev;->copy(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/systemui/util/kotlin/WithPrev;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/util/kotlin/WithPrev;->previousValue:Ljava/lang/Object;

    return-object p0
.end method

.method public final component2()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/util/kotlin/WithPrev;->newValue:Ljava/lang/Object;

    return-object p0
.end method

.method public final copy(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/systemui/util/kotlin/WithPrev;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TT;)",
            "Lcom/android/systemui/util/kotlin/WithPrev<",
            "TS;TT;>;"
        }
    .end annotation

    new-instance p0, Lcom/android/systemui/util/kotlin/WithPrev;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/util/kotlin/WithPrev;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/util/kotlin/WithPrev;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/util/kotlin/WithPrev;

    iget-object v1, p0, Lcom/android/systemui/util/kotlin/WithPrev;->previousValue:Ljava/lang/Object;

    iget-object v3, p1, Lcom/android/systemui/util/kotlin/WithPrev;->previousValue:Ljava/lang/Object;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/util/kotlin/WithPrev;->newValue:Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/systemui/util/kotlin/WithPrev;->newValue:Ljava/lang/Object;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getNewValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/util/kotlin/WithPrev;->newValue:Ljava/lang/Object;

    return-object p0
.end method

.method public final getPreviousValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/util/kotlin/WithPrev;->previousValue:Ljava/lang/Object;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/kotlin/WithPrev;->previousValue:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/systemui/util/kotlin/WithPrev;->newValue:Ljava/lang/Object;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/kotlin/WithPrev;->previousValue:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/util/kotlin/WithPrev;->newValue:Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WithPrev(previousValue="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", newValue="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
