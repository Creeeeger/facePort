.class public Landroidx/media/AudioAttributesImplBase;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/media/AudioAttributesImpl;


# instance fields
.field public mContentType:I

.field public mFlags:I

.field public mLegacyStream:I

.field public mUsage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->mContentType:I

    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 10

    const/4 v0, 0x4

    const/4 v1, 0x1

    instance-of v2, p1, Landroidx/media/AudioAttributesImplBase;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    check-cast p1, Landroidx/media/AudioAttributesImplBase;

    iget v2, p0, Landroidx/media/AudioAttributesImplBase;->mContentType:I

    iget v4, p1, Landroidx/media/AudioAttributesImplBase;->mContentType:I

    if-ne v2, v4, :cond_6

    iget v2, p0, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    iget v4, p1, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    iget v5, p1, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    const/4 v6, -0x1

    const/4 v7, 0x6

    const/4 v8, 0x7

    if-eq v5, v6, :cond_1

    move v6, v5

    goto :goto_0

    :cond_1
    iget v6, p1, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    sget v9, Landroidx/media/AudioAttributesCompat;->$r8$clinit:I

    and-int/lit8 v9, v4, 0x1

    if-ne v9, v1, :cond_2

    move v6, v8

    goto :goto_0

    :cond_2
    and-int/lit8 v9, v4, 0x4

    if-ne v9, v0, :cond_3

    move v6, v7

    goto :goto_0

    :cond_3
    packed-switch v6, :pswitch_data_0

    :pswitch_0
    const/4 v6, 0x3

    goto :goto_0

    :pswitch_1
    move v6, v1

    goto :goto_0

    :pswitch_2
    const/16 v6, 0xa

    goto :goto_0

    :pswitch_3
    const/4 v6, 0x2

    goto :goto_0

    :pswitch_4
    const/4 v6, 0x5

    goto :goto_0

    :pswitch_5
    move v6, v0

    goto :goto_0

    :pswitch_6
    const/16 v6, 0x8

    goto :goto_0

    :pswitch_7
    move v6, v3

    :goto_0
    if-ne v6, v7, :cond_4

    or-int/2addr v4, v0

    goto :goto_1

    :cond_4
    if-ne v6, v8, :cond_5

    or-int/2addr v4, v1

    :cond_5
    :goto_1
    and-int/lit16 v0, v4, 0x111

    if-ne v2, v0, :cond_6

    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    iget p1, p1, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    if-ne v0, p1, :cond_6

    iget p0, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    if-ne p0, v5, :cond_6

    goto :goto_2

    :cond_6
    move v1, v3

    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->mContentType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p0, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioAttributesCompat:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v1, " stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " derived"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, " usage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    sget v2, Landroidx/media/AudioAttributesCompat;->$r8$clinit:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v2, "unknown usage "

    invoke-static {v1, v2}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    const-string v1, "USAGE_ASSISTANT"

    goto :goto_0

    :pswitch_2
    const-string v1, "USAGE_GAME"

    goto :goto_0

    :pswitch_3
    const-string v1, "USAGE_ASSISTANCE_SONIFICATION"

    goto :goto_0

    :pswitch_4
    const-string v1, "USAGE_ASSISTANCE_NAVIGATION_GUIDANCE"

    goto :goto_0

    :pswitch_5
    const-string v1, "USAGE_ASSISTANCE_ACCESSIBILITY"

    goto :goto_0

    :pswitch_6
    const-string v1, "USAGE_NOTIFICATION_EVENT"

    goto :goto_0

    :pswitch_7
    const-string v1, "USAGE_NOTIFICATION_COMMUNICATION_DELAYED"

    goto :goto_0

    :pswitch_8
    const-string v1, "USAGE_NOTIFICATION_COMMUNICATION_INSTANT"

    goto :goto_0

    :pswitch_9
    const-string v1, "USAGE_NOTIFICATION_COMMUNICATION_REQUEST"

    goto :goto_0

    :pswitch_a
    const-string v1, "USAGE_NOTIFICATION_RINGTONE"

    goto :goto_0

    :pswitch_b
    const-string v1, "USAGE_NOTIFICATION"

    goto :goto_0

    :pswitch_c
    const-string v1, "USAGE_ALARM"

    goto :goto_0

    :pswitch_d
    const-string v1, "USAGE_VOICE_COMMUNICATION_SIGNALLING"

    goto :goto_0

    :pswitch_e
    const-string v1, "USAGE_VOICE_COMMUNICATION"

    goto :goto_0

    :pswitch_f
    const-string v1, "USAGE_MEDIA"

    goto :goto_0

    :pswitch_10
    const-string v1, "USAGE_UNKNOWN"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->mContentType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
