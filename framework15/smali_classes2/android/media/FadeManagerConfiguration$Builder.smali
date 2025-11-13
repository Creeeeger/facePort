.class public final Landroid/media/FadeManagerConfiguration$Builder;
.super Ljava/lang/Object;
.source "FadeManagerConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/FadeManagerConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final blacklist DEFAULT_DELAY_FADE_IN_OFFENDERS_MS:J = 0x7d0L

.field private static final blacklist DEFAULT_FADEABLE_USAGES:Landroid/util/IntArray;

.field private static final blacklist DEFAULT_UNFADEABLE_CONTENT_TYPES:Landroid/util/IntArray;

.field private static final blacklist DEFAULT_UNFADEABLE_PLAYER_TYPES:Landroid/util/IntArray;

.field private static final blacklist INVALID_INDEX:I = -0x1

.field private static final blacklist IS_BUILDER_USED_FIELD_SET:J = 0x1L

.field private static final blacklist IS_FADEABLE_USAGES_FIELD_SET:J = 0x2L

.field private static final blacklist IS_UNFADEABLE_CONTENT_TYPE_FIELD_SET:J = 0x4L


# instance fields
.field private blacklist mAttrToFadeWrapperMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/media/AudioAttributes;",
            "Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mBuilderFieldsSet:J

.field private blacklist mFadeInDelayForOffendersMillis:J

.field private blacklist mFadeInDurationMillis:J

.field private blacklist mFadeOutDurationMillis:J

.field private blacklist mFadeState:I

.field private blacklist mFadeableUsages:Landroid/util/IntArray;

.field private blacklist mUnfadeableAudioAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/AudioAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUnfadeableContentTypes:Landroid/util/IntArray;

.field private blacklist mUnfadeablePlayerTypes:Landroid/util/IntArray;

.field private blacklist mUnfadeableUids:Landroid/util/IntArray;

.field private blacklist mUsageToFadeWrapperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const/16 v0, 0xd

    const/4 v1, 0x3

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object v0

    sput-object v0, Landroid/media/FadeManagerConfiguration$Builder;->DEFAULT_UNFADEABLE_PLAYER_TYPES:Landroid/util/IntArray;

    const/4 v0, 0x1

    filled-new-array {v0}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object v1

    sput-object v1, Landroid/media/FadeManagerConfiguration$Builder;->DEFAULT_UNFADEABLE_CONTENT_TYPES:Landroid/util/IntArray;

    const/16 v1, 0xe

    filled-new-array {v1, v0}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object v0

    sput-object v0, Landroid/media/FadeManagerConfiguration$Builder;->DEFAULT_FADEABLE_USAGES:Landroid/util/IntArray;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeState:I

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeInDelayForOffendersMillis:J

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUsageToFadeWrapperMap:Landroid/util/SparseArray;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/media/FadeManagerConfiguration$Builder;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/IntArray;

    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    iput-object v2, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeableUsages:Landroid/util/IntArray;

    new-instance v2, Landroid/util/IntArray;

    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    iput-object v2, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableContentTypes:Landroid/util/IntArray;

    sget-object v2, Landroid/media/FadeManagerConfiguration$Builder;->DEFAULT_UNFADEABLE_PLAYER_TYPES:Landroid/util/IntArray;

    iput-object v2, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeablePlayerTypes:Landroid/util/IntArray;

    new-instance v2, Landroid/util/IntArray;

    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    iput-object v2, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableUids:Landroid/util/IntArray;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableAudioAttributes:Ljava/util/List;

    iput-wide v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeOutDurationMillis:J

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeInDurationMillis:J

    return-void
.end method

.method public constructor whitelist <init>(JJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeState:I

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeInDelayForOffendersMillis:J

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUsageToFadeWrapperMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeableUsages:Landroid/util/IntArray;

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableContentTypes:Landroid/util/IntArray;

    sget-object v0, Landroid/media/FadeManagerConfiguration$Builder;->DEFAULT_UNFADEABLE_PLAYER_TYPES:Landroid/util/IntArray;

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeablePlayerTypes:Landroid/util/IntArray;

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableUids:Landroid/util/IntArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableAudioAttributes:Ljava/util/List;

    iput-wide p1, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeOutDurationMillis:J

    iput-wide p3, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeInDurationMillis:J

    return-void
.end method

.method public constructor whitelist <init>(Landroid/media/FadeManagerConfiguration;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeState:I

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeInDelayForOffendersMillis:J

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUsageToFadeWrapperMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeableUsages:Landroid/util/IntArray;

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableContentTypes:Landroid/util/IntArray;

    sget-object v0, Landroid/media/FadeManagerConfiguration$Builder;->DEFAULT_UNFADEABLE_PLAYER_TYPES:Landroid/util/IntArray;

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeablePlayerTypes:Landroid/util/IntArray;

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableUids:Landroid/util/IntArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableAudioAttributes:Ljava/util/List;

    invoke-static {p1}, Landroid/media/FadeManagerConfiguration;->-$$Nest$fgetmFadeState(Landroid/media/FadeManagerConfiguration;)I

    move-result v0

    iput v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeState:I

    invoke-static {p1}, Landroid/media/FadeManagerConfiguration;->-$$Nest$fgetmUsageToFadeWrapperMap(Landroid/media/FadeManagerConfiguration;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/FadeManagerConfiguration$Builder;->copyUsageToFadeWrapperMapInternal(Landroid/util/SparseArray;)V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-static {p1}, Landroid/media/FadeManagerConfiguration;->-$$Nest$fgetmAttrToFadeWrapperMap(Landroid/media/FadeManagerConfiguration;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Landroid/media/FadeManagerConfiguration;->-$$Nest$fgetmFadeableUsages(Landroid/media/FadeManagerConfiguration;)Landroid/util/IntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IntArray;->clone()Landroid/util/IntArray;

    move-result-object v0

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeableUsages:Landroid/util/IntArray;

    const-wide/16 v0, 0x2

    invoke-direct {p0, v0, v1}, Landroid/media/FadeManagerConfiguration$Builder;->setFlag(J)V

    invoke-static {p1}, Landroid/media/FadeManagerConfiguration;->-$$Nest$fgetmUnfadeableContentTypes(Landroid/media/FadeManagerConfiguration;)Landroid/util/IntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IntArray;->clone()Landroid/util/IntArray;

    move-result-object v0

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableContentTypes:Landroid/util/IntArray;

    const-wide/16 v0, 0x4

    invoke-direct {p0, v0, v1}, Landroid/media/FadeManagerConfiguration$Builder;->setFlag(J)V

    invoke-static {p1}, Landroid/media/FadeManagerConfiguration;->-$$Nest$fgetmUnfadeablePlayerTypes(Landroid/media/FadeManagerConfiguration;)Landroid/util/IntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IntArray;->clone()Landroid/util/IntArray;

    move-result-object v0

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeablePlayerTypes:Landroid/util/IntArray;

    invoke-static {p1}, Landroid/media/FadeManagerConfiguration;->-$$Nest$fgetmUnfadeableUids(Landroid/media/FadeManagerConfiguration;)Landroid/util/IntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IntArray;->clone()Landroid/util/IntArray;

    move-result-object v0

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableUids:Landroid/util/IntArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/media/FadeManagerConfiguration;->-$$Nest$fgetmUnfadeableAudioAttributes(Landroid/media/FadeManagerConfiguration;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableAudioAttributes:Ljava/util/List;

    invoke-static {p1}, Landroid/media/FadeManagerConfiguration;->-$$Nest$fgetmFadeOutDurationMillis(Landroid/media/FadeManagerConfiguration;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeOutDurationMillis:J

    invoke-static {p1}, Landroid/media/FadeManagerConfiguration;->-$$Nest$fgetmFadeInDurationMillis(Landroid/media/FadeManagerConfiguration;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeInDurationMillis:J

    return-void
.end method

.method private blacklist checkNotSet(J)Z
    .locals 4

    iget-wide v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mBuilderFieldsSet:J

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist cleanupInactiveWrapperEntries(I)V
    .locals 2

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUsageToFadeWrapperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->isInactive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUsageToFadeWrapperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    return-void
.end method

.method private blacklist cleanupInactiveWrapperEntries(Landroid/media/AudioAttributes;)V
    .locals 2

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->isInactive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/FadeManagerConfiguration$Builder;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private blacklist copyUsageToFadeWrapperMapInternal(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUsageToFadeWrapperMap:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    new-instance v3, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    invoke-direct {v3, v4}, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;-><init>(Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist createVolShaperConfigForDuration(JZ)Landroid/media/VolumeShaper$Configuration;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/media/VolumeShaper$Configuration$Builder;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/VolumeShaper$Configuration$Builder;->setId(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/VolumeShaper$Configuration$Builder;->setOptionFlags(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    const/4 v1, 0x3

    if-eqz p3, :cond_1

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-virtual {v0, v2, v1}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    goto :goto_0

    :cond_1
    new-array v2, v1, [F

    fill-array-data v2, :array_2

    new-array v1, v1, [F

    fill-array-data v1, :array_3

    invoke-virtual {v0, v2, v1}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    :goto_0
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    move-result-object v1

    return-object v1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f266666    # 0.65f
        0x0
    .end array-data
.end method

.method private blacklist getFadeVolShaperConfigWrapperForAttr(Landroid/media/AudioAttributes;)Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;
    .locals 2

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    new-instance v1, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    invoke-direct {v1}, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    return-object v0
.end method

.method private blacklist getFadeVolShaperConfigWrapperForUsage(I)Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;
    .locals 2

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUsageToFadeWrapperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUsageToFadeWrapperMap:Landroid/util/SparseArray;

    new-instance v1, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    invoke-direct {v1}, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUsageToFadeWrapperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    return-object v0
.end method

.method private static blacklist isGeneric(Landroid/media/AudioAttributes;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getTags()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist setFlag(J)V
    .locals 2

    iget-wide v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mBuilderFieldsSet:J

    or-long/2addr v0, p1

    iput-wide v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mBuilderFieldsSet:J

    return-void
.end method

.method private blacklist setMissingVolShaperConfigsForWrapper(Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;)V
    .locals 3

    invoke-virtual {p1}, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->isFadeOutConfigActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeOutDurationMillis:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/FadeManagerConfiguration$Builder;->createVolShaperConfigForDuration(JZ)Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->setFadeOutVolShaperConfig(Landroid/media/VolumeShaper$Configuration;)V

    :cond_0
    invoke-virtual {p1}, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->isFadeInConfigActive()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeInDurationMillis:J

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/media/FadeManagerConfiguration$Builder;->createVolShaperConfigForDuration(JZ)Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->setFadeInVolShaperConfig(Landroid/media/VolumeShaper$Configuration;)V

    :cond_1
    return-void
.end method

.method private blacklist setVolShaperConfigsForUsages(Landroid/util/IntArray;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    nop

    invoke-virtual {p1, v0}, Landroid/util/IntArray;->get(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/media/FadeManagerConfiguration$Builder;->getFadeVolShaperConfigWrapperForUsage(I)Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/media/FadeManagerConfiguration$Builder;->setMissingVolShaperConfigsForWrapper(Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist validateContentType(I)V
    .locals 3

    invoke-static {p1}, Landroid/media/AudioAttributes;->isSdkContentType(I)Z

    move-result v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Invalid content type: "

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist validateContentTypes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/media/FadeManagerConfiguration$Builder;->validateContentType(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist validateFadeConfigurations()V
    .locals 0

    invoke-direct {p0}, Landroid/media/FadeManagerConfiguration$Builder;->validateFadeableUsages()V

    invoke-direct {p0}, Landroid/media/FadeManagerConfiguration$Builder;->validateFadeVolumeShaperConfigsWrappers()V

    invoke-direct {p0}, Landroid/media/FadeManagerConfiguration$Builder;->validateUnfadeableAudioAttributes()V

    return-void
.end method

.method private blacklist validateFadeState(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown fade state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    nop

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist validateFadeVolumeShaperConfigsWrappers()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUsageToFadeWrapperMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUsageToFadeWrapperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/media/FadeManagerConfiguration$Builder;->getFadeVolShaperConfigWrapperForUsage(I)Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/media/FadeManagerConfiguration$Builder;->setMissingVolShaperConfigsForWrapper(Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/media/FadeManagerConfiguration$Builder;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/media/FadeManagerConfiguration$Builder;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    invoke-direct {p0, v1}, Landroid/media/FadeManagerConfiguration$Builder;->getFadeVolShaperConfigWrapperForAttr(Landroid/media/AudioAttributes;)Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/media/FadeManagerConfiguration$Builder;->setMissingVolShaperConfigsForWrapper(Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private blacklist validateFadeableUsages()V
    .locals 2

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeableUsages:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    const-string v1, "Fadeable usage list cannot be empty when state set to enabled"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeableUsages:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeableUsages:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->get(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/media/FadeManagerConfiguration$Builder;->getFadeVolShaperConfigWrapperForUsage(I)Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/media/FadeManagerConfiguration$Builder;->setMissingVolShaperConfigsForWrapper(Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist validateUnfadeableAudioAttributes()V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableAudioAttributes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableAudioAttributes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getSystemUsage()I

    move-result v2

    iget-object v3, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeableUsages:Landroid/util/IntArray;

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v3, :cond_0

    invoke-static {v1}, Landroid/media/FadeManagerConfiguration$Builder;->isGeneric(Landroid/media/AudioAttributes;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v4, 0x1

    :goto_2
    const-string v5, "Unfadeable audio attributes cannot be generic of the fadeable usage"

    invoke-static {v4, v5}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private blacklist validateUsages(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/media/FadeManagerConfiguration;->-$$Nest$smvalidateUsage(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist addFadeableUsage(I)Landroid/media/FadeManagerConfiguration$Builder;
    .locals 2

    invoke-static {p1}, Landroid/media/FadeManagerConfiguration;->-$$Nest$smvalidateUsage(I)V

    const-wide/16 v0, 0x2

    invoke-direct {p0, v0, v1}, Landroid/media/FadeManagerConfiguration$Builder;->setFlag(J)V

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeableUsages:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeableUsages:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    :cond_0
    return-object p0
.end method

.method public whitelist addUnfadeableAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/FadeManagerConfiguration$Builder;
    .locals 1

    const-string v0, "Audio attributes cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableAudioAttributes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableAudioAttributes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public whitelist addUnfadeableContentType(I)Landroid/media/FadeManagerConfiguration$Builder;
    .locals 2

    invoke-direct {p0, p1}, Landroid/media/FadeManagerConfiguration$Builder;->validateContentType(I)V

    const-wide/16 v0, 0x4

    invoke-direct {p0, v0, v1}, Landroid/media/FadeManagerConfiguration$Builder;->setFlag(J)V

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableContentTypes:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableContentTypes:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    :cond_0
    return-object p0
.end method

.method public whitelist addUnfadeableUid(I)Landroid/media/FadeManagerConfiguration$Builder;
    .locals 1

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableUids:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableUids:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    :cond_0
    return-object p0
.end method

.method public whitelist build()Landroid/media/FadeManagerConfiguration;
    .locals 18

    move-object/from16 v0, p0

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Landroid/media/FadeManagerConfiguration$Builder;->checkNotSet(J)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {v0, v1, v2}, Landroid/media/FadeManagerConfiguration$Builder;->setFlag(J)V

    const-wide/16 v1, 0x2

    invoke-direct {v0, v1, v2}, Landroid/media/FadeManagerConfiguration$Builder;->checkNotSet(J)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/media/FadeManagerConfiguration$Builder;->DEFAULT_FADEABLE_USAGES:Landroid/util/IntArray;

    iput-object v1, v0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeableUsages:Landroid/util/IntArray;

    iget-object v1, v0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeableUsages:Landroid/util/IntArray;

    invoke-direct {v0, v1}, Landroid/media/FadeManagerConfiguration$Builder;->setVolShaperConfigsForUsages(Landroid/util/IntArray;)V

    :cond_0
    const-wide/16 v1, 0x4

    invoke-direct {v0, v1, v2}, Landroid/media/FadeManagerConfiguration$Builder;->checkNotSet(J)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/media/FadeManagerConfiguration$Builder;->DEFAULT_UNFADEABLE_CONTENT_TYPES:Landroid/util/IntArray;

    iput-object v1, v0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableContentTypes:Landroid/util/IntArray;

    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/media/FadeManagerConfiguration$Builder;->validateFadeConfigurations()V

    new-instance v1, Landroid/media/FadeManagerConfiguration;

    iget v3, v0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeState:I

    iget-wide v4, v0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeOutDurationMillis:J

    iget-wide v6, v0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeInDurationMillis:J

    iget-wide v8, v0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeInDelayForOffendersMillis:J

    iget-object v10, v0, Landroid/media/FadeManagerConfiguration$Builder;->mUsageToFadeWrapperMap:Landroid/util/SparseArray;

    iget-object v11, v0, Landroid/media/FadeManagerConfiguration$Builder;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    iget-object v12, v0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeableUsages:Landroid/util/IntArray;

    iget-object v13, v0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableContentTypes:Landroid/util/IntArray;

    iget-object v14, v0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeablePlayerTypes:Landroid/util/IntArray;

    iget-object v15, v0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableUids:Landroid/util/IntArray;

    iget-object v2, v0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableAudioAttributes:Ljava/util/List;

    const/16 v17, 0x0

    move-object/from16 v16, v2

    move-object v2, v1

    invoke-direct/range {v2 .. v17}, Landroid/media/FadeManagerConfiguration;-><init>(IJJJLandroid/util/SparseArray;Landroid/util/ArrayMap;Landroid/util/IntArray;Landroid/util/IntArray;Landroid/util/IntArray;Landroid/util/IntArray;Ljava/util/List;Landroid/media/FadeManagerConfiguration-IA;)V

    return-object v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist clearFadeableUsages()Landroid/media/FadeManagerConfiguration$Builder;
    .locals 2

    const-wide/16 v0, 0x2

    invoke-direct {p0, v0, v1}, Landroid/media/FadeManagerConfiguration$Builder;->setFlag(J)V

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeableUsages:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    return-object p0
.end method

.method public whitelist clearUnfadeableAudioAttributes()Landroid/media/FadeManagerConfiguration$Builder;
    .locals 1

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableAudioAttributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public whitelist clearUnfadeableContentTypes()Landroid/media/FadeManagerConfiguration$Builder;
    .locals 2

    const-wide/16 v0, 0x4

    invoke-direct {p0, v0, v1}, Landroid/media/FadeManagerConfiguration$Builder;->setFlag(J)V

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableContentTypes:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    return-object p0
.end method

.method public whitelist clearUnfadeableUids()Landroid/media/FadeManagerConfiguration$Builder;
    .locals 1

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableUids:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    return-object p0
.end method

.method public whitelist setFadeInDelayForOffenders(J)Landroid/media/FadeManagerConfiguration$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Delay cannot be negative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-wide p1, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeInDelayForOffendersMillis:J

    return-object p0
.end method

.method public whitelist setFadeInDurationForAudioAttributes(Landroid/media/AudioAttributes;J)Landroid/media/FadeManagerConfiguration$Builder;
    .locals 1

    const-string v0, "Audio attribute cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    nop

    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Landroid/media/FadeManagerConfiguration$Builder;->createVolShaperConfigForDuration(JZ)Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/media/FadeManagerConfiguration$Builder;->setFadeInVolumeShaperConfigForAudioAttributes(Landroid/media/AudioAttributes;Landroid/media/VolumeShaper$Configuration;)Landroid/media/FadeManagerConfiguration$Builder;

    return-object p0
.end method

.method public whitelist setFadeInDurationForUsage(IJ)Landroid/media/FadeManagerConfiguration$Builder;
    .locals 1

    invoke-static {p1}, Landroid/media/FadeManagerConfiguration;->-$$Nest$smvalidateUsage(I)V

    nop

    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Landroid/media/FadeManagerConfiguration$Builder;->createVolShaperConfigForDuration(JZ)Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/media/FadeManagerConfiguration$Builder;->setFadeInVolumeShaperConfigForUsage(ILandroid/media/VolumeShaper$Configuration;)Landroid/media/FadeManagerConfiguration$Builder;

    return-object p0
.end method

.method public whitelist setFadeInVolumeShaperConfigForAudioAttributes(Landroid/media/AudioAttributes;Landroid/media/VolumeShaper$Configuration;)Landroid/media/FadeManagerConfiguration$Builder;
    .locals 1

    const-string v0, "Audio attribute cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Landroid/media/FadeManagerConfiguration$Builder;->getFadeVolShaperConfigWrapperForAttr(Landroid/media/AudioAttributes;)Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->setFadeInVolShaperConfig(Landroid/media/VolumeShaper$Configuration;)V

    invoke-direct {p0, p1}, Landroid/media/FadeManagerConfiguration$Builder;->cleanupInactiveWrapperEntries(Landroid/media/AudioAttributes;)V

    return-object p0
.end method

.method public whitelist setFadeInVolumeShaperConfigForUsage(ILandroid/media/VolumeShaper$Configuration;)Landroid/media/FadeManagerConfiguration$Builder;
    .locals 1

    invoke-static {p1}, Landroid/media/FadeManagerConfiguration;->-$$Nest$smvalidateUsage(I)V

    invoke-direct {p0, p1}, Landroid/media/FadeManagerConfiguration$Builder;->getFadeVolShaperConfigWrapperForUsage(I)Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->setFadeInVolShaperConfig(Landroid/media/VolumeShaper$Configuration;)V

    invoke-direct {p0, p1}, Landroid/media/FadeManagerConfiguration$Builder;->cleanupInactiveWrapperEntries(I)V

    return-object p0
.end method

.method public whitelist setFadeOutDurationForAudioAttributes(Landroid/media/AudioAttributes;J)Landroid/media/FadeManagerConfiguration$Builder;
    .locals 1

    const-string v0, "Audio attribute cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    nop

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Landroid/media/FadeManagerConfiguration$Builder;->createVolShaperConfigForDuration(JZ)Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/media/FadeManagerConfiguration$Builder;->setFadeOutVolumeShaperConfigForAudioAttributes(Landroid/media/AudioAttributes;Landroid/media/VolumeShaper$Configuration;)Landroid/media/FadeManagerConfiguration$Builder;

    return-object p0
.end method

.method public whitelist setFadeOutDurationForUsage(IJ)Landroid/media/FadeManagerConfiguration$Builder;
    .locals 1

    invoke-static {p1}, Landroid/media/FadeManagerConfiguration;->-$$Nest$smvalidateUsage(I)V

    nop

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Landroid/media/FadeManagerConfiguration$Builder;->createVolShaperConfigForDuration(JZ)Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/media/FadeManagerConfiguration$Builder;->setFadeOutVolumeShaperConfigForUsage(ILandroid/media/VolumeShaper$Configuration;)Landroid/media/FadeManagerConfiguration$Builder;

    return-object p0
.end method

.method public whitelist setFadeOutVolumeShaperConfigForAudioAttributes(Landroid/media/AudioAttributes;Landroid/media/VolumeShaper$Configuration;)Landroid/media/FadeManagerConfiguration$Builder;
    .locals 1

    const-string v0, "Audio attribute cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Landroid/media/FadeManagerConfiguration$Builder;->getFadeVolShaperConfigWrapperForAttr(Landroid/media/AudioAttributes;)Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->setFadeOutVolShaperConfig(Landroid/media/VolumeShaper$Configuration;)V

    invoke-direct {p0, p1}, Landroid/media/FadeManagerConfiguration$Builder;->cleanupInactiveWrapperEntries(Landroid/media/AudioAttributes;)V

    return-object p0
.end method

.method public whitelist setFadeOutVolumeShaperConfigForUsage(ILandroid/media/VolumeShaper$Configuration;)Landroid/media/FadeManagerConfiguration$Builder;
    .locals 1

    invoke-static {p1}, Landroid/media/FadeManagerConfiguration;->-$$Nest$smvalidateUsage(I)V

    invoke-direct {p0, p1}, Landroid/media/FadeManagerConfiguration$Builder;->getFadeVolShaperConfigWrapperForUsage(I)Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->setFadeOutVolShaperConfig(Landroid/media/VolumeShaper$Configuration;)V

    invoke-direct {p0, p1}, Landroid/media/FadeManagerConfiguration$Builder;->cleanupInactiveWrapperEntries(I)V

    return-object p0
.end method

.method public whitelist setFadeState(I)Landroid/media/FadeManagerConfiguration$Builder;
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/FadeManagerConfiguration$Builder;->validateFadeState(I)V

    iput p1, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeState:I

    return-object p0
.end method

.method public whitelist setFadeableUsages(Ljava/util/List;)Landroid/media/FadeManagerConfiguration$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/media/FadeManagerConfiguration$Builder;"
        }
    .end annotation

    const-string v0, "List of usages cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Landroid/media/FadeManagerConfiguration$Builder;->validateUsages(Ljava/util/List;)V

    const-wide/16 v0, 0x2

    invoke-direct {p0, v0, v1}, Landroid/media/FadeManagerConfiguration$Builder;->setFlag(J)V

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeableUsages:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeableUsages:Landroid/util/IntArray;

    invoke-static {p1}, Landroid/media/FadeManagerConfiguration;->-$$Nest$smconvertIntegerListToIntArray(Ljava/util/List;)Landroid/util/IntArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->addAll(Landroid/util/IntArray;)V

    return-object p0
.end method

.method public whitelist setUnfadeableAudioAttributes(Ljava/util/List;)Landroid/media/FadeManagerConfiguration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioAttributes;",
            ">;)",
            "Landroid/media/FadeManagerConfiguration$Builder;"
        }
    .end annotation

    const-string v0, "List of audio attributes cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableAudioAttributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableAudioAttributes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public whitelist setUnfadeableContentTypes(Ljava/util/List;)Landroid/media/FadeManagerConfiguration$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/media/FadeManagerConfiguration$Builder;"
        }
    .end annotation

    const-string v0, "List of content types cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Landroid/media/FadeManagerConfiguration$Builder;->validateContentTypes(Ljava/util/List;)V

    const-wide/16 v0, 0x4

    invoke-direct {p0, v0, v1}, Landroid/media/FadeManagerConfiguration$Builder;->setFlag(J)V

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableContentTypes:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableContentTypes:Landroid/util/IntArray;

    invoke-static {p1}, Landroid/media/FadeManagerConfiguration;->-$$Nest$smconvertIntegerListToIntArray(Ljava/util/List;)Landroid/util/IntArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->addAll(Landroid/util/IntArray;)V

    return-object p0
.end method

.method public whitelist setUnfadeableUids(Ljava/util/List;)Landroid/media/FadeManagerConfiguration$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/media/FadeManagerConfiguration$Builder;"
        }
    .end annotation

    const-string v0, "List of uids cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableUids:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableUids:Landroid/util/IntArray;

    invoke-static {p1}, Landroid/media/FadeManagerConfiguration;->-$$Nest$smconvertIntegerListToIntArray(Ljava/util/List;)Landroid/util/IntArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->addAll(Landroid/util/IntArray;)V

    return-object p0
.end method
