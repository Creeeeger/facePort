.class public final Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/ui/AnimatedValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/systemui/util/ui/AnimatedValue<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;->value:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;Ljava/lang/Object;ILjava/lang/Object;)Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;->value:Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;->copy(Ljava/lang/Object;)Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;

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

    iget-object p0, p0, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public final copy(Ljava/lang/Object;)Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating<",
            "TT;>;"
        }
    .end annotation

    new-instance p0, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;

    iget-object p0, p0, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;->value:Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;->value:Ljava/lang/Object;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;->value:Ljava/lang/Object;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;->value:Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotAnimating(value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
