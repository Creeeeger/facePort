.class public final Lcom/samsung/android/media/SemMediaResourceHelper;
.super Ljava/lang/Object;
.source "SemMediaResourceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;,
        Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;,
        Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;,
        Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;,
        Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;,
        Lcom/samsung/android/media/SemMediaResourceHelper$ResourceType;,
        Lcom/samsung/android/media/SemMediaResourceHelper$CodecState;
    }
.end annotation


# static fields
.field public static final whitelist CODEC_STATE_RUNNING:I = 0x1

.field public static final whitelist CODEC_STATE_WAITING:I = 0x0

.field private static final blacklist DEBUG:Z = true

.field private static final blacklist EVENT_ADD_RESOURCE:I = 0x1

.field private static final blacklist EVENT_CAPACITY_ERROR:I = 0x4

.field private static final blacklist EVENT_ERROR:I = 0x64

.field private static final blacklist EVENT_REMOVE_RESOURCE:I = 0x2

.field private static final blacklist EVENT_UPDATE_STATE:I = 0x3

.field private static final blacklist LISTENER_TYPE_CAPACITY_ERROR:I = 0x2

.field private static final blacklist LISTENER_TYPE_INFO:I = 0x0

.field private static final blacklist LISTENER_TYPE_STATE:I = 0x1

.field private static final blacklist PARAMETER_CAPACITY_MAX:I = 0x0

.field private static final blacklist PARAMETER_CAPACITY_REMAINED:I = 0x1

.field public static final whitelist RESOURCE_PRIORITY_HIGH:I = 0xa

.field public static final whitelist RESOURCE_PRIORITY_LOW:I = 0x0

.field public static final whitelist RESOURCE_TYPE_ALL:I = 0x0

.field public static final whitelist RESOURCE_TYPE_AUDIO:I = 0x1

.field public static final whitelist RESOURCE_TYPE_VIDEO:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "SemMediaResourceHelper"

.field private static blacklist mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;


# instance fields
.field private blacklist mCodecStateChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;

.field private blacklist mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

.field private blacklist mNativeContext:J

.field private blacklist mOwnResourceEventExcluded:Z

.field private blacklist mPid:I

.field private blacklist mResourceInfoChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

.field private blacklist mResourceType:I

.field private blacklist mVideoCapacityErrorListener:Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCodecStateChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mCodecStateChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResourceInfoChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceInfoChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVideoCapacityErrorListener(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mVideoCapacityErrorListener:Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/media/SemMediaResourceHelper;->mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    const-string v0, "mediaresourcehelper"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor blacklist <init>(IZ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceInfoChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mCodecStateChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mVideoCapacityErrorListener:Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mPid:I

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v2, v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    invoke-direct {v0, p0, p0, v2}, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;-><init>(Lcom/samsung/android/media/SemMediaResourceHelper;Lcom/samsung/android/media/SemMediaResourceHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v2, v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    invoke-direct {v0, p0, p0, v2}, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;-><init>(Lcom/samsung/android/media/SemMediaResourceHelper;Lcom/samsung/android/media/SemMediaResourceHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    :goto_0
    iput p1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceType:I

    iput-boolean p2, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mOwnResourceEventExcluded:Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mPid:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_setup(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemMediaResourceHelper() resourceType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ownResourceEventExcluded : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", myPid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemMediaResourceHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist clearMediaResourceHelper()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/media/SemMediaResourceHelper;->mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    return-void
.end method

.method public static declared-synchronized whitelist createInstance(IZ)Lcom/samsung/android/media/SemMediaResourceHelper;
    .locals 3

    const-class v0, Lcom/samsung/android/media/SemMediaResourceHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/media/SemMediaResourceHelper;->mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/media/SemMediaResourceHelper;-><init>(IZ)V

    sput-object v1, Lcom/samsung/android/media/SemMediaResourceHelper;->mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    goto :goto_0

    :cond_0
    const-string v1, "SemMediaResourceHelper"

    const-string v2, "SemMediaResourceHelper is already created"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object v1, Lcom/samsung/android/media/SemMediaResourceHelper;->mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private blacklist dropOwnResourceEvent(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mOwnResourceEventExcluded:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mPid:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mPid:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist makeMediaResourceInfo(Landroid/os/Parcel;)Ljava/util/ArrayList;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-lez v2, :cond_6

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x1

    if-ne v4, v7, :cond_0

    move v6, v7

    goto :goto_1

    :cond_0
    move v6, v5

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v7, :cond_1

    move v14, v7

    goto :goto_2

    :cond_1
    move v14, v5

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v7, :cond_2

    move v15, v7

    goto :goto_3

    :cond_2
    move v15, v5

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v25

    const/16 v26, 0x0

    iget v4, v0, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceType:I

    if-eqz v4, :cond_3

    iget v4, v0, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceType:I

    if-ne v4, v13, :cond_5

    :cond_3
    iget-boolean v4, v0, Lcom/samsung/android/media/SemMediaResourceHelper;->mOwnResourceEventExcluded:Z

    if-eqz v4, :cond_4

    iget-boolean v4, v0, Lcom/samsung/android/media/SemMediaResourceHelper;->mOwnResourceEventExcluded:Z

    if-eqz v4, :cond_5

    iget v4, v0, Lcom/samsung/android/media/SemMediaResourceHelper;->mPid:I

    if-lez v4, :cond_5

    iget v4, v0, Lcom/samsung/android/media/SemMediaResourceHelper;->mPid:I

    if-eq v4, v12, :cond_5

    :cond_4
    new-instance v27, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;

    move-object/from16 v4, v27

    move v5, v13

    move v7, v12

    move-wide/from16 v8, v18

    move/from16 v10, v20

    move/from16 v11, v21

    move/from16 v28, v12

    move/from16 v12, v22

    move/from16 v29, v13

    move/from16 v13, v23

    move-object/from16 v16, v24

    move/from16 v17, v25

    invoke-direct/range {v4 .. v17}, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;-><init>(IZIJIIIIZZLjava/lang/String;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return-object v1
.end method

.method private native blacklist native_enableObserver(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private final native blacklist native_finalize()V
.end method

.method private native blacklist native_getCodecCapacity(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native blacklist native_getMediaResourceInfo(ILandroid/os/Parcel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private final native blacklist native_release()V
.end method

.method private native blacklist native_setResourcePriority(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private final native blacklist native_setup(Ljava/lang/Object;)V
.end method

.method private static blacklist postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 5

    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/SemMediaResourceHelper;

    const-string v1, "SemMediaResourceHelper"

    if-nez v0, :cond_0

    const-string v2, "semMediaResourceHelper ref is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, v0, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    if-eqz v2, :cond_3

    if-eqz p4, :cond_2

    move-object v2, p4

    check-cast v2, Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/samsung/android/media/SemMediaResourceHelper;->dropOwnResourceEvent(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "Skip event. mOwnResourceEventExcluded is enabled and owned resource"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {v0, v2}, Lcom/samsung/android/media/SemMediaResourceHelper;->makeMediaResourceInfo(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    move-object p4, v1

    :cond_2
    iget-object v1, v0, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    invoke-virtual {v2, v1}, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    return-void
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_finalize()V

    return-void
.end method

.method public whitelist getMaxVideoCapacity()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_getCodecCapacity(I)I

    move-result v0

    return v0
.end method

.method public final whitelist getMediaResourceInfo(I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_getMediaResourceInfo(ILandroid/os/Parcel;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->makeMediaResourceInfo(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public whitelist getRemainedVideoCapacity()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_getCodecCapacity(I)I

    move-result v0

    return v0
.end method

.method public whitelist release()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_release()V

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceInfoChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    iput-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mCodecStateChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;

    iput-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mVideoCapacityErrorListener:Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;

    iput-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    invoke-static {}, Lcom/samsung/android/media/SemMediaResourceHelper;->clearMediaResourceHelper()V

    return-void
.end method

.method public whitelist setCodecStateChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mCodecStateChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mCodecStateChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, v1, v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_enableObserver(IZ)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_enableObserver(IZ)V

    :goto_0
    return-void
.end method

.method public declared-synchronized whitelist setOwnResourceEventExcluded(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "SemMediaResourceHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOwnResourceEventExcluded() ownResourceEventExcluded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mOwnResourceEventExcluded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist setResourceInfoChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceInfoChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceInfoChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_enableObserver(IZ)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1, v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_enableObserver(IZ)V

    :goto_0
    return-void
.end method

.method public whitelist setResourcePriority(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_setResourcePriority(I)V

    return-void
.end method

.method public declared-synchronized whitelist setResourceTypeForEvent(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "SemMediaResourceHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setResourceTypeForEvent() resourceType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist setVideoCapacityErrorListener(Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mVideoCapacityErrorListener:Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mVideoCapacityErrorListener:Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_enableObserver(IZ)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_enableObserver(IZ)V

    :goto_0
    return-void
.end method
