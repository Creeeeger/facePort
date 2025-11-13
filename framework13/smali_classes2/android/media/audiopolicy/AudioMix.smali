.class public Landroid/media/audiopolicy/AudioMix;
.super Ljava/lang/Object;
.source "AudioMix.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiopolicy/AudioMix$Builder;,
        Landroid/media/audiopolicy/AudioMix$RouteFlags;
    }
.end annotation


# static fields
.field private static final greylist-max-o CALLBACK_FLAGS_ALL:I = 0x1

.field public static final greylist-max-o CALLBACK_FLAG_NOTIFY_ACTIVITY:I = 0x1

.field public static final whitelist MIX_STATE_DISABLED:I = -0x1

.field public static final whitelist MIX_STATE_IDLE:I = 0x0

.field public static final whitelist MIX_STATE_MIXING:I = 0x1

.field public static final greylist-max-o MIX_TYPE_INVALID:I = -0x1

.field public static final greylist-max-o MIX_TYPE_PLAYERS:I = 0x0

.field public static final greylist-max-o MIX_TYPE_RECORDERS:I = 0x1

.field private static final blacklist PRIVILEDGED_CAPTURE_MAX_BYTES_PER_SAMPLE:I = 0x2

.field private static final blacklist PRIVILEDGED_CAPTURE_MAX_CHANNEL_NUMBER:I = 0x1

.field private static final blacklist PRIVILEDGED_CAPTURE_MAX_SAMPLE_RATE:I = 0x3e80

.field public static final whitelist ROUTE_FLAG_LOOP_BACK:I = 0x2

.field public static final blacklist ROUTE_FLAG_LOOP_BACK_RENDER:I = 0x3

.field public static final whitelist ROUTE_FLAG_RENDER:I = 0x1

.field private static final greylist-max-o ROUTE_FLAG_SUPPORTED:I = 0x3


# instance fields
.field greylist-max-r mCallbackFlags:I

.field greylist-max-r mDeviceAddress:Ljava/lang/String;

.field final greylist-max-r mDeviceSystemType:I

.field private greylist-max-r mFormat:Landroid/media/AudioFormat;

.field greylist-max-o mMixState:I

.field private greylist-max-r mMixType:I

.field private greylist-max-r mRouteFlags:I

.field private greylist-max-r mRule:Landroid/media/audiopolicy/AudioMixingRule;


# direct methods
.method private constructor greylist-max-o <init>(Landroid/media/audiopolicy/AudioMixingRule;Landroid/media/AudioFormat;IIILjava/lang/String;)V
    .locals 2
    .param p1, "rule"    # Landroid/media/audiopolicy/AudioMixingRule;
    .param p2, "format"    # Landroid/media/AudioFormat;
    .param p3, "routeFlags"    # I
    .param p4, "callbackFlags"    # I
    .param p5, "deviceType"    # I
    .param p6, "deviceAddress"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/audiopolicy/AudioMix;->mMixType:I

    .line 48
    iput v0, p0, Landroid/media/audiopolicy/AudioMix;->mMixState:I

    .line 63
    iput-object p1, p0, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    .line 64
    iput-object p2, p0, Landroid/media/audiopolicy/AudioMix;->mFormat:Landroid/media/AudioFormat;

    .line 65
    iput p3, p0, Landroid/media/audiopolicy/AudioMix;->mRouteFlags:I

    .line 66
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMixingRule;->getTargetMixType()I

    move-result v0

    iput v0, p0, Landroid/media/audiopolicy/AudioMix;->mMixType:I

    .line 67
    iput p4, p0, Landroid/media/audiopolicy/AudioMix;->mCallbackFlags:I

    .line 68
    iput p5, p0, Landroid/media/audiopolicy/AudioMix;->mDeviceSystemType:I

    .line 69
    if-nez p6, :cond_0

    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, p6

    :goto_0
    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix;->mDeviceAddress:Ljava/lang/String;

    .line 70
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/audiopolicy/AudioMixingRule;Landroid/media/AudioFormat;IIILjava/lang/String;Landroid/media/audiopolicy/AudioMix-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/media/audiopolicy/AudioMix;-><init>(Landroid/media/audiopolicy/AudioMixingRule;Landroid/media/AudioFormat;IIILjava/lang/String;)V

    return-void
.end method

.method public static blacklist canBeUsedForPrivilegedMediaCapture(Landroid/media/AudioFormat;)Ljava/lang/String;
    .locals 7
    .param p0, "format"    # Landroid/media/AudioFormat;

    .line 222
    invoke-virtual {p0}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v0

    .line 223
    .local v0, "sampleRate":I
    const/16 v1, 0x3e80

    const-string v2, " can not be over "

    if-gt v0, v1, :cond_6

    if-gtz v0, :cond_0

    goto/16 :goto_2

    .line 227
    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v1

    .line 228
    .local v1, "channelCount":I
    const/4 v3, 0x1

    if-gt v1, v3, :cond_5

    if-gtz v1, :cond_1

    goto :goto_1

    .line 232
    :cond_1
    invoke-virtual {p0}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v3

    .line 233
    .local v3, "encoding":I
    invoke-static {v3}, Landroid/media/AudioFormat;->isPublicEncoding(I)Z

    move-result v4

    const-string v5, "Privileged audio capture encoding "

    if-eqz v4, :cond_4

    invoke-static {v3}, Landroid/media/AudioFormat;->isEncodingLinearPcm(I)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 236
    :cond_2
    invoke-static {v3}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v4

    const/4 v6, 0x2

    if-le v4, v6, :cond_3

    .line 237
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " bytes per sample"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 240
    :cond_3
    const/4 v2, 0x0

    return-object v2

    .line 234
    :cond_4
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "is not linear"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 229
    .end local v3    # "encoding":I
    :cond_5
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Privileged audio capture channel count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 224
    .end local v1    # "channelCount":I
    :cond_6
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Privileged audio capture sample rate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "kHz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist containsMatchAttributeRuleForUsage(I)Z
    .locals 1
    .param p1, "usage"    # I

    .line 201
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    invoke-virtual {v0, p1}, Landroid/media/audiopolicy/AudioMixingRule;->containsMatchAttributeRuleForUsage(I)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 251
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 252
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 254
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/media/audiopolicy/AudioMix;

    .line 255
    .local v2, "that":Landroid/media/audiopolicy/AudioMix;
    iget v3, p0, Landroid/media/audiopolicy/AudioMix;->mRouteFlags:I

    iget v4, v2, Landroid/media/audiopolicy/AudioMix;->mRouteFlags:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    iget-object v4, v2, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/audiopolicy/AudioMix;->mMixType:I

    iget v4, v2, Landroid/media/audiopolicy/AudioMix;->mMixType:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/media/audiopolicy/AudioMix;->mFormat:Landroid/media/AudioFormat;

    iget-object v4, v2, Landroid/media/audiopolicy/AudioMix;->mFormat:Landroid/media/AudioFormat;

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 252
    .end local v2    # "that":Landroid/media/audiopolicy/AudioMix;
    :cond_3
    :goto_1
    return v1
.end method

.method public greylist-max-o getFormat()Landroid/media/AudioFormat;
    .locals 1

    .line 167
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix;->mFormat:Landroid/media/AudioFormat;

    return-object v0
.end method

.method public whitelist getMixState()I
    .locals 1

    .line 156
    iget v0, p0, Landroid/media/audiopolicy/AudioMix;->mMixState:I

    return v0
.end method

.method public greylist-max-o getMixType()I
    .locals 1

    .line 177
    iget v0, p0, Landroid/media/audiopolicy/AudioMix;->mMixType:I

    return v0
.end method

.method public greylist-max-o getRegistration()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix;->mDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getRouteFlags()I
    .locals 1

    .line 162
    iget v0, p0, Landroid/media/audiopolicy/AudioMix;->mRouteFlags:I

    return v0
.end method

.method public greylist-max-o getRule()Landroid/media/audiopolicy/AudioMixingRule;
    .locals 1

    .line 172
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 264
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/audiopolicy/AudioMix;->mRouteFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/audiopolicy/AudioMix;->mMixType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/audiopolicy/AudioMix;->mFormat:Landroid/media/AudioFormat;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public greylist-max-o isAffectingUsage(I)Z
    .locals 1
    .param p1, "usage"    # I

    .line 191
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    invoke-virtual {v0, p1}, Landroid/media/audiopolicy/AudioMixingRule;->isAffectingUsage(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isForCallRedirection()Z
    .locals 1

    .line 245
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioMixingRule;->isForCallRedirection()Z

    move-result v0

    return v0
.end method

.method public blacklist isRoutedToDevice(ILjava/lang/String;)Z
    .locals 3
    .param p1, "deviceType"    # I
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .line 206
    iget v0, p0, Landroid/media/audiopolicy/AudioMix;->mRouteFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 207
    return v2

    .line 209
    :cond_0
    iget v0, p0, Landroid/media/audiopolicy/AudioMix;->mDeviceSystemType:I

    if-eq p1, v0, :cond_1

    .line 210
    return v2

    .line 212
    :cond_1
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 213
    return v2

    .line 215
    :cond_2
    return v1
.end method

.method greylist-max-o setRegistration(Ljava/lang/String;)V
    .locals 0
    .param p1, "regId"    # Ljava/lang/String;

    .line 181
    iput-object p1, p0, Landroid/media/audiopolicy/AudioMix;->mDeviceAddress:Ljava/lang/String;

    .line 182
    return-void
.end method
