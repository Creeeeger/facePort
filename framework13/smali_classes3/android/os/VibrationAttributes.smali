.class public final Landroid/os/VibrationAttributes;
.super Ljava/lang/Object;
.source "VibrationAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/VibrationAttributes$Builder;,
        Landroid/os/VibrationAttributes$Flag;,
        Landroid/os/VibrationAttributes$Usage;,
        Landroid/os/VibrationAttributes$UsageClass;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/VibrationAttributes;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FLAG_ALL_SUPPORTED:I = 0x3

.field public static final whitelist FLAG_BYPASS_INTERRUPTION_POLICY:I = 0x1

.field public static final blacklist FLAG_BYPASS_USER_VIBRATION_INTENSITY_OFF:I = 0x2

.field public static final blacklist FLAG_INVALIDATE_SETTINGS_CACHE:I = 0x3

.field public static final blacklist FLATTEN_TAGS:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "VibrationAttributes"

.field public static final whitelist USAGE_ACCESSIBILITY:I = 0x42

.field public static final whitelist USAGE_ALARM:I = 0x11

.field public static final whitelist USAGE_CLASS_ALARM:I = 0x1

.field public static final whitelist USAGE_CLASS_FEEDBACK:I = 0x2

.field public static final whitelist USAGE_CLASS_MASK:I = 0xf

.field public static final whitelist USAGE_CLASS_MEDIA:I = 0x3

.field public static final whitelist USAGE_CLASS_UNKNOWN:I = 0x0

.field public static final whitelist USAGE_COMMUNICATION_REQUEST:I = 0x41

.field public static final blacklist USAGE_FILTER_MATCH_ALL:I = -0x1

.field public static final whitelist USAGE_HARDWARE_FEEDBACK:I = 0x32

.field public static final whitelist USAGE_MEDIA:I = 0x13

.field public static final whitelist USAGE_NOTIFICATION:I = 0x31

.field public static final whitelist USAGE_PHYSICAL_EMULATION:I = 0x22

.field public static final whitelist USAGE_RINGTONE:I = 0x21

.field public static final whitelist USAGE_TOUCH:I = 0x12

.field public static final whitelist USAGE_UNKNOWN:I


# instance fields
.field private final blacklist mFlags:I

.field private greylist-max-r mFormattedTags:Ljava/lang/String;

.field private final blacklist mOriginalAudioUsage:I

.field private blacklist mTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUsage:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFlags(Landroid/os/VibrationAttributes;)I
    .locals 0

    iget p0, p0, Landroid/os/VibrationAttributes;->mFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOriginalAudioUsage(Landroid/os/VibrationAttributes;)I
    .locals 0

    iget p0, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTags(Landroid/os/VibrationAttributes;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Landroid/os/VibrationAttributes;->mTags:Ljava/util/HashSet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUsage(Landroid/os/VibrationAttributes;)I
    .locals 0

    iget p0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFormattedTags(Landroid/os/VibrationAttributes;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/os/VibrationAttributes;->mFormattedTags:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTags(Landroid/os/VibrationAttributes;Ljava/util/HashSet;)V
    .locals 0

    iput-object p1, p0, Landroid/os/VibrationAttributes;->mTags:Ljava/util/HashSet;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 327
    new-instance v0, Landroid/os/VibrationAttributes$1;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$1;-><init>()V

    sput-object v0, Landroid/os/VibrationAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(III)V
    .locals 1
    .param p1, "usage"    # I
    .param p2, "audioUsage"    # I
    .param p3, "flags"    # I

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput p1, p0, Landroid/os/VibrationAttributes;->mUsage:I

    .line 214
    iput p2, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    .line 215
    and-int/lit8 v0, p3, 0x3

    iput v0, p0, Landroid/os/VibrationAttributes;->mFlags:I

    .line 216
    return-void
.end method

.method synthetic constructor blacklist <init>(IIILandroid/os/VibrationAttributes-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/os/VibrationAttributes;-><init>(III)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "src"    # Landroid/os/Parcel;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibrationAttributes;->mFlags:I

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 312
    .local v0, "hasFlattenedTags":Z
    :goto_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Landroid/os/VibrationAttributes;->mTags:Ljava/util/HashSet;

    .line 313
    if-eqz v0, :cond_1

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/VibrationAttributes;->mFormattedTags:Ljava/lang/String;

    .line 315
    iget-object v2, p0, Landroid/os/VibrationAttributes;->mTags:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 317
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 318
    .local v2, "tagsArray":[Ljava/lang/String;
    array-length v3, v2

    sub-int/2addr v3, v1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_2

    .line 319
    iget-object v1, p0, Landroid/os/VibrationAttributes;->mTags:Ljava/util/HashSet;

    aget-object v4, v2, v3

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 318
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 321
    .end local v3    # "i":I
    :cond_2
    iget-object v1, p0, Landroid/os/VibrationAttributes;->mTags:Ljava/util/HashSet;

    const-string v3, ";"

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/VibrationAttributes;->mFormattedTags:Ljava/lang/String;

    .line 324
    .end local v0    # "hasFlattenedTags":Z
    .end local v2    # "tagsArray":[Ljava/lang/String;
    :goto_2
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/os/VibrationAttributes-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/VibrationAttributes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static whitelist createForUsage(I)Landroid/os/VibrationAttributes;
    .locals 1
    .param p0, "usage"    # I

    .line 204
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    invoke-virtual {v0, p0}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist usageToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "usage"    # I

    .line 374
    sparse-switch p0, :sswitch_data_0

    .line 396
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

    .line 380
    :sswitch_0
    const-string v0, "ACCESSIBILITY"

    return-object v0

    .line 386
    :sswitch_1
    const-string v0, "COMMUNICATION_REQUEST"

    return-object v0

    .line 394
    :sswitch_2
    const-string v0, "HARDWARE_FEEDBACK"

    return-object v0

    .line 384
    :sswitch_3
    const-string v0, "NOTIFICATION"

    return-object v0

    .line 392
    :sswitch_4
    const-string v0, "PHYSICAL_EMULATION"

    return-object v0

    .line 382
    :sswitch_5
    const-string v0, "RINGTONE"

    return-object v0

    .line 388
    :sswitch_6
    const-string v0, "MEDIA"

    return-object v0

    .line 390
    :sswitch_7
    const-string v0, "TOUCH"

    return-object v0

    .line 378
    :sswitch_8
    const-string v0, "ALARM"

    return-object v0

    .line 376
    :sswitch_9
    const-string v0, "UNKNOWN"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_9
        0x11 -> :sswitch_8
        0x12 -> :sswitch_7
        0x13 -> :sswitch_6
        0x21 -> :sswitch_5
        0x22 -> :sswitch_4
        0x31 -> :sswitch_3
        0x32 -> :sswitch_2
        0x41 -> :sswitch_1
        0x42 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 286
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 338
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 339
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 341
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/os/VibrationAttributes;

    .line 343
    .local v2, "rhs":Landroid/os/VibrationAttributes;
    iget v3, p0, Landroid/os/VibrationAttributes;->mUsage:I

    iget v4, v2, Landroid/os/VibrationAttributes;->mUsage:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    iget v4, v2, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/os/VibrationAttributes;->mFlags:I

    iget v4, v2, Landroid/os/VibrationAttributes;->mFlags:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/os/VibrationAttributes;->mFormattedTags:Ljava/lang/String;

    iget-object v4, v2, Landroid/os/VibrationAttributes;->mFormattedTags:Ljava/lang/String;

    .line 344
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 343
    :goto_0
    return v0

    .line 339
    .end local v2    # "rhs":Landroid/os/VibrationAttributes;
    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getAudioUsage()I
    .locals 1

    .line 259
    iget v0, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    if-eqz v0, :cond_0

    .line 261
    return v0

    .line 264
    :cond_0
    iget v0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    sparse-switch v0, :sswitch_data_0

    .line 280
    const/4 v0, 0x0

    return v0

    .line 276
    :sswitch_0
    const/16 v0, 0xb

    return v0

    .line 268
    :sswitch_1
    const/4 v0, 0x2

    return v0

    .line 266
    :sswitch_2
    const/4 v0, 0x5

    return v0

    .line 270
    :sswitch_3
    const/4 v0, 0x6

    return v0

    .line 278
    :sswitch_4
    const/4 v0, 0x1

    return v0

    .line 272
    :sswitch_5
    const/16 v0, 0xd

    return v0

    .line 274
    :sswitch_6
    const/4 v0, 0x4

    return v0

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_6
        0x12 -> :sswitch_5
        0x13 -> :sswitch_4
        0x21 -> :sswitch_3
        0x31 -> :sswitch_2
        0x41 -> :sswitch_1
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist getFlags()I
    .locals 1

    .line 240
    iget v0, p0, Landroid/os/VibrationAttributes;->mFlags:I

    return v0
.end method

.method public blacklist getTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 581
    iget-object v0, p0, Landroid/os/VibrationAttributes;->mTags:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getUsage()I
    .locals 1

    .line 231
    iget v0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    return v0
.end method

.method public whitelist getUsageClass()I
    .locals 1

    .line 223
    iget v0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public blacklist hasTag(Ljava/lang/String;)Z
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .line 586
    invoke-virtual {p0}, Landroid/os/VibrationAttributes;->getTags()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 353
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/os/VibrationAttributes;->mUsage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/os/VibrationAttributes;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/os/VibrationAttributes;->mFormattedTags:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isFlagSet(I)Z
    .locals 1
    .param p1, "flag"    # I

    .line 248
    iget v0, p0, Landroid/os/VibrationAttributes;->mFlags:I

    and-int/2addr v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VibrationAttributes: Usage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 361
    invoke-virtual {p0}, Landroid/os/VibrationAttributes;->usageToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Audio Usage= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    .line 362
    invoke-static {v1}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/VibrationAttributes;->mFormattedTags:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibrationAttributes;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 360
    return-object v0
.end method

.method public blacklist usageToString()Ljava/lang/String;
    .locals 1

    .line 369
    iget v0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    invoke-static {v0}, Landroid/os/VibrationAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 291
    iget v0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    iget v0, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    iget v0, p0, Landroid/os/VibrationAttributes;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    and-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Landroid/os/VibrationAttributes;->mTags:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 298
    .local v0, "tagsArray":[Ljava/lang/String;
    iget-object v1, p0, Landroid/os/VibrationAttributes;->mTags:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 299
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .end local v0    # "tagsArray":[Ljava/lang/String;
    goto :goto_0

    .line 300
    :cond_0
    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 301
    iget-object v0, p0, Landroid/os/VibrationAttributes;->mFormattedTags:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 300
    :cond_1
    :goto_0
    nop

    .line 304
    :goto_1
    return-void
.end method
