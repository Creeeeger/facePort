.class public final Landroid/hardware/OverlayProperties;
.super Ljava/lang/Object;
.source "OverlayProperties.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/OverlayProperties;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sDefaultOverlayProperties:Landroid/hardware/OverlayProperties;

.field private static final blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private blacklist mCloser:Ljava/lang/Runnable;

.field private blacklist mNativeObject:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnReadOverlayPropertiesFromParcel(Landroid/os/Parcel;)J
    .locals 2

    invoke-static {p0}, Landroid/hardware/OverlayProperties;->nReadOverlayPropertiesFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    nop

    const-class v0, Landroid/hardware/OverlayProperties;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/hardware/OverlayProperties;->nGetDestructor()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/hardware/OverlayProperties;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    new-instance v0, Landroid/hardware/OverlayProperties$1;

    invoke-direct {v0}, Landroid/hardware/OverlayProperties$1;-><init>()V

    sput-object v0, Landroid/hardware/OverlayProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/OverlayProperties;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v0, p0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/OverlayProperties;->mCloser:Ljava/lang/Runnable;

    :cond_0
    iput-wide p1, p0, Landroid/hardware/OverlayProperties;->mNativeObject:J

    return-void
.end method

.method synthetic constructor blacklist <init>(JLandroid/hardware/OverlayProperties-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/OverlayProperties;-><init>(J)V

    return-void
.end method

.method public static blacklist getDefault()Landroid/hardware/OverlayProperties;
    .locals 3

    sget-object v0, Landroid/hardware/OverlayProperties;->sDefaultOverlayProperties:Landroid/hardware/OverlayProperties;

    if-nez v0, :cond_0

    new-instance v0, Landroid/hardware/OverlayProperties;

    invoke-static {}, Landroid/hardware/OverlayProperties;->nCreateDefault()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/hardware/OverlayProperties;-><init>(J)V

    sput-object v0, Landroid/hardware/OverlayProperties;->sDefaultOverlayProperties:Landroid/hardware/OverlayProperties;

    :cond_0
    sget-object v0, Landroid/hardware/OverlayProperties;->sDefaultOverlayProperties:Landroid/hardware/OverlayProperties;

    return-object v0
.end method

.method private static native blacklist nCreateDefault()J
.end method

.method private static native blacklist nGetDestructor()J
.end method

.method private static native blacklist nIsCombinationSupported(JII)Z
.end method

.method private static native blacklist nReadOverlayPropertiesFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native blacklist nSupportMixedColorSpaces(J)Z
.end method

.method private static native blacklist nWriteOverlayPropertiesToParcel(JLandroid/os/Parcel;)V
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isCombinationSupported(II)Z
    .locals 4

    iget-wide v0, p0, Landroid/hardware/OverlayProperties;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-wide v0, p0, Landroid/hardware/OverlayProperties;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/hardware/OverlayProperties;->nIsCombinationSupported(JII)Z

    move-result v0

    return v0
.end method

.method public whitelist isMixedColorSpacesSupported()Z
    .locals 4

    iget-wide v0, p0, Landroid/hardware/OverlayProperties;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-wide v0, p0, Landroid/hardware/OverlayProperties;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/hardware/OverlayProperties;->nSupportMixedColorSpaces(J)Z

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget-wide v0, p0, Landroid/hardware/OverlayProperties;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/hardware/OverlayProperties;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/hardware/OverlayProperties;->nWriteOverlayPropertiesToParcel(JLandroid/os/Parcel;)V

    return-void
.end method
