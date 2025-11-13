.class public final Lcom/android/settingslib/volume/shared/model/AudioManagerEvent$StreamVolumeChanged;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/settingslib/volume/shared/model/StreamAudioManagerEvent;


# instance fields
.field public final audioStream:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settingslib/volume/shared/model/AudioManagerEvent$StreamVolumeChanged;->audioStream:I

    return-void
.end method

.method public synthetic constructor <init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/volume/shared/model/AudioManagerEvent$StreamVolumeChanged;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/settingslib/volume/shared/model/AudioManagerEvent$StreamVolumeChanged;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/settingslib/volume/shared/model/AudioManagerEvent$StreamVolumeChanged;

    iget p1, p1, Lcom/android/settingslib/volume/shared/model/AudioManagerEvent$StreamVolumeChanged;->audioStream:I

    sget-object v1, Lcom/android/settingslib/volume/shared/model/AudioStream;->supportedStreamTypes:Ljava/util/Set;

    iget p0, p0, Lcom/android/settingslib/volume/shared/model/AudioManagerEvent$StreamVolumeChanged;->audioStream:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final getAudioStream-2ffMKO0()I
    .locals 0

    iget p0, p0, Lcom/android/settingslib/volume/shared/model/AudioManagerEvent$StreamVolumeChanged;->audioStream:I

    return p0
.end method

.method public final hashCode()I
    .locals 1

    sget-object v0, Lcom/android/settingslib/volume/shared/model/AudioStream;->supportedStreamTypes:Ljava/util/Set;

    iget p0, p0, Lcom/android/settingslib/volume/shared/model/AudioManagerEvent$StreamVolumeChanged;->audioStream:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget p0, p0, Lcom/android/settingslib/volume/shared/model/AudioManagerEvent$StreamVolumeChanged;->audioStream:I

    invoke-static {p0}, Lcom/android/settingslib/volume/shared/model/AudioStream;->toString-impl(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "StreamVolumeChanged(audioStream="

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
