.class public final Lcom/android/systemui/bixby2/controller/volume/SystemVolumeController;
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

    const-string v0, "System"

    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/volume/SystemVolumeController;->streamTypeToString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getStreamType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getStreamTypeToString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/volume/SystemVolumeController;->streamTypeToString:Ljava/lang/String;

    return-object p0
.end method

.method public isStreamDisabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getRingerMode()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public volumeStreamAllowedByDnd(Landroid/app/NotificationManager$Policy;)Z
    .locals 0

    iget p0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
