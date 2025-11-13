.class public final Landroid/media/FadeManagerConfiguration;
.super Ljava/lang/Object;
.source "FadeManagerConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;,
        Landroid/media/FadeManagerConfiguration$Builder;,
        Landroid/media/FadeManagerConfiguration$FadeStateEnum;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/FadeManagerConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFAULT_FADE_IN_DURATION_MS:J = 0x3e8L

.field private static final blacklist DEFAULT_FADE_OUT_DURATION_MS:J = 0x7d0L

.field public static final whitelist DURATION_NOT_SET:J = 0x0L

.field public static final whitelist FADE_STATE_DISABLED:I = 0x0

.field public static final whitelist FADE_STATE_ENABLED_DEFAULT:I = 0x1

.field public static final whitelist TAG:Ljava/lang/String; = "FadeManagerConfiguration"

.field public static final whitelist VOLUME_SHAPER_SYSTEM_FADE_ID:I = 0x2


# instance fields
.field private final blacklist mAttrToFadeWrapperMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/media/AudioAttributes;",
            "Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFadeInDelayForOffendersMillis:J

.field private final blacklist mFadeInDurationMillis:J

.field private final blacklist mFadeOutDurationMillis:J

.field private final blacklist mFadeState:I

.field private final blacklist mFadeableUsages:Landroid/util/IntArray;

.field private final blacklist mUnfadeableAudioAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/AudioAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUnfadeableContentTypes:Landroid/util/IntArray;

.field private final blacklist mUnfadeablePlayerTypes:Landroid/util/IntArray;

.field private final blacklist mUnfadeableUids:Landroid/util/IntArray;

.field private final blacklist mUsageToFadeWrapperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAttrToFadeWrapperMap(Landroid/media/FadeManagerConfiguration;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Landroid/media/FadeManagerConfiguration;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFadeInDurationMillis(Landroid/media/FadeManagerConfiguration;)J
    .locals 2

    iget-wide v0, p0, Landroid/media/FadeManagerConfiguration;->mFadeInDurationMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFadeOutDurationMillis(Landroid/media/FadeManagerConfiguration;)J
    .locals 2

    iget-wide v0, p0, Landroid/media/FadeManagerConfiguration;->mFadeOutDurationMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFadeState(Landroid/media/FadeManagerConfiguration;)I
    .locals 0

    iget p0, p0, Landroid/media/FadeManagerConfiguration;->mFadeState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFadeableUsages(Landroid/media/FadeManagerConfiguration;)Landroid/util/IntArray;
    .locals 0

    iget-object p0, p0, Landroid/media/FadeManagerConfiguration;->mFadeableUsages:Landroid/util/IntArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUnfadeableAudioAttributes(Landroid/media/FadeManagerConfiguration;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableAudioAttributes:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUnfadeableContentTypes(Landroid/media/FadeManagerConfiguration;)Landroid/util/IntArray;
    .locals 0

    iget-object p0, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableContentTypes:Landroid/util/IntArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUnfadeablePlayerTypes(Landroid/media/FadeManagerConfiguration;)Landroid/util/IntArray;
    .locals 0

    iget-object p0, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeablePlayerTypes:Landroid/util/IntArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUnfadeableUids(Landroid/media/FadeManagerConfiguration;)Landroid/util/IntArray;
    .locals 0

    iget-object p0, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableUids:Landroid/util/IntArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUsageToFadeWrapperMap(Landroid/media/FadeManagerConfiguration;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Landroid/media/FadeManagerConfiguration;->mUsageToFadeWrapperMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smconvertIntegerListToIntArray(Ljava/util/List;)Landroid/util/IntArray;
    .locals 0

    invoke-static {p0}, Landroid/media/FadeManagerConfiguration;->convertIntegerListToIntArray(Ljava/util/List;)Landroid/util/IntArray;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smvalidateUsage(I)V
    .locals 0

    invoke-static {p0}, Landroid/media/FadeManagerConfiguration;->validateUsage(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/FadeManagerConfiguration$1;

    invoke-direct {v0}, Landroid/media/FadeManagerConfiguration$1;-><init>()V

    sput-object v0, Landroid/media/FadeManagerConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IJJJLandroid/util/SparseArray;Landroid/util/ArrayMap;Landroid/util/IntArray;Landroid/util/IntArray;Landroid/util/IntArray;Landroid/util/IntArray;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJJ",
            "Landroid/util/SparseArray<",
            "Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Landroid/media/AudioAttributes;",
            "Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;",
            ">;",
            "Landroid/util/IntArray;",
            "Landroid/util/IntArray;",
            "Landroid/util/IntArray;",
            "Landroid/util/IntArray;",
            "Ljava/util/List<",
            "Landroid/media/AudioAttributes;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/FadeManagerConfiguration;->mFadeState:I

    iput-wide p2, p0, Landroid/media/FadeManagerConfiguration;->mFadeOutDurationMillis:J

    iput-wide p4, p0, Landroid/media/FadeManagerConfiguration;->mFadeInDurationMillis:J

    iput-wide p6, p0, Landroid/media/FadeManagerConfiguration;->mFadeInDelayForOffendersMillis:J

    const-string v0, "Usage to fade wrapper map cannot be null"

    invoke-static {p8, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration;->mUsageToFadeWrapperMap:Landroid/util/SparseArray;

    const-string v0, "Attribute to fade wrapper map cannot be null"

    invoke-static {p9, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    const-string v0, "List of fadeable usages cannot be null"

    invoke-static {p10, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/IntArray;

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration;->mFadeableUsages:Landroid/util/IntArray;

    const-string v0, "List of unfadeable content types cannot be null"

    invoke-static {p11, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/IntArray;

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableContentTypes:Landroid/util/IntArray;

    const-string v0, "List of unfadeable player types cannot be null"

    invoke-static {p12, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/IntArray;

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeablePlayerTypes:Landroid/util/IntArray;

    const-string v0, "List of unfadeable uids cannot be null"

    invoke-static {p13, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/IntArray;

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableUids:Landroid/util/IntArray;

    const-string v0, "List of unfadeable audio attributes cannot be null"

    invoke-static {p14, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableAudioAttributes:Ljava/util/List;

    return-void
.end method

.method synthetic constructor blacklist <init>(IJJJLandroid/util/SparseArray;Landroid/util/ArrayMap;Landroid/util/IntArray;Landroid/util/IntArray;Landroid/util/IntArray;Landroid/util/IntArray;Ljava/util/List;Landroid/media/FadeManagerConfiguration-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p14}, Landroid/media/FadeManagerConfiguration;-><init>(IJJJLandroid/util/SparseArray;Landroid/util/ArrayMap;Landroid/util/IntArray;Landroid/util/IntArray;Landroid/util/IntArray;Landroid/util/IntArray;Ljava/util/List;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    sget-object v9, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->createTypedSparseArray(Landroid/os/Parcelable$Creator;)Landroid/util/SparseArray;

    move-result-object v9

    new-instance v10, Landroid/util/ArrayMap;

    invoke-direct {v10}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    const-class v12, Landroid/media/AudioAttributes;

    const-class v13, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    invoke-virtual {v1, v10, v11, v12, v13}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v14

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v14

    sget-object v14, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v15, v14}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    iput v2, v0, Landroid/media/FadeManagerConfiguration;->mFadeState:I

    iput-wide v3, v0, Landroid/media/FadeManagerConfiguration;->mFadeOutDurationMillis:J

    iput-wide v5, v0, Landroid/media/FadeManagerConfiguration;->mFadeInDurationMillis:J

    iput-wide v7, v0, Landroid/media/FadeManagerConfiguration;->mFadeInDelayForOffendersMillis:J

    iput-object v9, v0, Landroid/media/FadeManagerConfiguration;->mUsageToFadeWrapperMap:Landroid/util/SparseArray;

    iput-object v10, v0, Landroid/media/FadeManagerConfiguration;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    invoke-static {v11}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object v14

    iput-object v14, v0, Landroid/media/FadeManagerConfiguration;->mFadeableUsages:Landroid/util/IntArray;

    invoke-static {v12}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object v14

    iput-object v14, v0, Landroid/media/FadeManagerConfiguration;->mUnfadeableContentTypes:Landroid/util/IntArray;

    invoke-static {v13}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object v14

    iput-object v14, v0, Landroid/media/FadeManagerConfiguration;->mUnfadeablePlayerTypes:Landroid/util/IntArray;

    invoke-static/range {v16 .. v16}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object v14

    iput-object v14, v0, Landroid/media/FadeManagerConfiguration;->mUnfadeableUids:Landroid/util/IntArray;

    iput-object v15, v0, Landroid/media/FadeManagerConfiguration;->mUnfadeableAudioAttributes:Ljava/util/List;

    return-void
.end method

.method private static blacklist convertIntArrayToIntegerList(Landroid/util/IntArray;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IntArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/util/IntArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/util/IntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static blacklist convertIntegerListToIntArray(Ljava/util/List;)Landroid/util/IntArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/util/IntArray;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/IntArray;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/IntArray;->add(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private blacklist ensureFadingIsEnabled()V
    .locals 2

    invoke-virtual {p0}, Landroid/media/FadeManagerConfiguration;->isFadeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method call not allowed when fade is disabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist fadeStateToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown fade state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "FADE_STATE_ENABLED_DEFAULT"

    return-object v0

    :pswitch_1
    const-string v0, "FADE_STATE_DISABLED"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist getAudioAttributesInternal()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioAttributes;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/media/FadeManagerConfiguration;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/media/FadeManagerConfiguration;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/media/FadeManagerConfiguration;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioAttributes;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static whitelist getDefaultFadeInDurationMillis()J
    .locals 2

    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public static whitelist getDefaultFadeOutDurationMillis()J
    .locals 2

    const-wide/16 v0, 0x7d0

    return-wide v0
.end method

.method private blacklist getDurationForVolumeShaperConfig(Landroid/media/VolumeShaper$Configuration;)J
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getDuration()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method private blacklist getVolumeShaperConfigFromWrapper(Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;Z)Landroid/media/VolumeShaper$Configuration;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->getFadeInVolShaperConfig()Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p1}, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->getFadeOutVolShaperConfig()Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist isUsageValid(I)Z
    .locals 1

    invoke-static {p0}, Landroid/media/AudioAttributes;->isSdkUsage(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/media/AudioAttributes;->isSystemUsage(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/media/AudioAttributes;->isHiddenUsage(I)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method private static blacklist validateUsage(I)V
    .locals 3

    invoke-static {p0}, Landroid/media/FadeManagerConfiguration;->isUsageValid(I)Z

    move-result v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Invalid usage: %s"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/media/FadeManagerConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/media/FadeManagerConfiguration;

    iget-object v3, p0, Landroid/media/FadeManagerConfiguration;->mUsageToFadeWrapperMap:Landroid/util/SparseArray;

    iget-object v4, v1, Landroid/media/FadeManagerConfiguration;->mUsageToFadeWrapperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->contentEquals(Landroid/util/SparseArray;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/media/FadeManagerConfiguration;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    iget-object v4, v1, Landroid/media/FadeManagerConfiguration;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/media/FadeManagerConfiguration;->mFadeableUsages:Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    iget-object v4, v1, Landroid/media/FadeManagerConfiguration;->mFadeableUsages:Landroid/util/IntArray;

    invoke-virtual {v4}, Landroid/util/IntArray;->toArray()[I

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableContentTypes:Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    iget-object v4, v1, Landroid/media/FadeManagerConfiguration;->mUnfadeableContentTypes:Landroid/util/IntArray;

    invoke-virtual {v4}, Landroid/util/IntArray;->toArray()[I

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeablePlayerTypes:Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    iget-object v4, v1, Landroid/media/FadeManagerConfiguration;->mUnfadeablePlayerTypes:Landroid/util/IntArray;

    invoke-virtual {v4}, Landroid/util/IntArray;->toArray()[I

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableUids:Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    iget-object v4, v1, Landroid/media/FadeManagerConfiguration;->mUnfadeableUids:Landroid/util/IntArray;

    invoke-virtual {v4}, Landroid/util/IntArray;->toArray()[I

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableAudioAttributes:Ljava/util/List;

    iget-object v4, v1, Landroid/media/FadeManagerConfiguration;->mUnfadeableAudioAttributes:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/media/FadeManagerConfiguration;->mFadeState:I

    iget v4, v1, Landroid/media/FadeManagerConfiguration;->mFadeState:I

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Landroid/media/FadeManagerConfiguration;->mFadeOutDurationMillis:J

    iget-wide v5, v1, Landroid/media/FadeManagerConfiguration;->mFadeOutDurationMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/media/FadeManagerConfiguration;->mFadeInDurationMillis:J

    iget-wide v5, v1, Landroid/media/FadeManagerConfiguration;->mFadeInDurationMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/media/FadeManagerConfiguration;->mFadeInDelayForOffendersMillis:J

    iget-wide v5, v1, Landroid/media/FadeManagerConfiguration;->mFadeInDelayForOffendersMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public whitelist getAudioAttributesWithVolumeShaperConfigs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioAttributes;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/FadeManagerConfiguration;->getAudioAttributesInternal()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFadeInDelayForOffenders()J
    .locals 2

    iget-wide v0, p0, Landroid/media/FadeManagerConfiguration;->mFadeInDelayForOffendersMillis:J

    return-wide v0
.end method

.method public whitelist getFadeInDurationForAudioAttributes(Landroid/media/AudioAttributes;)J
    .locals 2

    invoke-direct {p0}, Landroid/media/FadeManagerConfiguration;->ensureFadingIsEnabled()V

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/media/FadeManagerConfiguration;->getVolumeShaperConfigFromWrapper(Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;Z)Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/FadeManagerConfiguration;->getDurationForVolumeShaperConfig(Landroid/media/VolumeShaper$Configuration;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getFadeInDurationForUsage(I)J
    .locals 2

    invoke-direct {p0}, Landroid/media/FadeManagerConfiguration;->ensureFadingIsEnabled()V

    invoke-static {p1}, Landroid/media/FadeManagerConfiguration;->validateUsage(I)V

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mUsageToFadeWrapperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/media/FadeManagerConfiguration;->getVolumeShaperConfigFromWrapper(Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;Z)Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/FadeManagerConfiguration;->getDurationForVolumeShaperConfig(Landroid/media/VolumeShaper$Configuration;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getFadeInVolumeShaperConfigForAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/VolumeShaper$Configuration;
    .locals 2

    const-string v0, "Audio attributes cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/media/FadeManagerConfiguration;->ensureFadingIsEnabled()V

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/media/FadeManagerConfiguration;->getVolumeShaperConfigFromWrapper(Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;Z)Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFadeInVolumeShaperConfigForUsage(I)Landroid/media/VolumeShaper$Configuration;
    .locals 2

    invoke-direct {p0}, Landroid/media/FadeManagerConfiguration;->ensureFadingIsEnabled()V

    invoke-static {p1}, Landroid/media/FadeManagerConfiguration;->validateUsage(I)V

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mUsageToFadeWrapperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/media/FadeManagerConfiguration;->getVolumeShaperConfigFromWrapper(Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;Z)Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFadeOutDurationForAudioAttributes(Landroid/media/AudioAttributes;)J
    .locals 2

    invoke-direct {p0}, Landroid/media/FadeManagerConfiguration;->ensureFadingIsEnabled()V

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/FadeManagerConfiguration;->getVolumeShaperConfigFromWrapper(Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;Z)Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/FadeManagerConfiguration;->getDurationForVolumeShaperConfig(Landroid/media/VolumeShaper$Configuration;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getFadeOutDurationForUsage(I)J
    .locals 2

    invoke-direct {p0}, Landroid/media/FadeManagerConfiguration;->ensureFadingIsEnabled()V

    invoke-static {p1}, Landroid/media/FadeManagerConfiguration;->validateUsage(I)V

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mUsageToFadeWrapperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/FadeManagerConfiguration;->getVolumeShaperConfigFromWrapper(Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;Z)Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/FadeManagerConfiguration;->getDurationForVolumeShaperConfig(Landroid/media/VolumeShaper$Configuration;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getFadeOutVolumeShaperConfigForAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/VolumeShaper$Configuration;
    .locals 2

    const-string v0, "Audio attributes cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/media/FadeManagerConfiguration;->ensureFadingIsEnabled()V

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/FadeManagerConfiguration;->getVolumeShaperConfigFromWrapper(Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;Z)Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFadeOutVolumeShaperConfigForUsage(I)Landroid/media/VolumeShaper$Configuration;
    .locals 2

    invoke-direct {p0}, Landroid/media/FadeManagerConfiguration;->ensureFadingIsEnabled()V

    invoke-static {p1}, Landroid/media/FadeManagerConfiguration;->validateUsage(I)V

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mUsageToFadeWrapperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/FadeManagerConfiguration;->getVolumeShaperConfigFromWrapper(Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;Z)Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFadeState()I
    .locals 1

    iget v0, p0, Landroid/media/FadeManagerConfiguration;->mFadeState:I

    return v0
.end method

.method public whitelist getFadeableUsages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/FadeManagerConfiguration;->ensureFadingIsEnabled()V

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mFadeableUsages:Landroid/util/IntArray;

    invoke-static {v0}, Landroid/media/FadeManagerConfiguration;->convertIntArrayToIntegerList(Landroid/util/IntArray;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getUnfadeableAudioAttributes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioAttributes;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/FadeManagerConfiguration;->ensureFadingIsEnabled()V

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableAudioAttributes:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getUnfadeableContentTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/FadeManagerConfiguration;->ensureFadingIsEnabled()V

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableContentTypes:Landroid/util/IntArray;

    invoke-static {v0}, Landroid/media/FadeManagerConfiguration;->convertIntArrayToIntegerList(Landroid/util/IntArray;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getUnfadeablePlayerTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/FadeManagerConfiguration;->ensureFadingIsEnabled()V

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeablePlayerTypes:Landroid/util/IntArray;

    invoke-static {v0}, Landroid/media/FadeManagerConfiguration;->convertIntArrayToIntegerList(Landroid/util/IntArray;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getUnfadeableUids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/FadeManagerConfiguration;->ensureFadingIsEnabled()V

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableUids:Landroid/util/IntArray;

    invoke-static {v0}, Landroid/media/FadeManagerConfiguration;->convertIntArrayToIntegerList(Landroid/util/IntArray;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 12

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mUsageToFadeWrapperMap:Landroid/util/SparseArray;

    iget-object v1, p0, Landroid/media/FadeManagerConfiguration;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    iget-object v2, p0, Landroid/media/FadeManagerConfiguration;->mFadeableUsages:Landroid/util/IntArray;

    iget-object v3, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableContentTypes:Landroid/util/IntArray;

    iget-object v4, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeablePlayerTypes:Landroid/util/IntArray;

    iget-object v5, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableAudioAttributes:Ljava/util/List;

    iget-object v6, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableUids:Landroid/util/IntArray;

    iget v7, p0, Landroid/media/FadeManagerConfiguration;->mFadeState:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-wide v8, p0, Landroid/media/FadeManagerConfiguration;->mFadeOutDurationMillis:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-wide v9, p0, Landroid/media/FadeManagerConfiguration;->mFadeInDurationMillis:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-wide v10, p0, Landroid/media/FadeManagerConfiguration;->mFadeInDelayForOffendersMillis:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isAudioAttributesUnfadeable(Landroid/media/AudioAttributes;)Z
    .locals 1

    const-string v0, "Audio attributes cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/media/FadeManagerConfiguration;->isFadeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableAudioAttributes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist isContentTypeUnfadeable(I)Z
    .locals 1

    invoke-virtual {p0}, Landroid/media/FadeManagerConfiguration;->isFadeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableContentTypes:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->contains(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isFadeEnabled()Z
    .locals 1

    iget v0, p0, Landroid/media/FadeManagerConfiguration;->mFadeState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isPlayerTypeUnfadeable(I)Z
    .locals 1

    invoke-virtual {p0}, Landroid/media/FadeManagerConfiguration;->isFadeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeablePlayerTypes:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->contains(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isUidUnfadeable(I)Z
    .locals 1

    invoke-virtual {p0}, Landroid/media/FadeManagerConfiguration;->isFadeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableUids:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->contains(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isUsageFadeable(I)Z
    .locals 1

    invoke-virtual {p0}, Landroid/media/FadeManagerConfiguration;->isFadeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mFadeableUsages:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->contains(I)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FadeManagerConfiguration { fade state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/FadeManagerConfiguration;->mFadeState:I

    invoke-static {v1}, Landroid/media/FadeManagerConfiguration;->fadeStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fade out duration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/FadeManagerConfiguration;->mFadeOutDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fade in duration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/FadeManagerConfiguration;->mFadeInDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offenders fade in delay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/FadeManagerConfiguration;->mFadeInDelayForOffendersMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fade volume shapers for audio attributes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/FadeManagerConfiguration;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fadeable usages = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/FadeManagerConfiguration;->mFadeableUsages:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", unfadeable content types = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableContentTypes:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", unfadeable player types = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeablePlayerTypes:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", unfadeable uids = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableUids:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", unfadeable audio attributes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableAudioAttributes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/media/FadeManagerConfiguration;->mFadeState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/media/FadeManagerConfiguration;->mFadeOutDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/media/FadeManagerConfiguration;->mFadeInDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/media/FadeManagerConfiguration;->mFadeInDelayForOffendersMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mUsageToFadeWrapperMap:Landroid/util/SparseArray;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedSparseArray(Landroid/util/SparseArray;I)V

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mFadeableUsages:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableContentTypes:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeablePlayerTypes:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableUids:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableAudioAttributes:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    return-void
.end method
