.class public Lcom/android/internal/power/EnergyConsumerStats$Config;
.super Ljava/lang/Object;
.source "EnergyConsumerStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/power/EnergyConsumerStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field private final blacklist mCustomBucketNames:[Ljava/lang/String;

.field private final blacklist mStateNames:[Ljava/lang/String;

.field private final blacklist mSupportedMultiStateBuckets:[Z

.field private final blacklist mSupportedStandardBuckets:[Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmStateNames(Lcom/android/internal/power/EnergyConsumerStats$Config;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/power/EnergyConsumerStats$Config;->mStateNames:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSupportedStandardBuckets(Lcom/android/internal/power/EnergyConsumerStats$Config;)[Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/power/EnergyConsumerStats$Config;->mSupportedStandardBuckets:[Z

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetBucketName(Lcom/android/internal/power/EnergyConsumerStats$Config;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/power/EnergyConsumerStats$Config;->getBucketName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetNumberOfBuckets(Lcom/android/internal/power/EnergyConsumerStats$Config;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/power/EnergyConsumerStats$Config;->getNumberOfBuckets()I

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>([Z[Ljava/lang/String;[I[Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/power/EnergyConsumerStats$Config;->mSupportedStandardBuckets:[Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    new-array v1, v0, [Ljava/lang/String;

    :goto_0
    iput-object v1, p0, Lcom/android/internal/power/EnergyConsumerStats$Config;->mCustomBucketNames:[Ljava/lang/String;

    array-length v1, p1

    iget-object v2, p0, Lcom/android/internal/power/EnergyConsumerStats$Config;->mCustomBucketNames:[Ljava/lang/String;

    array-length v2, v2

    add-int/2addr v1, v2

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/internal/power/EnergyConsumerStats$Config;->mSupportedMultiStateBuckets:[Z

    array-length v1, p3

    move v2, v0

    :goto_1
    const/4 v3, 0x1

    if-ge v2, v1, :cond_2

    aget v4, p3, v2

    iget-object v5, p0, Lcom/android/internal/power/EnergyConsumerStats$Config;->mSupportedStandardBuckets:[Z

    aget-boolean v5, v5, v4

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/power/EnergyConsumerStats$Config;->mSupportedMultiStateBuckets:[Z

    aput-boolean v3, v5, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-eqz p4, :cond_3

    move-object v1, p4

    goto :goto_2

    :cond_3
    new-array v1, v3, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    :goto_2
    iput-object v1, p0, Lcom/android/internal/power/EnergyConsumerStats$Config;->mStateNames:[Ljava/lang/String;

    return-void
.end method

.method public static blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/power/EnergyConsumerStats$Config;
    .locals 7

    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v1, v0, [Z

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readBooleanArray([Z)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    new-array v4, v3, [I

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->readIntArray([I)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/internal/power/EnergyConsumerStats$Config;

    invoke-direct {v6, v1, v2, v4, v5}, Lcom/android/internal/power/EnergyConsumerStats$Config;-><init>([Z[Ljava/lang/String;[I[Ljava/lang/String;)V

    return-object v6
.end method

.method private blacklist getBucketName(I)Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Lcom/android/internal/power/EnergyConsumerStats;->-$$Nest$smisValidStandardBucket(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/internal/power/EnergyConsumerStats;

    const-string v1, "POWER_BUCKET_"

    invoke-static {v0, v1, p1}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/android/internal/power/EnergyConsumerStats;->-$$Nest$smindexToCustomBucket(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CUSTOM_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/power/EnergyConsumerStats$Config;->mCustomBucketNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/power/EnergyConsumerStats$Config;->mCustomBucketNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private blacklist getNumberOfBuckets()I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats$Config;->mSupportedStandardBuckets:[Z

    array-length v0, v0

    iget-object v1, p0, Lcom/android/internal/power/EnergyConsumerStats$Config;->mCustomBucketNames:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist writeToParcel(Lcom/android/internal/power/EnergyConsumerStats$Config;Landroid/os/Parcel;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v1, p0, Lcom/android/internal/power/EnergyConsumerStats$Config;->mSupportedStandardBuckets:[Z

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/android/internal/power/EnergyConsumerStats$Config;->mSupportedStandardBuckets:[Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget-object v1, p0, Lcom/android/internal/power/EnergyConsumerStats$Config;->mCustomBucketNames:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/power/EnergyConsumerStats$Config;->mSupportedMultiStateBuckets:[Z

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_2

    aget-boolean v4, v2, v0

    if-eqz v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-array v0, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/internal/power/EnergyConsumerStats$Config;->mSupportedMultiStateBuckets:[Z

    array-length v4, v4

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/power/EnergyConsumerStats$Config;->mSupportedMultiStateBuckets:[Z

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_3

    add-int/lit8 v4, v2, 0x1

    aput v3, v0, v2

    move v2, v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v3, p0, Lcom/android/internal/power/EnergyConsumerStats$Config;->mStateNames:[Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist getCustomBucketNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats$Config;->mCustomBucketNames:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getStateNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats$Config;->mStateNames:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isCompatible(Lcom/android/internal/power/EnergyConsumerStats$Config;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats$Config;->mSupportedStandardBuckets:[Z

    iget-object v1, p1, Lcom/android/internal/power/EnergyConsumerStats$Config;->mSupportedStandardBuckets:[Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats$Config;->mCustomBucketNames:[Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/power/EnergyConsumerStats$Config;->mCustomBucketNames:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats$Config;->mSupportedMultiStateBuckets:[Z

    iget-object v1, p1, Lcom/android/internal/power/EnergyConsumerStats$Config;->mSupportedMultiStateBuckets:[Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats$Config;->mStateNames:[Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/power/EnergyConsumerStats$Config;->mStateNames:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isSupportedBucket(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats$Config;->mSupportedStandardBuckets:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public blacklist isSupportedMultiStateBucket(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats$Config;->mSupportedMultiStateBuckets:[Z

    aget-boolean v0, v0, p1

    return v0
.end method
