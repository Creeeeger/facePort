.class public final Lcom/android/systemui/keyguard/shared/model/Edge$StateToScene;
.super Lcom/android/systemui/keyguard/shared/model/Edge;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final from:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

.field public final to:Lcom/android/compose/animation/scene/SceneKey;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/compose/animation/scene/SceneKey;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/shared/model/Edge;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/systemui/keyguard/shared/model/Edge$StateToScene;->from:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    iput-object p2, p0, Lcom/android/systemui/keyguard/shared/model/Edge$StateToScene;->to:Lcom/android/compose/animation/scene/SceneKey;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/compose/animation/scene/SceneKey;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/shared/model/Edge$StateToScene;-><init>(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/compose/animation/scene/SceneKey;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/keyguard/shared/model/Edge$StateToScene;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/keyguard/shared/model/Edge$StateToScene;

    iget-object v1, p1, Lcom/android/systemui/keyguard/shared/model/Edge$StateToScene;->from:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    iget-object v3, p0, Lcom/android/systemui/keyguard/shared/model/Edge$StateToScene;->from:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/keyguard/shared/model/Edge$StateToScene;->to:Lcom/android/compose/animation/scene/SceneKey;

    iget-object p1, p1, Lcom/android/systemui/keyguard/shared/model/Edge$StateToScene;->to:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/shared/model/Edge$StateToScene;->from:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/systemui/keyguard/shared/model/Edge$StateToScene;->to:Lcom/android/compose/animation/scene/SceneKey;

    iget-object p0, p0, Lcom/android/compose/animation/scene/Key;->identity:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StateToScene(from="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/keyguard/shared/model/Edge$StateToScene;->from:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", to="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/keyguard/shared/model/Edge$StateToScene;->to:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
