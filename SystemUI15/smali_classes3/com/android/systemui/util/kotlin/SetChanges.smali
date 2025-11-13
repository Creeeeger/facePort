.class public final Lcom/android/systemui/util/kotlin/SetChanges;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final added:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final removed:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+TT;>;",
            "Ljava/util/Set<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/kotlin/SetChanges;->removed:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/systemui/util/kotlin/SetChanges;->added:Ljava/util/Set;

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/systemui/util/kotlin/SetChanges;Ljava/util/Set;Ljava/util/Set;ILjava/lang/Object;)Lcom/android/systemui/util/kotlin/SetChanges;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/android/systemui/util/kotlin/SetChanges;->removed:Ljava/util/Set;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/android/systemui/util/kotlin/SetChanges;->added:Ljava/util/Set;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/kotlin/SetChanges;->copy(Ljava/util/Set;Ljava/util/Set;)Lcom/android/systemui/util/kotlin/SetChanges;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/util/kotlin/SetChanges;->removed:Ljava/util/Set;

    return-object p0
.end method

.method public final component2()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/util/kotlin/SetChanges;->added:Ljava/util/Set;

    return-object p0
.end method

.method public final copy(Ljava/util/Set;Ljava/util/Set;)Lcom/android/systemui/util/kotlin/SetChanges;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+TT;>;",
            "Ljava/util/Set<",
            "+TT;>;)",
            "Lcom/android/systemui/util/kotlin/SetChanges<",
            "TT;>;"
        }
    .end annotation

    new-instance p0, Lcom/android/systemui/util/kotlin/SetChanges;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/util/kotlin/SetChanges;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/util/kotlin/SetChanges;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/util/kotlin/SetChanges;

    iget-object v1, p0, Lcom/android/systemui/util/kotlin/SetChanges;->removed:Ljava/util/Set;

    iget-object v3, p1, Lcom/android/systemui/util/kotlin/SetChanges;->removed:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/util/kotlin/SetChanges;->added:Ljava/util/Set;

    iget-object p1, p1, Lcom/android/systemui/util/kotlin/SetChanges;->added:Ljava/util/Set;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getAdded()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/util/kotlin/SetChanges;->added:Ljava/util/Set;

    return-object p0
.end method

.method public final getRemoved()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/util/kotlin/SetChanges;->removed:Ljava/util/Set;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/kotlin/SetChanges;->removed:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/systemui/util/kotlin/SetChanges;->added:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/kotlin/SetChanges;->removed:Ljava/util/Set;

    iget-object p0, p0, Lcom/android/systemui/util/kotlin/SetChanges;->added:Ljava/util/Set;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SetChanges(removed="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", added="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
