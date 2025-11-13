.class public final Landroid/view/InputChannel;
.super Ljava/lang/Object;
.source "InputChannel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/InputChannel;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "InputChannel"

.field private static final blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private greylist-max-r mPtr:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    nop

    const-class v0, Landroid/view/InputChannel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/view/InputChannel;->nativeGetFinalizer()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/view/InputChannel;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    new-instance v0, Landroid/view/InputChannel$1;

    invoke-direct {v0}, Landroid/view/InputChannel$1;-><init>()V

    sput-object v0, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native blacklist nativeDispose(J)V
.end method

.method private native blacklist nativeDup(J)J
.end method

.method private static native blacklist nativeGetFinalizer()J
.end method

.method private native blacklist nativeGetName(J)Ljava/lang/String;
.end method

.method private native blacklist nativeGetToken(J)Landroid/os/IBinder;
.end method

.method private static native blacklist nativeOpenInputChannelPair(Ljava/lang/String;)[J
.end method

.method private native blacklist nativeReadFromParcel(Landroid/os/Parcel;)J
.end method

.method private native blacklist nativeWriteToParcel(Landroid/os/Parcel;J)V
.end method

.method public static greylist-max-o openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;
    .locals 7

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/view/InputChannel;

    invoke-static {p0}, Landroid/view/InputChannel;->nativeOpenInputChannelPair(Ljava/lang/String;)[J

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    new-instance v4, Landroid/view/InputChannel;

    invoke-direct {v4}, Landroid/view/InputChannel;-><init>()V

    aput-object v4, v1, v3

    aget-object v4, v1, v3

    aget-wide v5, v2, v3

    invoke-direct {v4, v5, v6}, Landroid/view/InputChannel;->setNativeInputChannel(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist setNativeInputChannel(J)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    iget-wide v2, p0, Landroid/view/InputChannel;->mPtr:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/view/InputChannel;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v0, p0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    iput-wide p1, p0, Landroid/view/InputChannel;->mPtr:J

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Already has native input channel."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempting to set native input channel to null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist copyTo(Landroid/view/InputChannel;)V
    .locals 4

    if-eqz p1, :cond_1

    iget-wide v0, p1, Landroid/view/InputChannel;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/view/InputChannel;->mPtr:J

    invoke-direct {p0, v0, v1}, Landroid/view/InputChannel;->nativeDup(J)J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Landroid/view/InputChannel;->setNativeInputChannel(J)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Other object already has a native input channel."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "outParameter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o dispose()V
    .locals 2

    iget-wide v0, p0, Landroid/view/InputChannel;->mPtr:J

    invoke-direct {p0, v0, v1}, Landroid/view/InputChannel;->nativeDispose(J)V

    return-void
.end method

.method public greylist-max-o dup()Landroid/view/InputChannel;
    .locals 3

    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    iget-wide v1, p0, Landroid/view/InputChannel;->mPtr:J

    invoke-direct {p0, v1, v2}, Landroid/view/InputChannel;->nativeDup(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/view/InputChannel;->setNativeInputChannel(J)V

    return-object v0
.end method

.method public greylist-max-o getName()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Landroid/view/InputChannel;->mPtr:J

    invoke-direct {p0, v0, v1}, Landroid/view/InputChannel;->nativeGetName(J)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "uninitialized"

    :goto_0
    return-object v1
.end method

.method public blacklist getToken()Landroid/os/IBinder;
    .locals 2

    iget-wide v0, p0, Landroid/view/InputChannel;->mPtr:J

    invoke-direct {p0, v0, v1}, Landroid/view/InputChannel;->nativeGetToken(J)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Landroid/view/InputChannel;->nativeReadFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v1}, Landroid/view/InputChannel;->setNativeInputChannel(J)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "in must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist release()V
    .locals 0

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/view/InputChannel;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    if-eqz p1, :cond_1

    iget-wide v0, p0, Landroid/view/InputChannel;->mPtr:J

    invoke-direct {p0, p1, v0, v1}, Landroid/view/InputChannel;->nativeWriteToParcel(Landroid/os/Parcel;J)V

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/InputChannel;->dispose()V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "out must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
