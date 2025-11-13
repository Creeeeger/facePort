.class public final Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/SessionWithPlaybackState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final isPlaybackActive:Z

.field public final session:Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/SessionWithPlaybackState;->session:Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;

    iput-boolean p2, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/SessionWithPlaybackState;->isPlaybackActive:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/SessionWithPlaybackState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/SessionWithPlaybackState;

    iget-object v1, p1, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/SessionWithPlaybackState;->session:Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;

    iget-object v3, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/SessionWithPlaybackState;->session:Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean p0, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/SessionWithPlaybackState;->isPlaybackActive:Z

    iget-boolean p1, p1, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/SessionWithPlaybackState;->isPlaybackActive:Z

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/SessionWithPlaybackState;->session:Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;

    invoke-virtual {v0}, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/SessionWithPlaybackState;->isPlaybackActive:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SessionWithPlaybackState(session="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/SessionWithPlaybackState;->session:Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isPlaybackActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/SessionWithPlaybackState;->isPlaybackActive:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
