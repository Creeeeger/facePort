.class public final Lcom/android/systemui/bixby2/controller/volume/RingVolumeController;
.super Lcom/android/systemui/bixby2/controller/volume/VolumeType;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I


# instance fields
.field private final streamTypeToString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;-><init>()V

    const-string v0, "Ringtone"

    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/volume/RingVolumeController;->streamTypeToString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->isVoiceCapable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    return p0
.end method

.method public getStatusCode()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->isVoiceCapable()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "success"

    goto :goto_0

    :cond_0
    const-string p0, "DoNotSupportCall"

    :goto_0
    return-object p0
.end method

.method public getStreamType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getStreamTypeToString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/volume/RingVolumeController;->streamTypeToString:Ljava/lang/String;

    return-object p0
.end method

.method public volumeStreamAllowedByDnd(Landroid/app/NotificationManager$Policy;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
