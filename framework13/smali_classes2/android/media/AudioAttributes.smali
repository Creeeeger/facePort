.class public final Landroid/media/AudioAttributes;
.super Ljava/lang/Object;
.source "AudioAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioAttributes$AttrInternalContentType;,
        Landroid/media/AudioAttributes$AttributeContentType;,
        Landroid/media/AudioAttributes$AttributeUsage;,
        Landroid/media/AudioAttributes$AttributeSdkUsage;,
        Landroid/media/AudioAttributes$AttributeSystemUsage;,
        Landroid/media/AudioAttributes$Builder;,
        Landroid/media/AudioAttributes$SpatializationBehavior;,
        Landroid/media/AudioAttributes$CapturePolicy;
    }
.end annotation


# static fields
.field public static final whitelist ALLOW_CAPTURE_BY_ALL:I = 0x1

.field public static final whitelist ALLOW_CAPTURE_BY_NONE:I = 0x3

.field public static final whitelist ALLOW_CAPTURE_BY_SYSTEM:I = 0x2

.field private static final greylist-max-o ALL_PARCEL_FLAGS:I = 0x1

.field private static final greylist-max-o ATTR_PARCEL_IS_NULL_BUNDLE:I = -0x7b9

.field private static final greylist-max-o ATTR_PARCEL_IS_VALID_BUNDLE:I = 0x7bc

.field public static final whitelist CONTENT_TYPE_MOVIE:I = 0x3

.field public static final whitelist CONTENT_TYPE_MUSIC:I = 0x2

.field public static final whitelist CONTENT_TYPE_SONIFICATION:I = 0x4

.field public static final whitelist CONTENT_TYPE_SPEECH:I = 0x1

.field public static final whitelist CONTENT_TYPE_ULTRASOUND:I = 0x7cd
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CONTENT_TYPE_UNKNOWN:I = 0x0

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o FLAG_ALL:I = 0x1f7ff

.field private static final blacklist FLAG_ALL_API_SET:I = 0x1d1

.field private static final greylist-max-o FLAG_ALL_PUBLIC:I = 0x111

.field public static final whitelist FLAG_AUDIBILITY_ENFORCED:I = 0x1

.field public static final whitelist FLAG_BEACON:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_BYPASS_INTERRUPTION_POLICY:I = 0x40
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_BYPASS_MUTE:I = 0x80
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist FLAG_CALL_REDIRECTION:I = 0x10000

.field public static final blacklist FLAG_CAPTURE_PRIVATE:I = 0x2000

.field public static final blacklist FLAG_CONTENT_SPATIALIZED:I = 0x4000

.field public static final greylist-max-o FLAG_DEEP_BUFFER:I = 0x200

.field public static final whitelist FLAG_HW_AV_SYNC:I = 0x10

.field public static final whitelist FLAG_HW_HOTWORD:I = 0x20
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_LOW_LATENCY:I = 0x100

.field public static final blacklist FLAG_MUTE_HAPTIC:I = 0x800

.field public static final blacklist FLAG_NEVER_SPATIALIZE:I = 0x8000

.field public static final blacklist FLAG_NO_MEDIA_PROJECTION:I = 0x400

.field public static final blacklist FLAG_NO_SYSTEM_CAPTURE:I = 0x1000

.field public static final greylist-max-o FLAG_SCO:I = 0x4

.field public static final greylist-max-o FLAG_SECURE:I = 0x2

.field public static final greylist-max-o FLATTEN_TAGS:I = 0x1

.field public static final greylist-max-o SDK_USAGES:[I

.field public static final whitelist SEM_TAG_BIXBY:Ljava/lang/String; = "BIXBY"

.field public static final whitelist SEM_TAG_VR360:Ljava/lang/String; = "AUDIO_STREAM_VR"

.field public static final whitelist SPATIALIZATION_BEHAVIOR_AUTO:I = 0x0

.field public static final whitelist SPATIALIZATION_BEHAVIOR_NEVER:I = 0x1

.field public static final greylist-max-o SUPPRESSIBLE_ALARM:I = 0x4

.field public static final greylist-max-o SUPPRESSIBLE_CALL:I = 0x2

.field public static final greylist-max-o SUPPRESSIBLE_MEDIA:I = 0x5

.field public static final greylist-max-o SUPPRESSIBLE_NEVER:I = 0x3

.field public static final greylist-max-o SUPPRESSIBLE_NOTIFICATION:I = 0x1

.field public static final greylist-max-o SUPPRESSIBLE_SYSTEM:I = 0x6

.field public static final greylist-max-o SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

.field private static final blacklist SYSTEM_USAGE_OFFSET:I = 0x3e8

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AudioAttributes"

.field public static final whitelist USAGE_ALARM:I = 0x4

.field public static final whitelist USAGE_ANNOUNCEMENT:I = 0x3eb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USAGE_ASSISTANCE_ACCESSIBILITY:I = 0xb

.field public static final whitelist USAGE_ASSISTANCE_NAVIGATION_GUIDANCE:I = 0xc

.field public static final whitelist USAGE_ASSISTANCE_SONIFICATION:I = 0xd

.field public static final whitelist USAGE_ASSISTANT:I = 0x10

.field public static final whitelist USAGE_CALL_ASSISTANT:I = 0x11
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USAGE_EMERGENCY:I = 0x3e8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USAGE_GAME:I = 0xe

.field private static final blacklist USAGE_INVALID:I = -0x1

.field public static final whitelist USAGE_MEDIA:I = 0x1

.field public static final whitelist USAGE_NOTIFICATION:I = 0x5

.field public static final whitelist USAGE_NOTIFICATION_COMMUNICATION_DELAYED:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist USAGE_NOTIFICATION_COMMUNICATION_INSTANT:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist USAGE_NOTIFICATION_COMMUNICATION_REQUEST:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist USAGE_NOTIFICATION_EVENT:I = 0xa

.field public static final whitelist USAGE_NOTIFICATION_RINGTONE:I = 0x6

.field public static final whitelist USAGE_SAFETY:I = 0x3e9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USAGE_UNKNOWN:I = 0x0

.field public static final whitelist USAGE_VEHICLE_STATUS:I = 0x3ea
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o USAGE_VIRTUAL_SOURCE:I = 0xf

.field public static final whitelist USAGE_VOICE_COMMUNICATION:I = 0x2

.field public static final whitelist USAGE_VOICE_COMMUNICATION_SIGNALLING:I = 0x3

.field private static final blacklist sXsdStringToUsage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mBundle:Landroid/os/Bundle;

.field private greylist-max-p mContentType:I

.field private greylist-max-p mFlags:I

.field private greylist-max-r mFormattedTags:Ljava/lang/String;

.field private greylist-max-p mSource:I

.field private greylist-max-o mTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-r mUsage:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBundle(Landroid/media/AudioAttributes;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContentType(Landroid/media/AudioAttributes;)I
    .locals 0

    iget p0, p0, Landroid/media/AudioAttributes;->mContentType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlags(Landroid/media/AudioAttributes;)I
    .locals 0

    iget p0, p0, Landroid/media/AudioAttributes;->mFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSource(Landroid/media/AudioAttributes;)I
    .locals 0

    iget p0, p0, Landroid/media/AudioAttributes;->mSource:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTags(Landroid/media/AudioAttributes;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUsage(Landroid/media/AudioAttributes;)I
    .locals 0

    iget p0, p0, Landroid/media/AudioAttributes;->mUsage:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBundle(Landroid/media/AudioAttributes;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmContentType(Landroid/media/AudioAttributes;I)V
    .locals 0

    iput p1, p0, Landroid/media/AudioAttributes;->mContentType:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFlags(Landroid/media/AudioAttributes;I)V
    .locals 0

    iput p1, p0, Landroid/media/AudioAttributes;->mFlags:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFormattedTags(Landroid/media/AudioAttributes;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSource(Landroid/media/AudioAttributes;I)V
    .locals 0

    iput p1, p0, Landroid/media/AudioAttributes;->mSource:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTags(Landroid/media/AudioAttributes;Ljava/util/HashSet;)V
    .locals 0

    iput-object p1, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUsage(Landroid/media/AudioAttributes;I)V
    .locals 0

    iput p1, p0, Landroid/media/AudioAttributes;->mUsage:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smusageForStreamType(I)I
    .locals 0

    invoke-static {p0}, Landroid/media/AudioAttributes;->usageForStreamType(I)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 15

    .line 310
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    .line 311
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 312
    const/4 v3, 0x6

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 313
    const/4 v5, 0x7

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 314
    const/16 v5, 0x8

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 315
    const/16 v5, 0x9

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 316
    const/16 v5, 0xa

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 317
    const/16 v5, 0xb

    const/4 v6, 0x3

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 318
    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 319
    invoke-virtual {v0, v6, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 320
    const/4 v7, 0x4

    invoke-virtual {v0, v7, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 321
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 322
    const/16 v8, 0xc

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 323
    const/16 v9, 0xe

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 324
    const/16 v10, 0x10

    invoke-virtual {v0, v10, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 325
    const/16 v11, 0x11

    invoke-virtual {v0, v11, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 327
    const/4 v12, 0x0

    .line 1618
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 327
    invoke-virtual {v0, v12, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 328
    const/16 v12, 0xd

    invoke-virtual {v0, v12, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 335
    new-array v0, v10, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/media/AudioAttributes;->SDK_USAGES:[I

    .line 1441
    new-instance v0, Landroid/media/AudioAttributes$1;

    invoke-direct {v0}, Landroid/media/AudioAttributes$1;-><init>()V

    sput-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1615
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    .line 1618
    sget-object v14, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_UNKNOWN:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v14}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1619
    sget-object v14, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_UNKNOWN:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v14}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1620
    sget-object v13, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_MEDIA:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v13}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1621
    sget-object v2, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VOICE_COMMUNICATION:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v2}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1622
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1621
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1623
    sget-object v2, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VOICE_COMMUNICATION_SIGNALLING:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v2}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1624
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1623
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1625
    sget-object v2, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ALARM:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v2}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1626
    sget-object v2, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_NOTIFICATION:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v2}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1627
    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_NOTIFICATION_TELEPHONY_RINGTONE:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1628
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1627
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1629
    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANCE_ACCESSIBILITY:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1630
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1629
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1631
    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANCE_NAVIGATION_GUIDANCE:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1632
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1631
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1633
    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANCE_SONIFICATION:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1634
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1633
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1635
    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_GAME:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1636
    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VIRTUAL_SOURCE:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1637
    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1636
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1638
    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANT:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1639
    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_CALL_ASSISTANT:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1640
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1639
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1641
    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_EMERGENCY:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1642
    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_SAFETY:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1643
    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VEHICLE_STATUS:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1644
    const/16 v2, 0x3ea

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1643
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1645
    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ANNOUNCEMENT:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3eb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1646
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x10
    .end array-data
.end method

.method private constructor greylist-max-o <init>()V
    .locals 2

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    .line 561
    iput v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    .line 563
    const/4 v1, -0x1

    iput v1, p0, Landroid/media/AudioAttributes;->mSource:I

    .line 565
    iput v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    .line 573
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/AudioAttributes-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/AudioAttributes;-><init>()V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    .line 561
    iput v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    .line 563
    const/4 v1, -0x1

    iput v1, p0, Landroid/media/AudioAttributes;->mSource:I

    .line 565
    iput v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    .line 1413
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes;->mUsage:I

    .line 1414
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes;->mContentType:I

    .line 1415
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes;->mSource:I

    .line 1416
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes;->mFlags:I

    .line 1417
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    move v0, v2

    .line 1418
    .local v0, "hasFlattenedTags":Z
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    .line 1419
    if-eqz v0, :cond_1

    .line 1420
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    .line 1421
    iget-object v2, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1423
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1424
    .local v1, "tagsArray":[Ljava/lang/String;
    array-length v3, v1

    sub-int/2addr v3, v2

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 1425
    iget-object v2, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    aget-object v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1424
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1427
    .end local v3    # "i":I
    :cond_2
    iget-object v2, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    const-string v3, ";"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    .line 1429
    .end local v1    # "tagsArray":[Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1437
    const-string v1, "AudioAttributes"

    const-string v2, "Illegal value unmarshalling AudioAttributes, can\'t initialize bundle"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1434
    :sswitch_0
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v1, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    .line 1435
    goto :goto_2

    .line 1431
    :sswitch_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    .line 1432
    nop

    .line 1439
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7b9 -> :sswitch_1
        0x7bc -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/AudioAttributes-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/AudioAttributes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist capturePolicyToFlags(II)I
    .locals 2
    .param p0, "capturePolicy"    # I
    .param p1, "flags"    # I

    .line 1816
    packed-switch p0, :pswitch_data_0

    .line 1828
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown allow playback capture policy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1818
    :pswitch_0
    or-int/lit16 p1, p1, 0x1400

    .line 1819
    goto :goto_0

    .line 1821
    :pswitch_1
    or-int/lit16 p1, p1, 0x400

    .line 1822
    and-int/lit16 p1, p1, -0x1001

    .line 1823
    goto :goto_0

    .line 1825
    :pswitch_2
    and-int/lit16 p1, p1, -0x1401

    .line 1826
    nop

    .line 1830
    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist getSdkUsages()[I
    .locals 1

    .line 359
    sget-object v0, Landroid/media/AudioAttributes;->SDK_USAGES:[I

    return-object v0
.end method

.method private static final greylist hidden_FLAG_BYPASS_INTERRUPTION_POLICY()I
    .locals 1

    .line 1944
    const/16 v0, 0x40

    return v0
.end method

.method public static whitelist isSystemUsage(I)Z
    .locals 1
    .param p0, "usage"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1714
    const/16 v0, 0x11

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3e9

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3ea

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3eb

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static greylist toLegacyStreamType(Landroid/media/AudioAttributes;)I
    .locals 1
    .param p0, "aa"    # Landroid/media/AudioAttributes;

    .line 1748
    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/media/AudioAttributes;->toVolumeStreamType(ZLandroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method private static greylist-max-o toVolumeStreamType(ZLandroid/media/AudioAttributes;)I
    .locals 6
    .param p0, "fromGetVolumeControlStream"    # Z
    .param p1, "aa"    # Landroid/media/AudioAttributes;

    .line 1753
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 1754
    if-eqz p0, :cond_0

    .line 1755
    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    .line 1754
    :goto_0
    return v1

    .line 1757
    :cond_1
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v0

    const/4 v2, 0x4

    and-int/2addr v0, v2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_3

    .line 1758
    if-eqz p0, :cond_2

    .line 1759
    goto :goto_1

    :cond_2
    const/4 v3, 0x6

    .line 1758
    :goto_1
    return v3

    .line 1761
    :cond_3
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v0

    const/16 v4, 0x8

    and-int/2addr v0, v4

    const/4 v5, 0x3

    if-ne v0, v4, :cond_5

    .line 1762
    if-eqz p0, :cond_4

    .line 1763
    goto :goto_2

    :cond_4
    const/16 v5, 0x9

    .line 1762
    :goto_2
    return v5

    .line 1766
    :cond_5
    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 1767
    invoke-static {p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getLegacyStreamTypeForStrategyWithAudioAttributes(Landroid/media/AudioAttributes;)I

    move-result v0

    return v0

    .line 1770
    :cond_6
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1803
    if-nez p0, :cond_8

    .line 1807
    return v5

    .line 1777
    :sswitch_0
    return v1

    .line 1795
    :sswitch_1
    const/16 v0, 0xa

    return v0

    .line 1787
    :sswitch_2
    const/4 v0, 0x2

    return v0

    .line 1793
    :sswitch_3
    const/4 v0, 0x5

    return v0

    .line 1785
    :sswitch_4
    return v2

    .line 1782
    :sswitch_5
    if-eqz p0, :cond_7

    .line 1783
    goto :goto_3

    :cond_7
    move v3, v4

    .line 1782
    :goto_3
    return v3

    .line 1780
    :sswitch_6
    return v3

    .line 1775
    :sswitch_7
    return v5

    .line 1801
    :sswitch_8
    return v5

    .line 1804
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown usage value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in audio attributes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_8
        0x1 -> :sswitch_7
        0x2 -> :sswitch_6
        0x3 -> :sswitch_5
        0x4 -> :sswitch_4
        0x5 -> :sswitch_3
        0x6 -> :sswitch_2
        0x7 -> :sswitch_3
        0x8 -> :sswitch_3
        0x9 -> :sswitch_3
        0xa -> :sswitch_3
        0xb -> :sswitch_1
        0xc -> :sswitch_7
        0xd -> :sswitch_0
        0xe -> :sswitch_7
        0x10 -> :sswitch_7
        0x11 -> :sswitch_6
        0x3e8 -> :sswitch_8
        0x3e9 -> :sswitch_8
        0x3ea -> :sswitch_8
        0x3eb -> :sswitch_8
    .end sparse-switch
.end method

.method private static greylist-max-o usageForStreamType(I)I
    .locals 1
    .param p0, "streamType"    # I

    .line 1674
    const/4 v0, 0x2

    packed-switch p0, :pswitch_data_0

    .line 1698
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 1695
    :pswitch_1
    const/16 v0, 0x10

    return v0

    .line 1693
    :pswitch_2
    const/16 v0, 0xb

    return v0

    .line 1691
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 1689
    :pswitch_4
    return v0

    .line 1687
    :pswitch_5
    const/4 v0, 0x5

    return v0

    .line 1685
    :pswitch_6
    const/4 v0, 0x4

    return v0

    .line 1683
    :pswitch_7
    const/4 v0, 0x1

    return v0

    .line 1681
    :pswitch_8
    const/4 v0, 0x6

    return v0

    .line 1679
    :pswitch_9
    const/16 v0, 0xd

    return v0

    .line 1676
    :pswitch_a
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_9
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static greylist-max-o usageToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "usage"    # I

    .line 1520
    sparse-switch p0, :sswitch_data_0

    .line 1564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown usage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1562
    :sswitch_0
    const-string v0, "USAGE_ANNOUNCEMENT"

    return-object v0

    .line 1560
    :sswitch_1
    const-string v0, "USAGE_VEHICLE_STATUS"

    return-object v0

    .line 1558
    :sswitch_2
    const-string v0, "USAGE_SAFETY"

    return-object v0

    .line 1556
    :sswitch_3
    const-string v0, "USAGE_EMERGENCY"

    return-object v0

    .line 1554
    :sswitch_4
    const-string v0, "USAGE_CALL_ASSISTANT"

    return-object v0

    .line 1552
    :sswitch_5
    const-string v0, "USAGE_ASSISTANT"

    return-object v0

    .line 1550
    :sswitch_6
    const-string v0, "USAGE_GAME"

    return-object v0

    .line 1548
    :sswitch_7
    const-string v0, "USAGE_ASSISTANCE_SONIFICATION"

    return-object v0

    .line 1546
    :sswitch_8
    const-string v0, "USAGE_ASSISTANCE_NAVIGATION_GUIDANCE"

    return-object v0

    .line 1544
    :sswitch_9
    const-string v0, "USAGE_ASSISTANCE_ACCESSIBILITY"

    return-object v0

    .line 1542
    :sswitch_a
    const-string v0, "USAGE_NOTIFICATION_EVENT"

    return-object v0

    .line 1540
    :sswitch_b
    const-string v0, "USAGE_NOTIFICATION_COMMUNICATION_DELAYED"

    return-object v0

    .line 1538
    :sswitch_c
    const-string v0, "USAGE_NOTIFICATION_COMMUNICATION_INSTANT"

    return-object v0

    .line 1536
    :sswitch_d
    const-string v0, "USAGE_NOTIFICATION_COMMUNICATION_REQUEST"

    return-object v0

    .line 1534
    :sswitch_e
    const-string v0, "USAGE_NOTIFICATION_RINGTONE"

    return-object v0

    .line 1532
    :sswitch_f
    const-string v0, "USAGE_NOTIFICATION"

    return-object v0

    .line 1530
    :sswitch_10
    const-string v0, "USAGE_ALARM"

    return-object v0

    .line 1528
    :sswitch_11
    const-string v0, "USAGE_VOICE_COMMUNICATION_SIGNALLING"

    return-object v0

    .line 1526
    :sswitch_12
    const-string v0, "USAGE_VOICE_COMMUNICATION"

    return-object v0

    .line 1524
    :sswitch_13
    const-string v0, "USAGE_MEDIA"

    return-object v0

    .line 1522
    :sswitch_14
    const-string v0, "USAGE_UNKNOWN"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_14
        0x1 -> :sswitch_13
        0x2 -> :sswitch_12
        0x3 -> :sswitch_11
        0x4 -> :sswitch_10
        0x5 -> :sswitch_f
        0x6 -> :sswitch_e
        0x7 -> :sswitch_d
        0x8 -> :sswitch_c
        0x9 -> :sswitch_b
        0xa -> :sswitch_a
        0xb -> :sswitch_9
        0xc -> :sswitch_8
        0xd -> :sswitch_7
        0xe -> :sswitch_6
        0x10 -> :sswitch_5
        0x11 -> :sswitch_4
        0x3e8 -> :sswitch_3
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_1
        0x3eb -> :sswitch_0
    .end sparse-switch
.end method

.method public static blacklist usageToXsdString(I)Ljava/lang/String;
    .locals 2
    .param p0, "usage"    # I

    .line 1572
    sparse-switch p0, :sswitch_data_0

    .line 1610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown usage value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioAttributes"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_UNKNOWN:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1608
    :sswitch_0
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ANNOUNCEMENT:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1606
    :sswitch_1
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VEHICLE_STATUS:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1604
    :sswitch_2
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_SAFETY:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1602
    :sswitch_3
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_EMERGENCY:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1600
    :sswitch_4
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_CALL_ASSISTANT:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1598
    :sswitch_5
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANT:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1596
    :sswitch_6
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VIRTUAL_SOURCE:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1594
    :sswitch_7
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_GAME:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1592
    :sswitch_8
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANCE_SONIFICATION:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1590
    :sswitch_9
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANCE_NAVIGATION_GUIDANCE:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1588
    :sswitch_a
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANCE_ACCESSIBILITY:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1586
    :sswitch_b
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_NOTIFICATION_TELEPHONY_RINGTONE:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1584
    :sswitch_c
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_NOTIFICATION:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1582
    :sswitch_d
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ALARM:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1580
    :sswitch_e
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VOICE_COMMUNICATION_SIGNALLING:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1578
    :sswitch_f
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VOICE_COMMUNICATION:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1576
    :sswitch_10
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_MEDIA:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1574
    :sswitch_11
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_UNKNOWN:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_11
        0x1 -> :sswitch_10
        0x2 -> :sswitch_f
        0x3 -> :sswitch_e
        0x4 -> :sswitch_d
        0x5 -> :sswitch_c
        0x6 -> :sswitch_b
        0xb -> :sswitch_a
        0xc -> :sswitch_9
        0xd -> :sswitch_8
        0xe -> :sswitch_7
        0xf -> :sswitch_6
        0x10 -> :sswitch_5
        0x11 -> :sswitch_4
        0x3e8 -> :sswitch_3
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_1
        0x3eb -> :sswitch_0
    .end sparse-switch
.end method

.method public static blacklist xsdStringToUsage(Ljava/lang/String;)I
    .locals 2
    .param p0, "xsdUsage"    # Ljava/lang/String;

    .line 1651
    sget-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1652
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1654
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Usage name not found in AudioUsage enum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioAttributes"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public whitelist areHapticChannelsMuted()Z
    .locals 1

    .line 664
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o contentTypeToString()Ljava/lang/String;
    .locals 3

    .line 1661
    iget v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    sparse-switch v0, :sswitch_data_0

    .line 1669
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown content type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioAttributes;->mContentType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1668
    :sswitch_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "CONTENT_TYPE_ULTRASOUND"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1667
    :sswitch_1
    new-instance v0, Ljava/lang/String;

    const-string v1, "CONTENT_TYPE_SONIFICATION"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1666
    :sswitch_2
    new-instance v0, Ljava/lang/String;

    const-string v1, "CONTENT_TYPE_MOVIE"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1665
    :sswitch_3
    new-instance v0, Ljava/lang/String;

    const-string v1, "CONTENT_TYPE_MUSIC"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1664
    :sswitch_4
    new-instance v0, Ljava/lang/String;

    const-string v1, "CONTENT_TYPE_SPEECH"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1663
    :sswitch_5
    new-instance v0, Ljava/lang/String;

    const-string v1, "CONTENT_TYPE_UNKNOWN"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0x4 -> :sswitch_1
        0x7cd -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 1371
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 8
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1488
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1490
    .local v0, "token":J
    iget v2, p0, Landroid/media/AudioAttributes;->mUsage:I

    const-wide v3, 0x10e00000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1491
    iget v2, p0, Landroid/media/AudioAttributes;->mContentType:I

    const-wide v3, 0x10e00000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1492
    iget v2, p0, Landroid/media/AudioAttributes;->mFlags:I

    const-wide v3, 0x10500000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1494
    iget-object v2, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 1495
    .local v5, "t":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1496
    const-string v6, ""

    if-eq v5, v6, :cond_0

    .line 1497
    const-wide v6, 0x20900000004L

    invoke-virtual {p1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1494
    .end local v5    # "t":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1502
    :cond_1
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1503
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 1458
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1459
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1461
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/media/AudioAttributes;

    .line 1463
    .local v2, "that":Landroid/media/AudioAttributes;
    iget v3, p0, Landroid/media/AudioAttributes;->mContentType:I

    iget v4, v2, Landroid/media/AudioAttributes;->mContentType:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/AudioAttributes;->mFlags:I

    iget v4, v2, Landroid/media/AudioAttributes;->mFlags:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/AudioAttributes;->mSource:I

    iget v4, v2, Landroid/media/AudioAttributes;->mSource:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/AudioAttributes;->mUsage:I

    iget v4, v2, Landroid/media/AudioAttributes;->mUsage:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    .line 1468
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1463
    :goto_0
    return v0

    .line 1459
    .end local v2    # "that":Landroid/media/AudioAttributes;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getAllFlags()I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 633
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    const v1, 0x1f7ff

    and-int/2addr v0, v1

    return v0
.end method

.method public whitelist getAllowedCapturePolicy()I
    .locals 3

    .line 717
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    and-int/lit16 v1, v0, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_0

    .line 718
    const/4 v0, 0x3

    return v0

    .line 720
    :cond_0
    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 721
    const/4 v0, 0x2

    return v0

    .line 723
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getBundle()Landroid/os/Bundle;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 643
    iget-object v0, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 644
    return-object v0

    .line 646
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public whitelist getCapturePreset()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 613
    iget v0, p0, Landroid/media/AudioAttributes;->mSource:I

    return v0
.end method

.method public whitelist getContentType()I
    .locals 1

    .line 580
    iget v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    return v0
.end method

.method public whitelist getFlags()I
    .locals 1

    .line 622
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    and-int/lit16 v0, v0, 0x111

    return v0
.end method

.method public whitelist getSpatializationBehavior()I
    .locals 2

    .line 706
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 707
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 706
    :goto_0
    return v0
.end method

.method public whitelist getSystemUsage()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 602
    iget v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    return v0
.end method

.method public greylist-max-o getTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 656
    iget-object v0, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getUsage()I
    .locals 1

    .line 588
    iget v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    invoke-static {v0}, Landroid/media/AudioAttributes;->isSystemUsage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    const/4 v0, 0x0

    return v0

    .line 591
    :cond_0
    iget v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    return v0
.end method

.method public whitelist getVolumeControlStream()I
    .locals 1

    .line 1736
    const/4 v0, 0x1

    invoke-static {v0, p0}, Landroid/media/AudioAttributes;->toVolumeStreamType(ZLandroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 1473
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/AudioAttributes;->mContentType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioAttributes;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioAttributes;->mSource:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioAttributes;->mUsage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isContentSpatialized()Z
    .locals 1

    .line 674
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isForCallRedirection()Z
    .locals 2

    .line 732
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 1478
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioAttributes: usage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1479
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->usageToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " content="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1480
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->contentTypeToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioAttributes;->mFlags:I

    .line 1481
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bundle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1483
    iget-object v2, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    if-nez v2, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1478
    return-object v0
.end method

.method public greylist-max-o usageToString()Ljava/lang/String;
    .locals 1

    .line 1507
    iget v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    invoke-static {v0}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1392
    iget v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1393
    iget v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1394
    iget v0, p0, Landroid/media/AudioAttributes;->mSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1395
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1396
    and-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1397
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_0

    .line 1398
    iget-object v0, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1399
    .local v0, "tagsArray":[Ljava/lang/String;
    iget-object v1, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1400
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .end local v0    # "tagsArray":[Ljava/lang/String;
    goto :goto_0

    .line 1401
    :cond_0
    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1402
    iget-object v0, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 1401
    :cond_1
    :goto_0
    nop

    .line 1404
    :goto_1
    iget-object v0, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_2

    .line 1405
    const/16 v0, -0x7b9

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 1407
    :cond_2
    const/16 v0, 0x7bc

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1408
    iget-object v0, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1410
    :goto_2
    return-void
.end method
