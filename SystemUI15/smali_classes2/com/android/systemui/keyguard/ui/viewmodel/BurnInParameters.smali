.class public final Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final minViewY:I

.field public final topInset:I

.field public final translationY:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;-><init>(IILkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IILkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;->topInset:I

    iput p2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;->minViewY:I

    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;->translationY:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const p2, 0x7fffffff

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    sget-object p3, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters$1;->INSTANCE:Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters$1;

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;-><init>(IILkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static copy$default(Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;IILkotlin/jvm/functions/Function0;I)Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;
    .locals 1

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;->topInset:I

    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    iget p2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;->minViewY:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;->translationY:Lkotlin/jvm/functions/Function0;

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;-><init>(IILkotlin/jvm/functions/Function0;)V

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;

    iget v1, p1, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;->topInset:I

    iget v3, p0, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;->topInset:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;->minViewY:I

    iget v3, p1, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;->minViewY:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;->translationY:Lkotlin/jvm/functions/Function0;

    iget-object p1, p1, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;->translationY:Lkotlin/jvm/functions/Function0;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;->topInset:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;->minViewY:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;->translationY:Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BurnInParameters(topInset="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;->topInset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minViewY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;->minViewY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", translationY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;->translationY:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
