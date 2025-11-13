.class public final Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaControllerChangeModel$SessionEvent;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaControllerChangeModel;


# instance fields
.field public final event:Ljava/lang/String;

.field public final extras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaControllerChangeModel$SessionEvent;->event:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaControllerChangeModel$SessionEvent;->extras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaControllerChangeModel$SessionEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaControllerChangeModel$SessionEvent;

    iget-object v1, p1, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaControllerChangeModel$SessionEvent;->event:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaControllerChangeModel$SessionEvent;->event:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaControllerChangeModel$SessionEvent;->extras:Landroid/os/Bundle;

    iget-object p1, p1, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaControllerChangeModel$SessionEvent;->extras:Landroid/os/Bundle;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaControllerChangeModel$SessionEvent;->event:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaControllerChangeModel$SessionEvent;->extras:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Bundle;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaControllerChangeModel$SessionEvent;->extras:Landroid/os/Bundle;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SessionEvent(event="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaControllerChangeModel$SessionEvent;->event:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", extras="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
