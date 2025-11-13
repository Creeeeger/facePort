.class public final Lcom/android/systemui/keyguard/shared/model/TransitionInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final animator:Landroid/animation/ValueAnimator;

.field public final from:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

.field public final modeOnCanceled:Lcom/android/systemui/keyguard/shared/model/TransitionModeOnCanceled;

.field public final ownerName:Ljava/lang/String;

.field public final to:Lcom/android/systemui/keyguard/shared/model/KeyguardState;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;Landroid/animation/ValueAnimator;Lcom/android/systemui/keyguard/shared/model/TransitionModeOnCanceled;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/shared/model/TransitionInfo;->ownerName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/keyguard/shared/model/TransitionInfo;->from:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    iput-object p3, p0, Lcom/android/systemui/keyguard/shared/model/TransitionInfo;->to:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    iput-object p4, p0, Lcom/android/systemui/keyguard/shared/model/TransitionInfo;->animator:Landroid/animation/ValueAnimator;

    iput-object p5, p0, Lcom/android/systemui/keyguard/shared/model/TransitionInfo;->modeOnCanceled:Lcom/android/systemui/keyguard/shared/model/TransitionModeOnCanceled;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;Landroid/animation/ValueAnimator;Lcom/android/systemui/keyguard/shared/model/TransitionModeOnCanceled;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    sget-object p5, Lcom/android/systemui/keyguard/shared/model/TransitionModeOnCanceled;->LAST_VALUE:Lcom/android/systemui/keyguard/shared/model/TransitionModeOnCanceled;

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/keyguard/shared/model/TransitionInfo;-><init>(Ljava/lang/String;Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;Landroid/animation/ValueAnimator;Lcom/android/systemui/keyguard/shared/model/TransitionModeOnCanceled;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/keyguard/shared/model/TransitionInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/keyguard/shared/model/TransitionInfo;

    iget-object v1, p1, Lcom/android/systemui/keyguard/shared/model/TransitionInfo;->ownerName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/keyguard/shared/model/TransitionInfo;->ownerName:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/keyguard/shared/model/TransitionInfo;->from:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    iget-object v3, p1, Lcom/android/systemui/keyguard/shared/model/TransitionInfo;->from:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/keyguard/shared/model/TransitionInfo;->to:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    iget-object v3, p1, Lcom/android/systemui/keyguard/shared/model/TransitionInfo;->to:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/keyguard/shared/model/TransitionInfo;->animator:Landroid/animation/ValueAnimator;

    iget-object v3, p1, Lcom/android/systemui/keyguard/shared/model/TransitionInfo;->animator:Landroid/animation/ValueAnimator;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/keyguard/shared/model/TransitionInfo;->modeOnCanceled:Lcom/android/systemui/keyguard/shared/model/TransitionModeOnCanceled;

    iget-object p1, p1, Lcom/android/systemui/keyguard/shared/model/TransitionInfo;->modeOnCanceled:Lcom/android/systemui/keyguard/shared/model/TransitionModeOnCanceled;

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/shared/model/TransitionInfo;->ownerName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/keyguard/shared/model/TransitionInfo;->from:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/android/systemui/keyguard/shared/model/TransitionInfo;->to:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/keyguard/shared/model/TransitionInfo;->animator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/systemui/keyguard/shared/model/TransitionInfo;->modeOnCanceled:Lcom/android/systemui/keyguard/shared/model/TransitionModeOnCanceled;

    invoke-virtual {p0}, Ljava/lang/Enum;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/keyguard/shared/model/TransitionInfo;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    const-string v0, "animated"

    goto :goto_0

    :cond_0
    const-string v0, "manual"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TransitionInfo(ownerName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/keyguard/shared/model/TransitionInfo;->ownerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", from="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/keyguard/shared/model/TransitionInfo;->from:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", to="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/keyguard/shared/model/TransitionInfo;->to:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
