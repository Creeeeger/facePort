.class public final Lcom/samsung/android/media/SemMediaResourceHelper;
.super Ljava/lang/Object;
.source "SemMediaResourceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;,
        Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;,
        Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;,
        Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;,
        Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;,
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

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/media/SemMediaResourceHelper;->mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    .line 634
    const-string v0, "mediaresourcehelper"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 635
    return-void
.end method

.method private constructor blacklist <init>(IZ)V
    .locals 3
    .param p1, "resourceType"    # I
    .param p2, "ownResourceEventExcluded"    # Z

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceInfoChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    .line 45
    iput-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mCodecStateChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;

    .line 46
    iput-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mVideoCapacityErrorListener:Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;

    .line 50
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mPid:I

    .line 148
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v2, v1

    .local v2, "looper":Landroid/os/Looper;
    if-eqz v1, :cond_0

    .line 149
    new-instance v0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    invoke-direct {v0, p0, p0, v2}, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;-><init>(Lcom/samsung/android/media/SemMediaResourceHelper;Lcom/samsung/android/media/SemMediaResourceHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    goto :goto_0

    .line 150
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v2, v1

    if-eqz v1, :cond_1

    .line 151
    new-instance v0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    invoke-direct {v0, p0, p0, v2}, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;-><init>(Lcom/samsung/android/media/SemMediaResourceHelper;Lcom/samsung/android/media/SemMediaResourceHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    goto :goto_0

    .line 153
    :cond_1
    iput-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    .line 156
    :goto_0
    iput p1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceType:I

    .line 157
    iput-boolean p2, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mOwnResourceEventExcluded:Z

    .line 158
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mPid:I

    .line 159
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_setup(Ljava/lang/Object;)V

    .line 162
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

    .line 164
    return-void
.end method

.method public static declared-synchronized whitelist createInstance(IZ)Lcom/samsung/android/media/SemMediaResourceHelper;
    .locals 3
    .param p0, "resourceType"    # I
    .param p1, "ownResourceEventExcluded"    # Z

    const-class v0, Lcom/samsung/android/media/SemMediaResourceHelper;

    monitor-enter v0

    .line 135
    :try_start_0
    sget-object v1, Lcom/samsung/android/media/SemMediaResourceHelper;->mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    if-nez v1, :cond_0

    .line 136
    new-instance v1, Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/media/SemMediaResourceHelper;-><init>(IZ)V

    sput-object v1, Lcom/samsung/android/media/SemMediaResourceHelper;->mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    goto :goto_0

    .line 139
    :cond_0
    const-string v1, "SemMediaResourceHelper"

    const-string v2, "SemMediaResourceHelper is already created"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_0
    sget-object v1, Lcom/samsung/android/media/SemMediaResourceHelper;->mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 134
    .end local p0    # "resourceType":I
    .end local p1    # "ownResourceEventExcluded":Z
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private blacklist dropOwnResourceEvent(I)Z
    .locals 1
    .param p1, "event_occured_pid"    # I

    .line 378
    iget-boolean v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mOwnResourceEventExcluded:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mPid:I

    if-lez v0, :cond_0

    if-ne p1, v0, :cond_0

    .line 379
    const/4 v0, 0x1

    return v0

    .line 381
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist makeMediaResourceInfo(Landroid/os/Parcel;)Ljava/util/ArrayList;
    .locals 26
    .param p1, "in"    # Landroid/os/Parcel;
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

    .line 348
    move-object/from16 v12, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 349
    .local v13, "mediaResourceInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;>;"
    if-eqz p1, :cond_5

    .line 350
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 351
    .local v14, "total_size":I
    if-lez v14, :cond_5

    .line 352
    const/4 v0, 0x0

    move v15, v0

    .local v15, "i":I
    :goto_0
    if-ge v15, v14, :cond_5

    .line 353
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 354
    .local v10, "resourceType":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v3, v2

    goto :goto_1

    :cond_0
    move v3, v1

    .line 355
    .local v3, "isSecured":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 356
    .local v9, "pid":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 357
    .local v16, "client":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 358
    .local v18, "state":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 359
    .local v19, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 360
    .local v20, "height":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 361
    .local v21, "framerate":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v11, v2

    goto :goto_2

    :cond_1
    move v11, v1

    .line 363
    .local v11, "isEncoder":Z
    :goto_2
    const/16 v22, 0x0

    .line 365
    .local v22, "resourceInfo":Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;
    iget v0, v12, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceType:I

    if-eqz v0, :cond_2

    if-ne v0, v10, :cond_4

    :cond_2
    iget-boolean v0, v12, Lcom/samsung/android/media/SemMediaResourceHelper;->mOwnResourceEventExcluded:Z

    if-eqz v0, :cond_3

    if-eqz v0, :cond_4

    iget v0, v12, Lcom/samsung/android/media/SemMediaResourceHelper;->mPid:I

    if-lez v0, :cond_4

    if-eq v0, v9, :cond_4

    .line 367
    :cond_3
    new-instance v23, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move v2, v10

    move v4, v9

    move-wide/from16 v5, v16

    move/from16 v7, v18

    move/from16 v8, v19

    move/from16 v24, v9

    .end local v9    # "pid":I
    .local v24, "pid":I
    move/from16 v9, v20

    move/from16 v25, v10

    .end local v10    # "resourceType":I
    .local v25, "resourceType":I
    move/from16 v10, v21

    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;-><init>(Lcom/samsung/android/media/SemMediaResourceHelper;IZIJIIIIZ)V

    .line 368
    .end local v22    # "resourceInfo":Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;
    .local v0, "resourceInfo":Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    .end local v0    # "resourceInfo":Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;
    .end local v3    # "isSecured":Z
    .end local v11    # "isEncoder":Z
    .end local v16    # "client":J
    .end local v18    # "state":I
    .end local v19    # "width":I
    .end local v20    # "height":I
    .end local v21    # "framerate":I
    .end local v24    # "pid":I
    .end local v25    # "resourceType":I
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 374
    .end local v14    # "total_size":I
    .end local v15    # "i":I
    :cond_5
    return-object v13
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
    .param p0, "semMediaResourceHelper_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 486
    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/SemMediaResourceHelper;

    .line 487
    .local v0, "semMediaResourceHelper":Lcom/samsung/android/media/SemMediaResourceHelper;
    const-string v1, "SemMediaResourceHelper"

    if-nez v0, :cond_0

    .line 488
    const-string/jumbo v2, "semMediaResourceHelper ref is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    return-void

    .line 492
    :cond_0
    iget-object v2, v0, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    if-eqz v2, :cond_3

    .line 493
    if-eqz p4, :cond_2

    .line 494
    move-object v2, p4

    check-cast v2, Landroid/os/Parcel;

    .line 495
    .local v2, "parcel":Landroid/os/Parcel;
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 496
    .local v3, "event_occured_pid":I
    invoke-direct {v0, v3}, Lcom/samsung/android/media/SemMediaResourceHelper;->dropOwnResourceEvent(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 497
    const-string v4, "Skip event. mOwnResourceEventExcluded is enabled and owned resource"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    return-void

    .line 501
    :cond_1
    invoke-direct {v0, v2}, Lcom/samsung/android/media/SemMediaResourceHelper;->makeMediaResourceInfo(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 502
    .local v1, "mediaResourceInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;>;"
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 503
    move-object p4, v1

    .line 505
    .end local v1    # "mediaResourceInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;>;"
    .end local v2    # "parcel":Landroid/os/Parcel;
    .end local v3    # "event_occured_pid":I
    :cond_2
    iget-object v1, v0, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 506
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, v0, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    invoke-virtual {v2, v1}, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 508
    .end local v1    # "msg":Landroid/os/Message;
    :cond_3
    return-void
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .locals 0

    .line 630
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_finalize()V

    .line 631
    return-void
.end method

.method public whitelist getMaxVideoCapacity()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 302
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_getCodecCapacity(I)I

    move-result v0

    return v0
.end method

.method public final whitelist getMediaResourceInfo(I)Ljava/util/ArrayList;
    .locals 2
    .param p1, "resourceType"    # I
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

    .line 337
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 340
    .local v0, "reply":Landroid/os/Parcel;
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_getMediaResourceInfo(ILandroid/os/Parcel;)V

    .line 341
    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->makeMediaResourceInfo(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 341
    return-object v1

    .line 343
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 344
    throw v1
.end method

.method public whitelist getRemainedVideoCapacity()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 312
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_getCodecCapacity(I)I

    move-result v0

    return v0
.end method

.method public whitelist release()V
    .locals 2

    .line 391
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_release()V

    .line 392
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {v0, v1}, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 395
    :cond_0
    iput-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceInfoChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    .line 396
    iput-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mCodecStateChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;

    .line 397
    iput-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mVideoCapacityErrorListener:Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;

    .line 398
    iput-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    .line 399
    sput-object v1, Lcom/samsung/android/media/SemMediaResourceHelper;->mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    .line 400
    return-void
.end method

.method public whitelist setCodecStateChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 243
    iput-object p1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mCodecStateChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;

    .line 245
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 246
    invoke-direct {p0, v0, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_enableObserver(IZ)V

    goto :goto_0

    .line 248
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_enableObserver(IZ)V

    .line 250
    :goto_0
    return-void
.end method

.method public declared-synchronized whitelist setOwnResourceEventExcluded(Z)V
    .locals 3
    .param p1, "ownResourceEventExcluded"    # Z

    monitor-enter p0

    .line 185
    :try_start_0
    const-string v0, "SemMediaResourceHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOwnResourceEventExcluded() ownResourceEventExcluded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iput-boolean p1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mOwnResourceEventExcluded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit p0

    return-void

    .line 184
    .end local p0    # "this":Lcom/samsung/android/media/SemMediaResourceHelper;
    .end local p1    # "ownResourceEventExcluded":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist setResourceInfoChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 198
    iput-object p1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceInfoChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    .line 200
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 201
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_enableObserver(IZ)V

    goto :goto_0

    .line 203
    :cond_0
    invoke-direct {p0, v0, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_enableObserver(IZ)V

    .line 205
    :goto_0
    return-void
.end method

.method public whitelist setResourcePriority(I)V
    .locals 0
    .param p1, "priority"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 324
    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_setResourcePriority(I)V

    .line 325
    return-void
.end method

.method public declared-synchronized whitelist setResourceTypeForEvent(I)V
    .locals 3
    .param p1, "resourceType"    # I

    monitor-enter p0

    .line 173
    :try_start_0
    const-string v0, "SemMediaResourceHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setResourceTypeForEvent() resourceType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iput p1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    .line 172
    .end local p0    # "this":Lcom/samsung/android/media/SemMediaResourceHelper;
    .end local p1    # "resourceType":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist setVideoCapacityErrorListener(Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 273
    iput-object p1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mVideoCapacityErrorListener:Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;

    .line 275
    const/4 v0, 0x2

    if-eqz p1, :cond_0

    .line 276
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_enableObserver(IZ)V

    goto :goto_0

    .line 278
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_enableObserver(IZ)V

    .line 280
    :goto_0
    return-void
.end method
