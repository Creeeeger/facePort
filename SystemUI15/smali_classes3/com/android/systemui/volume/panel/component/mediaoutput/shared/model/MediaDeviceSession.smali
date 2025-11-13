.class public final Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final appLabel:Ljava/lang/CharSequence;

.field public final canAdjustVolume:Z

.field public final packageName:Ljava/lang/String;

.field public final sessionToken:Landroid/media/session/MediaSession$Token;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;->appLabel:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;->sessionToken:Landroid/media/session/MediaSession$Token;

    iput-boolean p4, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;->canAdjustVolume:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;

    iget-object v1, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;->appLabel:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;->appLabel:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;->sessionToken:Landroid/media/session/MediaSession$Token;

    iget-object v3, p1, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;->sessionToken:Landroid/media/session/MediaSession$Token;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean p0, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;->canAdjustVolume:Z

    iget-boolean p1, p1, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;->canAdjustVolume:Z

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;->appLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;->sessionToken:Landroid/media/session/MediaSession$Token;

    invoke-virtual {v2}, Landroid/media/session/MediaSession$Token;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean p0, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;->canAdjustVolume:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;->appLabel:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;->sessionToken:Landroid/media/session/MediaSession$Token;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MediaDeviceSession(appLabel="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", packageName="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", sessionToken="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", canAdjustVolume="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;->canAdjustVolume:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
