.class public final Lcom/android/systemui/scene/domain/startable/ScrimStartable$Model;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final scrimState:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public final unlocking:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ScrimState;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/scene/domain/startable/ScrimStartable$Model;->scrimState:Lcom/android/systemui/statusbar/phone/ScrimState;

    iput-boolean p2, p0, Lcom/android/systemui/scene/domain/startable/ScrimStartable$Model;->unlocking:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/scene/domain/startable/ScrimStartable$Model;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/scene/domain/startable/ScrimStartable$Model;

    iget-object v1, p1, Lcom/android/systemui/scene/domain/startable/ScrimStartable$Model;->scrimState:Lcom/android/systemui/statusbar/phone/ScrimState;

    iget-object v3, p0, Lcom/android/systemui/scene/domain/startable/ScrimStartable$Model;->scrimState:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-boolean p0, p0, Lcom/android/systemui/scene/domain/startable/ScrimStartable$Model;->unlocking:Z

    iget-boolean p1, p1, Lcom/android/systemui/scene/domain/startable/ScrimStartable$Model;->unlocking:Z

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/scene/domain/startable/ScrimStartable$Model;->scrimState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/android/systemui/scene/domain/startable/ScrimStartable$Model;->unlocking:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Model(scrimState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/scene/domain/startable/ScrimStartable$Model;->scrimState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", unlocking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/scene/domain/startable/ScrimStartable$Model;->unlocking:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
