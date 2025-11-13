.class public final Lcom/android/systemui/keyguard/RankedStateListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final rank:I

.field public final skipInitState:Z

.field public final stateListener:Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/RankedStateListener;->stateListener:Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;

    iput p2, p0, Lcom/android/systemui/keyguard/RankedStateListener;->rank:I

    iput-boolean p3, p0, Lcom/android/systemui/keyguard/RankedStateListener;->skipInitState:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/keyguard/RankedStateListener;-><init>(Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;IZ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/keyguard/RankedStateListener;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/keyguard/RankedStateListener;

    iget-object v1, p1, Lcom/android/systemui/keyguard/RankedStateListener;->stateListener:Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;

    iget-object v3, p0, Lcom/android/systemui/keyguard/RankedStateListener;->stateListener:Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/keyguard/RankedStateListener;->rank:I

    iget v3, p1, Lcom/android/systemui/keyguard/RankedStateListener;->rank:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/RankedStateListener;->skipInitState:Z

    iget-boolean p1, p1, Lcom/android/systemui/keyguard/RankedStateListener;->skipInitState:Z

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/keyguard/RankedStateListener;->stateListener:Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/keyguard/RankedStateListener;->rank:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/RankedStateListener;->skipInitState:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RankedStateListener(stateListener="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/keyguard/RankedStateListener;->stateListener:Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/keyguard/RankedStateListener;->rank:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", skipInitState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/RankedStateListener;->skipInitState:Z

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
