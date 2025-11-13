.class public final Landroid/window/SizeConfigurationBuckets;
.super Ljava/lang/Object;
.source "SizeConfigurationBuckets.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/SizeConfigurationBuckets;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mHorizontal:[I

.field private final blacklist mScreenLayoutLongSet:Z

.field private final blacklist mScreenLayoutSize:[I

.field private final blacklist mSmallest:[I

.field private final blacklist mVertical:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/window/SizeConfigurationBuckets$1;

    invoke-direct {v0}, Landroid/window/SizeConfigurationBuckets$1;-><init>()V

    sput-object v0, Landroid/window/SizeConfigurationBuckets;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    :goto_1
    and-int/lit8 v4, v0, 0x2

    if-nez v4, :cond_2

    move-object v4, v3

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    :goto_2
    and-int/lit8 v5, v0, 0x4

    if-nez v5, :cond_3

    move-object v5, v3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    :goto_3
    and-int/lit8 v6, v0, 0x8

    if-nez v6, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    :goto_4
    iput-object v2, p0, Landroid/window/SizeConfigurationBuckets;->mHorizontal:[I

    iput-object v4, p0, Landroid/window/SizeConfigurationBuckets;->mVertical:[I

    iput-object v5, p0, Landroid/window/SizeConfigurationBuckets;->mSmallest:[I

    iput-object v3, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutSize:[I

    iput-boolean v1, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutLongSet:Z

    return-void
.end method

.method public constructor blacklist <init>([I[I[I[IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/SizeConfigurationBuckets;->mHorizontal:[I

    iput-object p2, p0, Landroid/window/SizeConfigurationBuckets;->mVertical:[I

    iput-object p3, p0, Landroid/window/SizeConfigurationBuckets;->mSmallest:[I

    iput-object p4, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutSize:[I

    iput-boolean p5, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutLongSet:Z

    return-void
.end method

.method public constructor blacklist <init>([Landroid/content/res/Configuration;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v4, 0x0

    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    :goto_0
    if-ltz v5, :cond_5

    aget-object v6, p1, v5

    iget v7, v6, Landroid/content/res/Configuration;->screenHeightDp:I

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    iget v7, v6, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v1, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    iget v7, v6, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v7, :cond_1

    iget v7, v6, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v0, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    :cond_1
    iget v7, v6, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v7, :cond_2

    iget v7, v6, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v2, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    :cond_2
    iget v7, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v7, v7, 0xf

    move v9, v7

    if-eqz v7, :cond_3

    invoke-virtual {v3, v9, v8}, Landroid/util/SparseIntArray;->put(II)V

    :cond_3
    if-nez v4, :cond_4

    iget v7, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v7, v7, 0x30

    if-eqz v7, :cond_4

    const/4 v4, 0x1

    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->copyKeys()[I

    move-result-object v5

    iput-object v5, p0, Landroid/window/SizeConfigurationBuckets;->mHorizontal:[I

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->copyKeys()[I

    move-result-object v5

    iput-object v5, p0, Landroid/window/SizeConfigurationBuckets;->mVertical:[I

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->copyKeys()[I

    move-result-object v5

    iput-object v5, p0, Landroid/window/SizeConfigurationBuckets;->mSmallest:[I

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->copyKeys()[I

    move-result-object v5

    iput-object v5, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutSize:[I

    iput-boolean v4, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutLongSet:Z

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static blacklist areNonSizeLayoutFieldsUnchanged(II)Z
    .locals 3

    const v0, 0x100003c0

    const v1, 0x100003c0

    and-int v2, p0, v1

    and-int/2addr v1, p1

    if-ne v2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist crossesHorizontalSizeThreshold(II)Z
    .locals 1

    iget-object v0, p0, Landroid/window/SizeConfigurationBuckets;->mHorizontal:[I

    invoke-static {v0, p1, p2}, Landroid/window/SizeConfigurationBuckets;->crossesSizeThreshold([III)Z

    move-result v0

    return v0
.end method

.method private blacklist crossesScreenLayoutLongThreshold(II)Z
    .locals 3

    and-int/lit8 v0, p1, 0x30

    and-int/lit8 v1, p2, 0x30

    iget-boolean v2, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutLongSet:Z

    if-eqz v2, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static blacklist crossesSizeThreshold([III)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_4

    aget v3, p0, v1

    if-ge p1, v3, :cond_1

    if-ge p2, v3, :cond_2

    :cond_1
    if-lt p1, v3, :cond_3

    if-ge p2, v3, :cond_3

    :cond_2
    return v2

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method private blacklist crossesSmallestSizeThreshold(II)Z
    .locals 1

    iget-object v0, p0, Landroid/window/SizeConfigurationBuckets;->mSmallest:[I

    invoke-static {v0, p1, p2}, Landroid/window/SizeConfigurationBuckets;->crossesSizeThreshold([III)Z

    move-result v0

    return v0
.end method

.method private blacklist crossesVerticalSizeThreshold(II)Z
    .locals 1

    iget-object v0, p0, Landroid/window/SizeConfigurationBuckets;->mVertical:[I

    invoke-static {v0, p1, p2}, Landroid/window/SizeConfigurationBuckets;->crossesSizeThreshold([III)Z

    move-result v0

    return v0
.end method

.method public static blacklist filterDiff(ILandroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/window/SizeConfigurationBuckets;)I
    .locals 4

    if-nez p3, :cond_0

    return p0

    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    iget v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v0, v1}, Landroid/window/SizeConfigurationBuckets;->areNonSizeLayoutFieldsUnchanged(II)Z

    move-result v0

    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_3

    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-direct {p3, v1, v2}, Landroid/window/SizeConfigurationBuckets;->crossesHorizontalSizeThreshold(II)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-direct {p3, v1, v2}, Landroid/window/SizeConfigurationBuckets;->crossesVerticalSizeThreshold(II)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_3

    and-int/lit16 p0, p0, -0x401

    :cond_3
    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_4

    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v2, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-direct {p3, v1, v2}, Landroid/window/SizeConfigurationBuckets;->crossesSmallestSizeThreshold(II)Z

    move-result v3

    if-nez v3, :cond_4

    and-int/lit16 p0, p0, -0x801

    :cond_4
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {p3, p1, p2}, Landroid/window/SizeConfigurationBuckets;->crossesScreenLayoutSizeThreshold(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result v1

    if-nez v1, :cond_5

    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    iget v2, p2, Landroid/content/res/Configuration;->screenLayout:I

    invoke-direct {p3, v1, v2}, Landroid/window/SizeConfigurationBuckets;->crossesScreenLayoutLongThreshold(II)Z

    move-result v1

    if-nez v1, :cond_5

    and-int/lit16 p0, p0, -0x101

    :cond_5
    return p0
.end method


# virtual methods
.method public blacklist crossesScreenLayoutSizeThreshold(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .locals 8

    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    iget v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    invoke-virtual {p2, v0}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutSize:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutSize:[I

    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    aget v5, v0, v4

    invoke-virtual {p1, v5}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v6

    invoke-virtual {p2, v5}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v7

    if-eq v6, v7, :cond_2

    return v1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getHorizontal()[I
    .locals 1

    iget-object v0, p0, Landroid/window/SizeConfigurationBuckets;->mHorizontal:[I

    return-object v0
.end method

.method public blacklist getScreenLayoutSize()[I
    .locals 1

    iget-object v0, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutSize:[I

    return-object v0
.end method

.method public blacklist getSmallest()[I
    .locals 1

    iget-object v0, p0, Landroid/window/SizeConfigurationBuckets;->mSmallest:[I

    return-object v0
.end method

.method public blacklist getVertical()[I
    .locals 1

    iget-object v0, p0, Landroid/window/SizeConfigurationBuckets;->mVertical:[I

    return-object v0
.end method

.method public blacklist isScreenLayoutLongSet()Z
    .locals 1

    iget-boolean v0, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutLongSet:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/window/SizeConfigurationBuckets;->mHorizontal:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/window/SizeConfigurationBuckets;->mVertical:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/window/SizeConfigurationBuckets;->mSmallest:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutSize:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutLongSet:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutLongSet:Z

    if-eqz v1, :cond_0

    or-int/lit8 v1, v0, 0x10

    int-to-byte v0, v1

    :cond_0
    iget-object v1, p0, Landroid/window/SizeConfigurationBuckets;->mHorizontal:[I

    if-eqz v1, :cond_1

    or-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    :cond_1
    iget-object v1, p0, Landroid/window/SizeConfigurationBuckets;->mVertical:[I

    if-eqz v1, :cond_2

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    :cond_2
    iget-object v1, p0, Landroid/window/SizeConfigurationBuckets;->mSmallest:[I

    if-eqz v1, :cond_3

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    :cond_3
    iget-object v1, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutSize:[I

    if-eqz v1, :cond_4

    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    :cond_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v1, p0, Landroid/window/SizeConfigurationBuckets;->mHorizontal:[I

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/window/SizeConfigurationBuckets;->mHorizontal:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    :cond_5
    iget-object v1, p0, Landroid/window/SizeConfigurationBuckets;->mVertical:[I

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/window/SizeConfigurationBuckets;->mVertical:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    :cond_6
    iget-object v1, p0, Landroid/window/SizeConfigurationBuckets;->mSmallest:[I

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/window/SizeConfigurationBuckets;->mSmallest:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    :cond_7
    iget-object v1, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutSize:[I

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutSize:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    :cond_8
    return-void
.end method
