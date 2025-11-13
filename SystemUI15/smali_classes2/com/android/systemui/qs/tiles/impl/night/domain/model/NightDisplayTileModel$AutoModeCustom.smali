.class public final Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeCustom;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel;


# instance fields
.field public final endTime:Ljava/time/LocalTime;

.field public final is24HourFormat:Z

.field public final isActivated:Z

.field public final isEnrolledInForcedNightDisplayAutoMode:Z

.field public final startTime:Ljava/time/LocalTime;


# direct methods
.method public constructor <init>(ZZLjava/time/LocalTime;Ljava/time/LocalTime;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeCustom;->isActivated:Z

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeCustom;->isEnrolledInForcedNightDisplayAutoMode:Z

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeCustom;->startTime:Ljava/time/LocalTime;

    iput-object p4, p0, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeCustom;->endTime:Ljava/time/LocalTime;

    iput-boolean p5, p0, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeCustom;->is24HourFormat:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeCustom;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeCustom;

    iget-boolean v1, p1, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeCustom;->isActivated:Z

    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeCustom;->isActivated:Z

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeCustom;->isEnrolledInForcedNightDisplayAutoMode:Z

    iget-boolean v3, p1, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeCustom;->isEnrolledInForcedNightDisplayAutoMode:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeCustom;->startTime:Ljava/time/LocalTime;

    iget-object v3, p1, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeCustom;->startTime:Ljava/time/LocalTime;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeCustom;->endTime:Ljava/time/LocalTime;

    iget-object v3, p1, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeCustom;->endTime:Ljava/time/LocalTime;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeCustom;->is24HourFormat:Z

    iget-boolean p1, p1, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeCustom;->is24HourFormat:Z

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeCustom;->isActivated:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeCustom;->isEnrolledInForcedNightDisplayAutoMode:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeCustom;->startTime:Ljava/time/LocalTime;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/time/LocalTime;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeCustom;->endTime:Ljava/time/LocalTime;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/time/LocalTime;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeCustom;->is24HourFormat:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final isActivated()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeCustom;->isActivated:Z

    return p0
.end method

.method public final isEnrolledInForcedNightDisplayAutoMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeCustom;->isEnrolledInForcedNightDisplayAutoMode:Z

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeCustom;->startTime:Ljava/time/LocalTime;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeCustom;->endTime:Ljava/time/LocalTime;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AutoModeCustom(isActivated="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeCustom;->isActivated:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isEnrolledInForcedNightDisplayAutoMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeCustom;->isEnrolledInForcedNightDisplayAutoMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", startTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", endTime="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", is24HourFormat="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeCustom;->is24HourFormat:Z

    const-string v0, ")"

    invoke-static {v2, p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
