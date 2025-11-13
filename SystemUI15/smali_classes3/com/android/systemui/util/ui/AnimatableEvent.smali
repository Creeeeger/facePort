.class public final Lcom/android/systemui/util/ui/AnimatableEvent;
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
.field public static final $stable:I


# instance fields
.field private final startAnimating:Z

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/ui/AnimatableEvent;->value:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/systemui/util/ui/AnimatableEvent;->startAnimating:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/systemui/util/ui/AnimatableEvent;Ljava/lang/Object;ZILjava/lang/Object;)Lcom/android/systemui/util/ui/AnimatableEvent;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/android/systemui/util/ui/AnimatableEvent;->value:Ljava/lang/Object;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lcom/android/systemui/util/ui/AnimatableEvent;->startAnimating:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/ui/AnimatableEvent;->copy(Ljava/lang/Object;Z)Lcom/android/systemui/util/ui/AnimatableEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/util/ui/AnimatableEvent;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public final component2()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/util/ui/AnimatableEvent;->startAnimating:Z

    return p0
.end method

.method public final copy(Ljava/lang/Object;Z)Lcom/android/systemui/util/ui/AnimatableEvent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)",
            "Lcom/android/systemui/util/ui/AnimatableEvent<",
            "TT;>;"
        }
    .end annotation

    new-instance p0, Lcom/android/systemui/util/ui/AnimatableEvent;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/util/ui/AnimatableEvent;-><init>(Ljava/lang/Object;Z)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/util/ui/AnimatableEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/util/ui/AnimatableEvent;

    iget-object v1, p0, Lcom/android/systemui/util/ui/AnimatableEvent;->value:Ljava/lang/Object;

    iget-object v3, p1, Lcom/android/systemui/util/ui/AnimatableEvent;->value:Ljava/lang/Object;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean p0, p0, Lcom/android/systemui/util/ui/AnimatableEvent;->startAnimating:Z

    iget-boolean p1, p1, Lcom/android/systemui/util/ui/AnimatableEvent;->startAnimating:Z

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getStartAnimating()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/util/ui/AnimatableEvent;->startAnimating:Z

    return p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/util/ui/AnimatableEvent;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/ui/AnimatableEvent;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/android/systemui/util/ui/AnimatableEvent;->startAnimating:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/ui/AnimatableEvent;->value:Ljava/lang/Object;

    iget-boolean p0, p0, Lcom/android/systemui/util/ui/AnimatableEvent;->startAnimating:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AnimatableEvent(value="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", startAnimating="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
