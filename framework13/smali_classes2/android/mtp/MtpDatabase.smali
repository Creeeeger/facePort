.class public Landroid/mtp/MtpDatabase;
.super Ljava/lang/Object;
.source "MtpDatabase.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpDatabase$IncomingHandler;,
        Landroid/mtp/MtpDatabase$UpdateMediaStoreThread;
    }
.end annotation


# static fields
.field static final blacklist AGENT_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.easyMover.Agent"

.field static final blacklist AGENT_SERVICE_NAME:Ljava/lang/String; = "com.sec.android.easyMover.Agent.RemoteService"

.field private static final greylist-max-o AUDIO_PROPERTIES:[I

.field private static final greylist-max-o DEVICE_PROPERTIES:[I

.field static final blacklist EASYMOVER_AGENT:I = 0x0

.field static final blacklist EASYMOVER_SSM:I = 0x1

.field private static final greylist-max-o FILE_PROPERTIES:[I

.field private static final greylist-max-o ID_PROJECTION:[Ljava/lang/String;

.field private static final greylist-max-o IMAGE_PROPERTIES:[I

.field private static final blacklist MAX_THUMB_SIZE:I = 0x32000

.field static final blacklist MSG_CLOSE:I = 0x2

.field static final blacklist MSG_GET_SERIAL_COMMAND:I = 0x4

.field static final blacklist MSG_OPEN:I = 0x1

.field static final blacklist MSG_SEND_SERIAL_COMMAND:I = 0x3

.field private static final greylist-max-o NO_MEDIA:Ljava/lang/String; = ".nomedia"

.field private static final greylist-max-o PATH_PROJECTION:[Ljava/lang/String;

.field private static final greylist-max-o PATH_WHERE:Ljava/lang/String; = "_data=?"

.field private static final greylist-max-o PLAYBACK_FORMATS:[I

.field static final blacklist RESP_FAIL:I = 0x2

.field static final blacklist RESP_NONE:I = 0x0

.field static final blacklist RESP_NOTREADY:I = 0x3

.field static final blacklist RESP_SUCCESS:I = 0x1

.field static final blacklist SSM_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.easyMover"

.field static final blacklist SSM_SERVICE_NAME:Ljava/lang/String; = "com.sec.android.easyMover.service.RemoteService"

.field private static final greylist-max-o TAG:Ljava/lang/String;

.field private static final blacklist THUMB_HEIGHT:I = 0x100

.field private static final blacklist THUMB_WIDTH:I = 0x100

.field private static final greylist-max-o VIDEO_PROPERTIES:[I

.field static blacklist jsonData:Ljava/lang/String;


# instance fields
.field blacklist conn:[Landroid/content/ServiceConnection;

.field private blacklist currentServiceID:I

.field blacklist isStratCommand:Z

.field private greylist-max-o mBatteryLevel:I

.field private greylist-max-o mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private greylist-max-o mBatteryScale:I

.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private final greylist-max-o mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mDeviceProperties:Landroid/content/SharedPreferences;

.field private greylist-max-o mDeviceType:I

.field private volatile blacklist mHostIsWindows:Z

.field private blacklist mHostType:Ljava/lang/String;

.field blacklist mIsBound:[Z

.field private greylist-max-o mManager:Landroid/mtp/MtpStorageManager;

.field private final greylist-max-o mMediaProvider:Landroid/content/ContentProviderClient;

.field private final blacklist mMessenger:Landroid/os/Messenger;

.field private greylist-max-o mNativeContext:J

.field private final blacklist mPropertyGroupsByFormat:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/mtp/MtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPropertyGroupsByProperty:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/mtp/MtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mServer:Landroid/mtp/MtpServer;

.field private blacklist mService:[Landroid/os/Messenger;

.field private blacklist mSkipThumbForHost:Z

.field private final greylist-max-o mStorageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/mtp/MtpStorage;",
            ">;"
        }
    .end annotation
.end field

.field blacklist serviceComponent:[Landroid/content/ComponentName;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBatteryLevel(Landroid/mtp/MtpDatabase;)I
    .locals 0

    iget p0, p0, Landroid/mtp/MtpDatabase;->mBatteryLevel:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMessenger(Landroid/mtp/MtpDatabase;)Landroid/os/Messenger;
    .locals 0

    iget-object p0, p0, Landroid/mtp/MtpDatabase;->mMessenger:Landroid/os/Messenger;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServer(Landroid/mtp/MtpDatabase;)Landroid/mtp/MtpServer;
    .locals 0

    iget-object p0, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/mtp/MtpDatabase;)[Landroid/os/Messenger;
    .locals 0

    iget-object p0, p0, Landroid/mtp/MtpDatabase;->mService:[Landroid/os/Messenger;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBatteryLevel(Landroid/mtp/MtpDatabase;I)V
    .locals 0

    iput p1, p0, Landroid/mtp/MtpDatabase;->mBatteryLevel:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBatteryScale(Landroid/mtp/MtpDatabase;I)V
    .locals 0

    iput p1, p0, Landroid/mtp/MtpDatabase;->mBatteryScale:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 101
    const-class v0, Landroid/mtp/MtpDatabase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    .line 135
    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    .line 136
    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/mtp/MtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    .line 140
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 143
    const/16 v0, 0x1c

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/mtp/MtpDatabase;->PLAYBACK_FORMATS:[I

    .line 176
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    .line 191
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    .line 207
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    .line 214
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0xdc48

    aput v2, v0, v1

    sput-object v0, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    .line 218
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Landroid/mtp/MtpDatabase;->DEVICE_PROPERTIES:[I

    .line 1166
    const/4 v0, 0x0

    sput-object v0, Landroid/mtp/MtpDatabase;->jsonData:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x3000
        0x3001
        0x3004
        0x3005
        0x3008
        0x3009
        0x300b
        0x3801
        0x3802
        0x3804
        0x3807
        0x3808
        0x380b
        0x380d
        0xb901
        0xb902
        0xb903
        0xb982
        0xb983
        0xb984
        0xba05
        0xba10
        0xba11
        0xba14
        0xba82
        0xb906
        0x3811
        0x3812
    .end array-data

    :array_1
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc41
        0xdc0b
        0xdc44
        0xdce0
        0xdc4e
        0xdc0d
    .end array-data

    :array_2
    .array-data 4
        0xdc46
        0xdc9a
        0xdc9b
        0xdc8b
        0xdc99
        0xdc89
        0xdc8c
        0xdc96
        0xde99
        0xde92
        0xde9a
        0xde94
        0xde93
    .end array-data

    :array_3
    .array-data 4
        0xdc46
        0xdc9a
        0xdc89
        0xdc48
    .end array-data

    :array_4
    .array-data 4
        0xd401
        0xd402
        0x5003
        0x5001
        0xd407
        0xd406
    .end array-data
.end method

.method public constructor blacklist <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subDirectories"    # [Ljava/lang/String;

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 110
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 112
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    .line 115
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Landroid/util/SparseArray;

    .line 118
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Landroid/util/SparseArray;

    .line 128
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/mtp/MtpDatabase;->mSkipThumbForHost:Z

    .line 129
    iput-boolean v1, p0, Landroid/mtp/MtpDatabase;->mHostIsWindows:Z

    .line 315
    new-instance v1, Landroid/mtp/MtpDatabase$1;

    invoke-direct {v1, p0}, Landroid/mtp/MtpDatabase$1;-><init>(Landroid/mtp/MtpDatabase;)V

    iput-object v1, p0, Landroid/mtp/MtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 1159
    const/4 v1, 0x2

    new-array v2, v1, [Z

    fill-array-data v2, :array_0

    iput-object v2, p0, Landroid/mtp/MtpDatabase;->mIsBound:[Z

    .line 1160
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/mtp/MtpDatabase;->isStratCommand:Z

    .line 1161
    new-array v2, v1, [Landroid/os/Messenger;

    iput-object v2, p0, Landroid/mtp/MtpDatabase;->mService:[Landroid/os/Messenger;

    .line 1162
    new-instance v2, Landroid/os/Messenger;

    new-instance v3, Landroid/mtp/MtpDatabase$IncomingHandler;

    invoke-direct {v3}, Landroid/mtp/MtpDatabase$IncomingHandler;-><init>()V

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Landroid/mtp/MtpDatabase;->mMessenger:Landroid/os/Messenger;

    .line 1164
    const/4 v2, -0x1

    iput v2, p0, Landroid/mtp/MtpDatabase;->currentServiceID:I

    .line 1186
    new-array v2, v1, [Landroid/content/ComponentName;

    iput-object v2, p0, Landroid/mtp/MtpDatabase;->serviceComponent:[Landroid/content/ComponentName;

    .line 1187
    new-array v1, v1, [Landroid/content/ServiceConnection;

    iput-object v1, p0, Landroid/mtp/MtpDatabase;->conn:[Landroid/content/ServiceConnection;

    .line 338
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_setup()V

    .line 339
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    .line 340
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 341
    const-string v2, "media"

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v1

    iput-object v1, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 342
    new-instance v1, Landroid/mtp/MtpStorageManager;

    new-instance v2, Landroid/mtp/MtpDatabase$2;

    invoke-direct {v2, p0}, Landroid/mtp/MtpDatabase$2;-><init>(Landroid/mtp/MtpDatabase;)V

    .line 360
    if-nez p2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v3

    :goto_0
    invoke-direct {v1, v2, v3}, Landroid/mtp/MtpStorageManager;-><init>(Landroid/mtp/MtpStorageManager$MtpNotifier;Ljava/util/Set;)V

    iput-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    .line 362
    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->initDeviceProperties(Landroid/content/Context;)V

    .line 363
    const/4 v1, 0x3

    const-string/jumbo v2, "sys.usb.mtp.device_type"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/mtp/MtpDatabase;->mDeviceType:I

    .line 364
    const-string v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tablet"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    iput v1, p0, Landroid/mtp/MtpDatabase;->mDeviceType:I

    .line 365
    :cond_1
    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 366
    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private greylist-max-o beginCopyObject(III)I
    .locals 3
    .param p1, "handle"    # I
    .param p2, "newParent"    # I
    .param p3, "newStorage"    # I

    .line 687
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 688
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez p2, :cond_0

    .line 689
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, p3}, Landroid/mtp/MtpStorageManager;->getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, p2}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    .line 690
    .local v1, "parent":Landroid/mtp/MtpStorageManager$MtpObject;
    :goto_0
    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    .line 692
    :cond_1
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v2, v0, v1}, Landroid/mtp/MtpStorageManager;->beginCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)I

    move-result v2

    return v2

    .line 691
    :cond_2
    :goto_1
    const/16 v2, 0x2009

    return v2
.end method

.method private greylist-max-o beginDeleteObject(I)I
    .locals 2
    .param p1, "handle"    # I

    .line 1065
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 1066
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez v0, :cond_0

    .line 1067
    const/16 v1, 0x2009

    return v1

    .line 1069
    :cond_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, v0}, Landroid/mtp/MtpStorageManager;->beginRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1070
    const/16 v1, 0x2002

    return v1

    .line 1072
    :cond_1
    const/16 v1, 0x2001

    return v1
.end method

.method private greylist-max-o beginMoveObject(III)I
    .locals 4
    .param p1, "handle"    # I
    .param p2, "newParent"    # I
    .param p3, "newStorage"    # I

    .line 650
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 651
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez p2, :cond_0

    .line 652
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, p3}, Landroid/mtp/MtpStorageManager;->getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, p2}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    .line 653
    .local v1, "parent":Landroid/mtp/MtpStorageManager$MtpObject;
    :goto_0
    if-eqz v0, :cond_3

    if-nez v1, :cond_1

    goto :goto_2

    .line 656
    :cond_1
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v2, v0, v1}, Landroid/mtp/MtpStorageManager;->beginMoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v2

    .line 657
    .local v2, "allowed":Z
    if-eqz v2, :cond_2

    const/16 v3, 0x2001

    goto :goto_1

    :cond_2
    const/16 v3, 0x2002

    :goto_1
    return v3

    .line 654
    .end local v2    # "allowed":Z
    :cond_3
    :goto_2
    const/16 v2, 0x2009

    return v2
.end method

.method private blacklist deleteFromMedia(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/nio/file/Path;Z)V
    .locals 9
    .param p1, "obj"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "path"    # Ljava/nio/file/Path;
    .param p3, "isDir"    # Z

    .line 1088
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getVolumeName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1091
    .local v0, "objectsUri":Landroid/net/Uri;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_0

    .line 1093
    :try_start_0
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    const-string v4, "_data LIKE ?1 AND lower(substr(_data,1,?2))=lower(?3)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 1097
    invoke-interface {p2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1098
    invoke-interface {p2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1093
    invoke-virtual {v3, v0, v4, v5}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1101
    :cond_0
    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {p2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    move-object v1, v2

    .line 1102
    .local v1, "whereArgs":[Ljava/lang/String;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    const-string v3, "_data=?"

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 1103
    sget-object v2, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediaProvider didn\'t delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    :cond_1
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-interface {p2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/mtp/MtpDatabase;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1108
    .end local v1    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    .line 1106
    :catch_0
    move-exception v1

    .line 1107
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from MediaProvider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private greylist-max-o endCopyObject(IZ)V
    .locals 3
    .param p1, "handle"    # I
    .param p2, "success"    # Z

    .line 697
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 698
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, v0, p2}, Landroid/mtp/MtpStorageManager;->endCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 702
    :cond_0
    if-nez p2, :cond_1

    .line 703
    return-void

    .line 706
    :cond_1
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/mtp/MtpDatabase;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V

    .line 707
    return-void

    .line 699
    :cond_2
    :goto_0
    sget-object v1, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v2, "Failed to end copy object"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    return-void
.end method

.method private greylist-max-o endDeleteObject(IZ)V
    .locals 3
    .param p1, "handle"    # I
    .param p2, "success"    # Z

    .line 1077
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 1078
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez v0, :cond_0

    .line 1079
    return-void

    .line 1081
    :cond_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, v0, p2}, Landroid/mtp/MtpStorageManager;->endRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1082
    sget-object v1, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v2, "Failed to end remove object"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    :cond_1
    if-eqz p2, :cond_2

    .line 1084
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/mtp/MtpDatabase;->deleteFromMedia(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/nio/file/Path;Z)V

    .line 1085
    :cond_2
    return-void
.end method

.method private greylist-max-o endMoveObject(IIIIIZ)V
    .locals 8
    .param p1, "oldParent"    # I
    .param p2, "newParent"    # I
    .param p3, "oldStorage"    # I
    .param p4, "newStorage"    # I
    .param p5, "objId"    # I
    .param p6, "success"    # Z

    .line 663
    if-nez p1, :cond_0

    .line 664
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p3}, Landroid/mtp/MtpStorageManager;->getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 665
    .local v0, "oldParentObj":Landroid/mtp/MtpStorageManager$MtpObject;
    :goto_0
    if-nez p2, :cond_1

    .line 666
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, p4}, Landroid/mtp/MtpStorageManager;->getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, p2}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    .line 667
    .local v1, "newParentObj":Landroid/mtp/MtpStorageManager$MtpObject;
    :goto_1
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v2, p5}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v2

    .line 668
    .local v2, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v3

    .line 669
    .local v3, "name":Ljava/lang/String;
    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    .line 670
    invoke-virtual {v4, v0, v1, v3, p6}, Landroid/mtp/MtpStorageManager;->endMoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_3

    .line 674
    :cond_2
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v4, p5}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v2

    .line 675
    if-eqz p6, :cond_4

    if-nez v2, :cond_3

    goto :goto_2

    .line 678
    :cond_3
    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    .line 679
    .local v4, "path":Ljava/nio/file/Path;
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    .line 681
    .local v5, "oldPath":Ljava/nio/file/Path;
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-interface {v5}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/mtp/MtpDatabase;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V

    .line 682
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-interface {v4}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/mtp/MtpDatabase;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V

    .line 683
    return-void

    .line 676
    .end local v4    # "path":Ljava/nio/file/Path;
    .end local v5    # "oldPath":Ljava/nio/file/Path;
    :cond_4
    :goto_2
    return-void

    .line 671
    :cond_5
    :goto_3
    sget-object v4, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v5, "Failed to end move object"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    return-void
.end method

.method private greylist-max-o endSendObject(IZ)V
    .locals 3
    .param p1, "handle"    # I
    .param p2, "succeeded"    # Z

    .line 487
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 488
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, v0, p2}, Landroid/mtp/MtpStorageManager;->endSendObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 493
    :cond_0
    if-eqz p2, :cond_1

    .line 494
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/mtp/MtpDatabase;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V

    .line 496
    :cond_1
    return-void

    .line 489
    :cond_2
    :goto_0
    sget-object v1, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v2, "Failed to successfully end send object"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    return-void
.end method

.method private greylist-max-o getDeviceProperty(I[J[C)I
    .locals 7
    .param p1, "property"    # I
    .param p2, "outIntValue"    # [J
    .param p3, "outStringValue"    # [C

    .line 756
    const/16 v0, 0xff

    const/16 v1, 0x2001

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    .line 799
    const/16 v0, 0x200a

    return v0

    .line 792
    :sswitch_0
    iget v0, p0, Landroid/mtp/MtpDatabase;->mDeviceType:I

    int-to-long v3, v0

    aput-wide v3, p2, v2

    .line 793
    return v1

    .line 772
    :sswitch_1
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mHostType:Ljava/lang/String;

    .line 773
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 774
    .local v4, "length":I
    if-le v4, v0, :cond_0

    .line 775
    const/16 v4, 0xff

    .line 777
    :cond_0
    invoke-virtual {v3, v2, v4, p3, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 778
    aput-char v2, p3, v4

    .line 779
    return v1

    .line 763
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "length":I
    :sswitch_2
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "device_name"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 764
    .restart local v3    # "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 765
    .restart local v4    # "length":I
    if-le v4, v0, :cond_1

    .line 766
    const/16 v4, 0xff

    .line 768
    :cond_1
    invoke-virtual {v3, v2, v4, p3, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 769
    aput-char v2, p3, v4

    .line 770
    return v1

    .line 758
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "length":I
    :sswitch_3
    return v1

    .line 783
    :sswitch_4
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 784
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 785
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v3

    .line 786
    .local v3, "width":I
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v4

    .line 787
    .local v4, "height":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 788
    .local v5, "imageSize":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v2, v6, p3, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 789
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    aput-char v2, p3, v6

    .line 790
    return v1

    .line 795
    .end local v0    # "display":Landroid/view/Display;
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "imageSize":Ljava/lang/String;
    :sswitch_5
    iget v0, p0, Landroid/mtp/MtpDatabase;->mBatteryLevel:I

    int-to-long v3, v0

    aput-wide v3, p2, v2

    .line 796
    const/4 v0, 0x1

    iget v2, p0, Landroid/mtp/MtpDatabase;->mBatteryScale:I

    int-to-long v2, v2

    aput-wide v2, p2, v0

    .line 797
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x5001 -> :sswitch_5
        0x5003 -> :sswitch_4
        0xd401 -> :sswitch_3
        0xd402 -> :sswitch_2
        0xd406 -> :sswitch_1
        0xd407 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist getLockStatus()I
    .locals 3

    .line 1392
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1393
    const/4 v1, 0x0

    const-string v2, "com.samsung.android.mtp.SHARED_PREFERENCE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1394
    .local v0, "pref":Landroid/content/SharedPreferences;
    const/4 v1, 0x1

    const-string v2, "deviceLockStatus"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 1396
    .end local v0    # "pref":Landroid/content/SharedPreferences;
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private greylist-max-o getObjectFilePath(I[C[J)I
    .locals 6
    .param p1, "handle"    # I
    .param p2, "outFilePath"    # [C
    .param p3, "outFileLengthFormat"    # [J

    .line 858
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 859
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez v0, :cond_0

    .line 860
    const/16 v1, 0x2009

    return v1

    .line 863
    :cond_0
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    .line 864
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1000

    invoke-static {v2, v3}, Ljava/lang/Integer;->min(II)I

    move-result v2

    .line 865
    .local v2, "pathLen":I
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, p2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 866
    aput-char v3, p2, v2

    .line 868
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getSize()J

    move-result-wide v4

    aput-wide v4, p3, v3

    .line 869
    const/4 v3, 0x1

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v4

    int-to-long v4, v4

    aput-wide v4, p3, v3

    .line 870
    const/16 v3, 0x2001

    return v3
.end method

.method private greylist-max-o getObjectFormat(I)I
    .locals 2
    .param p1, "handle"    # I

    .line 902
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 903
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez v0, :cond_0

    .line 904
    const/4 v1, -0x1

    return v1

    .line 906
    :cond_0
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v1

    return v1
.end method

.method private greylist-max-o getObjectInfo(I[I[C[J)Z
    .locals 6
    .param p1, "handle"    # I
    .param p2, "outStorageFormatParent"    # [I
    .param p3, "outName"    # [C
    .param p4, "outCreatedModified"    # [J

    .line 839
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 840
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 841
    return v1

    .line 843
    :cond_0
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getStorageId()I

    move-result v2

    aput v2, p2, v1

    .line 844
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v2

    const/4 v3, 0x1

    aput v2, p2, v3

    .line 845
    const/4 v2, 0x2

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v4

    :goto_0
    aput v4, p2, v2

    .line 847
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0xff

    invoke-static {v2, v4}, Ljava/lang/Integer;->min(II)I

    move-result v2

    .line 848
    .local v2, "nameLen":I
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1, v2, p3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 849
    aput-char v1, p3, v2

    .line 851
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getModifiedTime()J

    move-result-wide v4

    aput-wide v4, p4, v1

    .line 852
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getModifiedTime()J

    move-result-wide v4

    aput-wide v4, p4, v3

    .line 853
    return v3
.end method

.method private greylist-max-o getObjectList(III)[I
    .locals 4
    .param p1, "storageID"    # I
    .param p2, "format"    # I
    .param p3, "parent"    # I

    .line 505
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p3, p2, p1, v1}, Landroid/mtp/MtpStorageManager;->getObjects(IIIZ)Ljava/util/List;

    move-result-object v0

    .line 507
    .local v0, "objs":Ljava/util/List;, "Ljava/util/List<Landroid/mtp/MtpStorageManager$MtpObject;>;"
    if-nez v0, :cond_0

    .line 508
    const/4 v1, 0x0

    return-object v1

    .line 510
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 511
    .local v1, "ret":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 512
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v3

    aput v3, v1, v2

    .line 511
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 514
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public static blacklist getObjectPropertiesUri(ILjava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "format"    # I
    .param p1, "volumeName"    # Ljava/lang/String;

    .line 265
    sparse-switch p0, :sswitch_data_0

    .line 295
    invoke-static {p1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 293
    :sswitch_0
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 280
    :sswitch_1
    invoke-static {p1}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 272
    :sswitch_2
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3008 -> :sswitch_2
        0x3009 -> :sswitch_2
        0x300a -> :sswitch_1
        0x300b -> :sswitch_1
        0x300c -> :sswitch_1
        0x3800 -> :sswitch_0
        0x3801 -> :sswitch_0
        0x3802 -> :sswitch_0
        0x3804 -> :sswitch_0
        0x3807 -> :sswitch_0
        0x3808 -> :sswitch_0
        0x380b -> :sswitch_0
        0x380d -> :sswitch_0
        0x380f -> :sswitch_0
        0x3810 -> :sswitch_0
        0x3811 -> :sswitch_0
        0x3812 -> :sswitch_0
        0xb900 -> :sswitch_2
        0xb901 -> :sswitch_2
        0xb902 -> :sswitch_2
        0xb903 -> :sswitch_2
        0xb980 -> :sswitch_1
        0xb981 -> :sswitch_1
        0xb982 -> :sswitch_1
        0xb984 -> :sswitch_1
    .end sparse-switch
.end method

.method private greylist-max-o getObjectPropertyList(IIIII)Landroid/mtp/MtpPropertyList;
    .locals 16
    .param p1, "handle"    # I
    .param p2, "format"    # I
    .param p3, "property"    # I
    .param p4, "groupCode"    # I
    .param p5, "depth"    # I

    .line 532
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    if-nez v3, :cond_1

    .line 533
    if-nez p4, :cond_0

    .line 534
    new-instance v4, Landroid/mtp/MtpPropertyList;

    const/16 v5, 0x2006

    invoke-direct {v4, v5}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object v4

    .line 536
    :cond_0
    new-instance v4, Landroid/mtp/MtpPropertyList;

    const v5, 0xa807

    invoke-direct {v4, v5}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object v4

    .line 538
    :cond_1
    const/4 v4, -0x1

    move/from16 v5, p5

    if-ne v5, v4, :cond_3

    if-eqz v1, :cond_2

    if-ne v1, v4, :cond_3

    .line 540
    :cond_2
    const/4 v1, -0x1

    .line 541
    .end local p1    # "handle":I
    .local v1, "handle":I
    const/4 v5, 0x0

    .line 543
    .end local p5    # "depth":I
    .local v5, "depth":I
    :cond_3
    const/4 v6, 0x1

    if-eqz v5, :cond_4

    if-eq v5, v6, :cond_4

    .line 546
    new-instance v4, Landroid/mtp/MtpPropertyList;

    const v6, 0xa808

    invoke-direct {v4, v6}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object v4

    .line 548
    :cond_4
    const/4 v7, 0x0

    .line 549
    .local v7, "objs":Ljava/util/List;, "Ljava/util/List<Landroid/mtp/MtpStorageManager$MtpObject;>;"
    const/4 v8, 0x0

    .line 550
    .local v8, "thisObj":Landroid/mtp/MtpStorageManager$MtpObject;
    const/4 v9, 0x0

    const/16 v10, 0x2009

    if-ne v1, v4, :cond_5

    .line 552
    iget-object v11, v0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v11, v9, v2, v4, v6}, Landroid/mtp/MtpStorageManager;->getObjects(IIIZ)Ljava/util/List;

    move-result-object v7

    .line 553
    if-nez v7, :cond_8

    .line 554
    new-instance v4, Landroid/mtp/MtpPropertyList;

    invoke-direct {v4, v10}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object v4

    .line 556
    :cond_5
    if-eqz v1, :cond_8

    .line 558
    iget-object v11, v0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v11, v1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v11

    .line 559
    .local v11, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez v11, :cond_6

    .line 560
    new-instance v4, Landroid/mtp/MtpPropertyList;

    invoke-direct {v4, v10}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object v4

    .line 562
    :cond_6
    invoke-virtual {v11}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v12

    if-eq v12, v2, :cond_7

    if-nez v2, :cond_8

    .line 563
    :cond_7
    move-object v8, v11

    .line 566
    .end local v11    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    :cond_8
    if-eqz v1, :cond_9

    if-ne v5, v6, :cond_b

    .line 567
    :cond_9
    if-nez v1, :cond_a

    .line 568
    const/4 v1, -0x1

    .line 571
    :cond_a
    iget-object v11, v0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v11, v1, v2, v4, v6}, Landroid/mtp/MtpStorageManager;->getObjects(IIIZ)Ljava/util/List;

    move-result-object v7

    .line 573
    if-nez v7, :cond_b

    .line 574
    new-instance v4, Landroid/mtp/MtpPropertyList;

    invoke-direct {v4, v10}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object v4

    .line 577
    :cond_b
    if-nez v7, :cond_c

    .line 578
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v10

    .line 580
    :cond_c
    if-eqz v8, :cond_d

    .line 581
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    :cond_d
    new-instance v10, Landroid/mtp/MtpPropertyList;

    const/16 v11, 0x2001

    invoke-direct {v10, v11}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    .line 586
    .local v10, "ret":Landroid/mtp/MtpPropertyList;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .end local p2    # "format":I
    .local v2, "format":I
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 587
    .local v13, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-ne v3, v4, :cond_f

    .line 588
    if-nez v2, :cond_e

    if-eqz v1, :cond_e

    if-eq v1, v4, :cond_e

    .line 590
    invoke-virtual {v13}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v2

    .line 594
    :cond_e
    iget-object v14, v0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Landroid/util/SparseArray;

    invoke-virtual {v14, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/mtp/MtpPropertyGroup;

    .line 595
    .local v14, "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    if-nez v14, :cond_10

    .line 596
    invoke-direct {v0, v2}, Landroid/mtp/MtpDatabase;->getSupportedObjectProperties(I)[I

    move-result-object v15

    .line 597
    .local v15, "propertyList":[I
    new-instance v4, Landroid/mtp/MtpPropertyGroup;

    invoke-direct {v4, v15}, Landroid/mtp/MtpPropertyGroup;-><init>([I)V

    move-object v14, v4

    .line 598
    iget-object v4, v0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 599
    .end local v15    # "propertyList":[I
    goto :goto_1

    .line 602
    .end local v14    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    :cond_f
    iget-object v4, v0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Landroid/mtp/MtpPropertyGroup;

    .line 603
    .restart local v14    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    if-nez v14, :cond_10

    .line 604
    new-array v4, v6, [I

    aput v3, v4, v9

    .line 605
    .local v4, "propertyList":[I
    new-instance v15, Landroid/mtp/MtpPropertyGroup;

    invoke-direct {v15, v4}, Landroid/mtp/MtpPropertyGroup;-><init>([I)V

    move-object v14, v15

    .line 606
    iget-object v15, v0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Landroid/util/SparseArray;

    invoke-virtual {v15, v3, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 609
    .end local v4    # "propertyList":[I
    :cond_10
    :goto_1
    iget-object v4, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {v13}, Landroid/mtp/MtpStorageManager$MtpObject;->getVolumeName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v4, v15, v13, v10}, Landroid/mtp/MtpPropertyGroup;->getPropertyList(Landroid/content/ContentProviderClient;Ljava/lang/String;Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpPropertyList;)I

    move-result v4

    .line 610
    .local v4, "err":I
    if-eq v4, v11, :cond_11

    .line 611
    new-instance v6, Landroid/mtp/MtpPropertyList;

    invoke-direct {v6, v4}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object v6

    .line 613
    .end local v4    # "err":I
    .end local v13    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    :cond_11
    const/4 v4, -0x1

    goto :goto_0

    .line 614
    .end local v14    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    :cond_12
    return-object v10
.end method

.method private greylist-max-o getObjectReferences(I)[I
    .locals 1
    .param p1, "handle"    # I

    .line 1113
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getSayHelloError()I
    .locals 4

    .line 1401
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1402
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "emergency_mode"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1404
    .local v0, "emergency_mode":Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1405
    const v1, 0xa810

    return v1

    .line 1408
    :cond_0
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.android.mtp.SHARED_PREFERENCE"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1409
    .local v2, "pref":Landroid/content/SharedPreferences;
    const-string v3, "knox"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1410
    const v1, 0xa811

    return v1

    .line 1413
    .end local v0    # "emergency_mode":Ljava/lang/String;
    .end local v2    # "pref":Landroid/content/SharedPreferences;
    :cond_1
    return v1
.end method

.method private greylist-max-o getSupportedCaptureFormats()[I
    .locals 1

    .line 312
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o getSupportedDeviceProperties()[I
    .locals 1

    .line 301
    sget-object v0, Landroid/mtp/MtpDatabase;->DEVICE_PROPERTIES:[I

    return-object v0
.end method

.method private greylist-max-o getSupportedObjectProperties(I)[I
    .locals 2
    .param p1, "format"    # I

    .line 229
    sparse-switch p1, :sswitch_data_0

    .line 260
    sget-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    return-object v0

    .line 257
    :sswitch_0
    sget-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    sget-object v1, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    .line 258
    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    .line 257
    invoke-static {v0, v1}, Ljava/util/stream/IntStream;->concat(Ljava/util/stream/IntStream;Ljava/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 258
    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 257
    return-object v0

    .line 245
    :sswitch_1
    sget-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    sget-object v1, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    .line 246
    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    .line 245
    invoke-static {v0, v1}, Ljava/util/stream/IntStream;->concat(Ljava/util/stream/IntStream;Ljava/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 246
    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 245
    return-object v0

    .line 236
    :sswitch_2
    sget-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    sget-object v1, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    .line 237
    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    .line 236
    invoke-static {v0, v1}, Ljava/util/stream/IntStream;->concat(Ljava/util/stream/IntStream;Ljava/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 237
    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 236
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3008 -> :sswitch_2
        0x3009 -> :sswitch_2
        0x300a -> :sswitch_1
        0x300b -> :sswitch_1
        0x300c -> :sswitch_1
        0x3800 -> :sswitch_0
        0x3801 -> :sswitch_0
        0x3804 -> :sswitch_0
        0x3807 -> :sswitch_0
        0x380b -> :sswitch_0
        0x380d -> :sswitch_0
        0x380f -> :sswitch_0
        0x3810 -> :sswitch_0
        0x3811 -> :sswitch_0
        0x3812 -> :sswitch_0
        0xb900 -> :sswitch_2
        0xb901 -> :sswitch_2
        0xb902 -> :sswitch_2
        0xb903 -> :sswitch_2
        0xb980 -> :sswitch_1
        0xb981 -> :sswitch_1
        0xb982 -> :sswitch_1
        0xb984 -> :sswitch_1
    .end sparse-switch
.end method

.method private greylist-max-o getSupportedPlaybackFormats()[I
    .locals 1

    .line 306
    sget-object v0, Landroid/mtp/MtpDatabase;->PLAYBACK_FORMATS:[I

    return-object v0
.end method

.method private blacklist getThumbnailProcess(Ljava/lang/String;Landroid/graphics/Bitmap;)[B
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 910
    const/16 v0, 0x64

    .line 912
    .local v0, "compressSize":I
    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 913
    :try_start_0
    sget-object v2, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v3, "getThumbnailProcess: Fail to generate thumbnail. Probably unsupported or corrupted image"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    return-object v1

    .line 930
    :catch_0
    move-exception v2

    goto :goto_1

    .line 917
    :cond_0
    const v2, 0x32000

    .line 918
    .local v2, "streamLength":I
    const/4 v3, 0x0

    .line 920
    .local v3, "byteStream":Ljava/io/ByteArrayOutputStream;
    :goto_0
    const v4, 0x32000

    if-lt v2, v4, :cond_1

    if-lez v0, :cond_1

    .line 921
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v3, v4

    .line 922
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2, v4, v0, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 923
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    move v2, v4

    .line 924
    add-int/lit8 v0, v0, -0xa

    goto :goto_0

    .line 927
    :cond_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 929
    .local v1, "byteArray":[B
    return-object v1

    .line 931
    .end local v1    # "byteArray":[B
    .end local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .local v2, "oomEx":Ljava/lang/OutOfMemoryError;
    :goto_1
    sget-object v3, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OutOfMemoryError:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    .end local v2    # "oomEx":Ljava/lang/OutOfMemoryError;
    return-object v1
.end method

.method private greylist-max-o initDeviceProperties(Landroid/content/Context;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;

    .line 434
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "device-properties"

    .line 435
    .local v3, "devicePropertiesName":Ljava/lang/String;
    const-string v4, "device-properties"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, v1, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    .line 437
    invoke-virtual {v2, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 439
    .local v6, "databaseFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 442
    const/4 v7, 0x0

    .line 443
    .local v7, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 445
    .local v8, "c":Landroid/database/Cursor;
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v2, v4, v5, v0}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    move-object v7, v0

    .line 446
    if-eqz v7, :cond_1

    .line 447
    const-string v10, "properties"

    const-string v0, "_id"

    const-string v9, "code"

    const-string/jumbo v11, "value"

    filled-new-array {v0, v9, v11}, [Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v9, v7

    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v8, v0

    .line 449
    if-eqz v8, :cond_1

    .line 450
    iget-object v0, v1, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 451
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 452
    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 453
    .local v9, "name":Ljava/lang/String;
    const/4 v10, 0x2

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 454
    .local v10, "value":Ljava/lang/String;
    invoke-interface {v0, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 455
    nop

    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    goto :goto_0

    .line 456
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    .end local v0    # "e":Landroid/content/SharedPreferences$Editor;
    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 463
    :cond_2
    if-eqz v7, :cond_4

    :goto_1
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    .line 462
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v9, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v10, "failed to migrate device properties"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 462
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 463
    :cond_3
    if-eqz v7, :cond_4

    goto :goto_1

    .line 465
    :cond_4
    :goto_2
    invoke-virtual {v2, v4}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    goto :goto_4

    .line 462
    :goto_3
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 463
    :cond_5
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 464
    :cond_6
    throw v0

    .line 467
    .end local v7    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "c":Landroid/database/Cursor;
    :cond_7
    :goto_4
    const-string v0, ""

    iput-object v0, v1, Landroid/mtp/MtpDatabase;->mHostType:Ljava/lang/String;

    .line 468
    iput-boolean v5, v1, Landroid/mtp/MtpDatabase;->mSkipThumbForHost:Z

    .line 469
    iput-boolean v5, v1, Landroid/mtp/MtpDatabase;->mHostIsWindows:Z

    .line 470
    return-void
.end method

.method public static final blacklist intToByteArray(I)[B
    .locals 3
    .param p0, "value"    # I

    .line 1241
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 1242
    .local v0, "byteArray":[B
    int-to-byte v1, p0

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 1243
    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 1244
    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 1245
    shr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 1247
    return-object v0
.end method

.method private final native greylist-max-o native_finalize()V
.end method

.method private final native greylist-max-o native_setup()V
.end method

.method private blacklist openFilePath(Ljava/lang/String;Z)I
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "transcode"    # Z

    .line 875
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 876
    .local v0, "uri":Landroid/net/Uri;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 877
    sget-object v2, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to obtain URI for openFile with transcode support: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    return v1

    .line 882
    :cond_0
    :try_start_0
    sget-object v2, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openFile with transcode support: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 884
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "video/hevc"

    const-string v4, "android.provider.extra.MEDIA_CAPABILITIES"

    if-eqz p2, :cond_1

    .line 885
    :try_start_1
    new-instance v5, Landroid/media/ApplicationMediaCapabilities$Builder;

    invoke-direct {v5}, Landroid/media/ApplicationMediaCapabilities$Builder;-><init>()V

    .line 886
    invoke-virtual {v5, v3}, Landroid/media/ApplicationMediaCapabilities$Builder;->addUnsupportedVideoMimeType(Ljava/lang/String;)Landroid/media/ApplicationMediaCapabilities$Builder;

    move-result-object v3

    .line 887
    invoke-virtual {v3}, Landroid/media/ApplicationMediaCapabilities$Builder;->build()Landroid/media/ApplicationMediaCapabilities;

    move-result-object v3

    .line 885
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 889
    :cond_1
    new-instance v5, Landroid/media/ApplicationMediaCapabilities$Builder;

    invoke-direct {v5}, Landroid/media/ApplicationMediaCapabilities$Builder;-><init>()V

    .line 890
    invoke-virtual {v5, v3}, Landroid/media/ApplicationMediaCapabilities$Builder;->addSupportedVideoMimeType(Ljava/lang/String;)Landroid/media/ApplicationMediaCapabilities$Builder;

    move-result-object v3

    .line 891
    invoke-virtual {v3}, Landroid/media/ApplicationMediaCapabilities$Builder;->build()Landroid/media/ApplicationMediaCapabilities;

    move-result-object v3

    .line 889
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 893
    :goto_0
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    const-string v4, "*/*"

    invoke-virtual {v3, v0, v4, v2}, Landroid/content/ContentProviderClient;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    .line 894
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 893
    return v1

    .line 895
    .end local v2    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 896
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to openFile with transcode support: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 897
    return v1
.end method

.method private greylist-max-o renameFile(ILjava/lang/String;)I
    .locals 7
    .param p1, "handle"    # I
    .param p2, "newName"    # Ljava/lang/String;

    .line 618
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 619
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez v0, :cond_0

    .line 620
    const/16 v1, 0x2009

    return v1

    .line 622
    :cond_0
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    .line 625
    .local v1, "oldPath":Ljava/nio/file/Path;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v2, v0, p2}, Landroid/mtp/MtpStorageManager;->beginRenameObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x2002

    if-nez v2, :cond_1

    .line 626
    return v3

    .line 627
    :cond_1
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    .line 628
    .local v2, "newPath":Ljava/nio/file/Path;
    invoke-interface {v1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v4

    invoke-interface {v2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    .line 630
    .local v4, "success":Z
    :try_start_0
    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Landroid/system/OsConstants;->F_OK:I

    invoke-static {v5, v6}, Landroid/system/Os;->access(Ljava/lang/String;I)Z

    .line 631
    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Landroid/system/OsConstants;->F_OK:I

    invoke-static {v5, v6}, Landroid/system/Os;->access(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    goto :goto_0

    .line 632
    :catch_0
    move-exception v5

    .line 636
    :goto_0
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-interface {v1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v6

    invoke-interface {v6}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6, v4}, Landroid/mtp/MtpStorageManager;->endRenameObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_2

    .line 637
    sget-object v5, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v6, "Failed to end rename object"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_2
    if-nez v4, :cond_3

    .line 640
    return v3

    .line 643
    :cond_3
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-interface {v1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/mtp/MtpDatabase;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V

    .line 644
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-interface {v2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/mtp/MtpDatabase;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V

    .line 645
    const/16 v3, 0x2001

    return v3
.end method

.method private greylist-max-o rescanFile(Ljava/lang/String;II)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "handle"    # I
    .param p3, "format"    # I

    .line 500
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    .line 501
    return-void
.end method

.method private blacklist sendSsmMessage(II[B)[B
    .locals 10
    .param p1, "commandId"    # I
    .param p2, "serviceID"    # I
    .param p3, "sendData"    # [B

    .line 1253
    sget-object v0, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSsmMessage: commandId=>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "serviceID=>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    const/4 v1, 0x0

    .line 1255
    .local v1, "resultResponse":[B
    iget-boolean v2, p0, Landroid/mtp/MtpDatabase;->isStratCommand:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/mtp/MtpDatabase;->initializeSerivce()V

    .line 1257
    :cond_0
    const-string v2, "UTF-8"

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x4

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_6

    .line 1334
    :pswitch_0
    iget v0, p0, Landroid/mtp/MtpDatabase;->currentServiceID:I

    if-ltz v0, :cond_3

    iget-object v9, p0, Landroid/mtp/MtpDatabase;->mService:[Landroid/os/Messenger;

    aget-object v0, v9, v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1337
    :cond_1
    sget-object v0, Landroid/mtp/MtpDatabase;->jsonData:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1338
    new-array v0, v8, [B

    .line 1339
    .end local v1    # "resultResponse":[B
    .local v0, "resultResponse":[B
    invoke-static {v4}, Landroid/mtp/MtpDatabase;->intToByteArray(I)[B

    move-result-object v1

    .end local v0    # "resultResponse":[B
    .restart local v1    # "resultResponse":[B
    goto/16 :goto_6

    .line 1342
    :cond_2
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1343
    .local v0, "tempData":[B
    array-length v2, v0

    const/16 v4, 0x8

    add-int/2addr v2, v4

    new-array v2, v2, [B

    move-object v1, v2

    .line 1345
    invoke-static {v6}, Landroid/mtp/MtpDatabase;->intToByteArray(I)[B

    move-result-object v2

    invoke-static {v2, v5, v1, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1346
    array-length v2, v0

    invoke-static {v2}, Landroid/mtp/MtpDatabase;->intToByteArray(I)[B

    move-result-object v2

    invoke-static {v2, v5, v1, v8, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1347
    array-length v2, v0

    invoke-static {v0, v5, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1349
    sput-object v3, Landroid/mtp/MtpDatabase;->jsonData:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1355
    .end local v0    # "tempData":[B
    goto/16 :goto_6

    .line 1350
    :catch_0
    move-exception v0

    .line 1351
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1352
    sget-object v2, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v3, "get command exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    new-array v1, v8, [B

    .line 1354
    invoke-static {v7}, Landroid/mtp/MtpDatabase;->intToByteArray(I)[B

    move-result-object v1

    goto/16 :goto_6

    .line 1335
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_0
    new-array v0, v8, [B

    .line 1336
    .end local v1    # "resultResponse":[B
    .local v0, "resultResponse":[B
    invoke-static {v7}, Landroid/mtp/MtpDatabase;->intToByteArray(I)[B

    move-result-object v1

    .end local v0    # "resultResponse":[B
    .restart local v1    # "resultResponse":[B
    goto/16 :goto_6

    .line 1311
    :pswitch_1
    new-array v0, v8, [B

    .line 1313
    .end local v1    # "resultResponse":[B
    .restart local v0    # "resultResponse":[B
    iget v1, p0, Landroid/mtp/MtpDatabase;->currentServiceID:I

    if-ltz v1, :cond_5

    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mService:[Landroid/os/Messenger;

    aget-object v1, v5, v1

    if-nez v1, :cond_4

    goto :goto_1

    .line 1317
    :cond_4
    :try_start_1
    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 1318
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mMessenger:Landroid/os/Messenger;

    iput-object v3, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 1319
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1320
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v4, "json"

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p3, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1322
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mService:[Landroid/os/Messenger;

    iget v4, p0, Landroid/mtp/MtpDatabase;->currentServiceID:I

    aget-object v2, v2, v4

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 1323
    invoke-static {v6}, Landroid/mtp/MtpDatabase;->intToByteArray(I)[B

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 1328
    .end local v0    # "resultResponse":[B
    .end local v3    # "bundle":Landroid/os/Bundle;
    .local v1, "resultResponse":[B
    goto/16 :goto_6

    .line 1324
    .end local v1    # "resultResponse":[B
    .restart local v0    # "resultResponse":[B
    :catch_1
    move-exception v1

    .line 1325
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1326
    sget-object v2, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v3, "send command exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    invoke-static {v7}, Landroid/mtp/MtpDatabase;->intToByteArray(I)[B

    move-result-object v1

    .line 1330
    .end local v0    # "resultResponse":[B
    .local v1, "resultResponse":[B
    goto/16 :goto_6

    .line 1314
    .end local v1    # "resultResponse":[B
    .restart local v0    # "resultResponse":[B
    :cond_5
    :goto_1
    invoke-static {v4}, Landroid/mtp/MtpDatabase;->intToByteArray(I)[B

    move-result-object v1

    .end local v0    # "resultResponse":[B
    .restart local v1    # "resultResponse":[B
    goto/16 :goto_6

    .line 1288
    :pswitch_2
    new-array v0, v8, [B

    .line 1289
    .end local v1    # "resultResponse":[B
    .restart local v0    # "resultResponse":[B
    iget v1, p0, Landroid/mtp/MtpDatabase;->currentServiceID:I

    if-ltz v1, :cond_8

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mService:[Landroid/os/Messenger;

    aget-object v1, v2, v1

    if-nez v1, :cond_6

    goto :goto_3

    .line 1293
    :cond_6
    :try_start_2
    invoke-static {v3, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 1294
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMessenger:Landroid/os/Messenger;

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 1295
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mService:[Landroid/os/Messenger;

    iget v4, p0, Landroid/mtp/MtpDatabase;->currentServiceID:I

    aget-object v2, v2, v4

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 1297
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mIsBound:[Z

    iget v4, p0, Landroid/mtp/MtpDatabase;->currentServiceID:I

    aget-boolean v2, v2, v4

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    iget-object v8, p0, Landroid/mtp/MtpDatabase;->conn:[Landroid/content/ServiceConnection;

    aget-object v4, v8, v4

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1298
    :cond_7
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mIsBound:[Z

    iget v4, p0, Landroid/mtp/MtpDatabase;->currentServiceID:I

    aput-boolean v5, v2, v4

    .line 1299
    invoke-static {v6}, Landroid/mtp/MtpDatabase;->intToByteArray(I)[B

    move-result-object v2

    move-object v0, v2

    .line 1300
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mService:[Landroid/os/Messenger;

    iget v4, p0, Landroid/mtp/MtpDatabase;->currentServiceID:I

    aput-object v3, v2, v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1305
    .end local v1    # "msg":Landroid/os/Message;
    move-object v1, v0

    goto :goto_2

    .line 1301
    :catch_2
    move-exception v1

    .line 1302
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1303
    sget-object v2, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v3, "byebye exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    invoke-static {v7}, Landroid/mtp/MtpDatabase;->intToByteArray(I)[B

    move-result-object v0

    move-object v1, v0

    .line 1306
    .end local v0    # "resultResponse":[B
    .local v1, "resultResponse":[B
    :goto_2
    const/4 v0, -0x1

    iput v0, p0, Landroid/mtp/MtpDatabase;->currentServiceID:I

    .line 1308
    goto/16 :goto_6

    .line 1290
    .end local v1    # "resultResponse":[B
    .restart local v0    # "resultResponse":[B
    :cond_8
    :goto_3
    invoke-static {v4}, Landroid/mtp/MtpDatabase;->intToByteArray(I)[B

    move-result-object v1

    .end local v0    # "resultResponse":[B
    .restart local v1    # "resultResponse":[B
    goto/16 :goto_6

    .line 1259
    :pswitch_3
    iput p2, p0, Landroid/mtp/MtpDatabase;->currentServiceID:I

    .line 1260
    new-array v1, v8, [B

    .line 1262
    if-ltz p2, :cond_c

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mIsBound:[Z

    aget-boolean v2, v2, p2

    if-ne v2, v6, :cond_9

    goto :goto_5

    .line 1267
    :cond_9
    :try_start_3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1268
    .local v2, "i":Landroid/content/Intent;
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->serviceComponent:[Landroid/content/ComponentName;

    iget v4, p0, Landroid/mtp/MtpDatabase;->currentServiceID:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1269
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/mtp/MtpDatabase;->conn:[Landroid/content/ServiceConnection;

    iget v5, p0, Landroid/mtp/MtpDatabase;->currentServiceID:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v2, v4, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    .line 1270
    .local v3, "bSuccess":Z
    if-eqz v3, :cond_a

    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mIsBound:[Z

    iget v5, p0, Landroid/mtp/MtpDatabase;->currentServiceID:I

    aput-boolean v6, v4, v5

    .line 1271
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bind result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mIsBound:[Z

    iget v4, p0, Landroid/mtp/MtpDatabase;->currentServiceID:I

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_b

    .line 1274
    invoke-static {v6}, Landroid/mtp/MtpDatabase;->intToByteArray(I)[B

    move-result-object v0

    move-object v1, v0

    .end local v1    # "resultResponse":[B
    .restart local v0    # "resultResponse":[B
    goto :goto_4

    .line 1276
    .end local v0    # "resultResponse":[B
    .restart local v1    # "resultResponse":[B
    :cond_b
    invoke-static {v7}, Landroid/mtp/MtpDatabase;->intToByteArray(I)[B

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v1, v0

    .line 1283
    .end local v2    # "i":Landroid/content/Intent;
    .end local v3    # "bSuccess":Z
    :goto_4
    goto :goto_6

    .line 1279
    :catch_3
    move-exception v0

    .line 1280
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1281
    sget-object v2, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v3, "bind exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    invoke-static {v7}, Landroid/mtp/MtpDatabase;->intToByteArray(I)[B

    move-result-object v1

    .line 1285
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_6

    .line 1263
    :cond_c
    :goto_5
    const-string v2, "Already bindservice."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    invoke-static {v7}, Landroid/mtp/MtpDatabase;->intToByteArray(I)[B

    move-result-object v1

    .line 1360
    :goto_6
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o setDeviceProperty(IJLjava/lang/String;)I
    .locals 4
    .param p1, "property"    # I
    .param p2, "intValue"    # J
    .param p4, "stringValue"    # Ljava/lang/String;

    .line 805
    const/16 v0, 0x2001

    sparse-switch p1, :sswitch_data_0

    .line 833
    const/16 v0, 0x200a

    return v0

    .line 822
    :sswitch_0
    iput-object p4, p0, Landroid/mtp/MtpDatabase;->mHostType:Ljava/lang/String;

    .line 823
    sget-object v1, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDeviceProperty."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    const-string v1, "Android/"

    invoke-virtual {p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 826
    iput-boolean v2, p0, Landroid/mtp/MtpDatabase;->mSkipThumbForHost:Z

    goto :goto_0

    .line 827
    :cond_0
    const-string v1, "Windows/"

    invoke-virtual {p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 828
    iput-boolean v2, p0, Landroid/mtp/MtpDatabase;->mHostIsWindows:Z

    .line 830
    :cond_1
    :goto_0
    return v0

    .line 811
    :sswitch_1
    const/16 v1, 0x2002

    :try_start_0
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_name"

    invoke-static {v2, v3, p4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 813
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 814
    .local v2, "e":Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 815
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    goto :goto_1

    .line 816
    :cond_2
    move v0, v1

    .line 815
    :goto_1
    return v0

    .line 817
    .end local v2    # "e":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v0

    .line 818
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 819
    return v1

    .line 807
    .end local v0    # "ex":Ljava/lang/Exception;
    :sswitch_2
    return v0

    :sswitch_data_0
    .sparse-switch
        0xd401 -> :sswitch_2
        0xd402 -> :sswitch_1
        0xd406 -> :sswitch_0
    .end sparse-switch
.end method

.method private greylist-max-o setObjectProperty(IIJLjava/lang/String;)I
    .locals 1
    .param p1, "handle"    # I
    .param p2, "property"    # I
    .param p3, "intValue"    # J
    .param p5, "stringValue"    # Ljava/lang/String;

    .line 742
    packed-switch p2, :pswitch_data_0

    .line 747
    const v0, 0xa80a

    return v0

    .line 744
    :pswitch_0
    invoke-direct {p0, p1, p5}, Landroid/mtp/MtpDatabase;->renameFile(ILjava/lang/String;)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0xdc07
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o setObjectReferences(I[I)I
    .locals 16
    .param p1, "handle"    # I
    .param p2, "references"    # [I

    .line 1118
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v0, v1, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    move/from16 v3, p1

    invoke-virtual {v0, v3}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    .line 1119
    .local v4, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    const/16 v5, 0x2002

    if-nez v4, :cond_0

    .line 1120
    return v5

    .line 1122
    :cond_0
    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1123
    .local v6, "plaPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    .line 1124
    .local v7, "plaFile":Ljava/io/File;
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v0

    .line 1125
    .local v9, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v0, Ljava/io/OutputStreamWriter;

    const-string v10, "UTF8"

    invoke-direct {v0, v9, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object v10, v0

    .line 1126
    .local v10, "osw":Ljava/io/OutputStreamWriter;
    :try_start_2
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v11, v0

    .line 1127
    .local v11, "bw":Ljava/io/BufferedWriter;
    :try_start_3
    array-length v0, v2

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v0, :cond_1

    aget v13, v2, v12

    .line 1128
    .local v13, "ref":I
    iget-object v14, v1, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v14, v13}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v14

    .line 1129
    .local v14, "oRef":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-virtual {v14}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v15

    invoke-interface {v15}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1130
    .local v15, "path":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1127
    .end local v13    # "ref":I
    .end local v14    # "oRef":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local v15    # "path":Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    const/16 v5, 0x2002

    goto :goto_0

    .line 1132
    :cond_1
    :try_start_4
    invoke-virtual {v11}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v11    # "bw":Ljava/io/BufferedWriter;
    :try_start_5
    invoke-virtual {v10}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .end local v10    # "osw":Ljava/io/OutputStreamWriter;
    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_4

    .line 1124
    .restart local v10    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v11    # "bw":Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v0

    move-object v5, v0

    :try_start_7
    invoke-virtual {v11}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v8, v0

    :try_start_8
    invoke-virtual {v5, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local v6    # "plaPath":Ljava/lang/String;
    .end local v7    # "plaFile":Ljava/io/File;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "osw":Ljava/io/OutputStreamWriter;
    .end local p0    # "this":Landroid/mtp/MtpDatabase;
    .end local p1    # "handle":I
    .end local p2    # "references":[I
    :goto_1
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .end local v11    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .restart local v6    # "plaPath":Ljava/lang/String;
    .restart local v7    # "plaFile":Ljava/io/File;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "osw":Ljava/io/OutputStreamWriter;
    .restart local p0    # "this":Landroid/mtp/MtpDatabase;
    .restart local p1    # "handle":I
    .restart local p2    # "references":[I
    :catchall_2
    move-exception v0

    move-object v5, v0

    :try_start_9
    invoke-virtual {v10}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v8, v0

    :try_start_a
    invoke-virtual {v5, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local v6    # "plaPath":Ljava/lang/String;
    .end local v7    # "plaFile":Ljava/io/File;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local p0    # "this":Landroid/mtp/MtpDatabase;
    .end local p1    # "handle":I
    .end local p2    # "references":[I
    :goto_2
    throw v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .end local v10    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v4    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .restart local v6    # "plaPath":Ljava/lang/String;
    .restart local v7    # "plaFile":Ljava/io/File;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Landroid/mtp/MtpDatabase;
    .restart local p1    # "handle":I
    .restart local p2    # "references":[I
    :catchall_4
    move-exception v0

    move-object v5, v0

    :try_start_b
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v0

    move-object v8, v0

    :try_start_c
    invoke-virtual {v5, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local v6    # "plaPath":Ljava/lang/String;
    .end local v7    # "plaFile":Ljava/io/File;
    .end local p0    # "this":Landroid/mtp/MtpDatabase;
    .end local p1    # "handle":I
    .end local p2    # "references":[I
    :goto_3
    throw v5
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_0

    .line 1136
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .restart local v6    # "plaPath":Ljava/lang/String;
    .restart local v7    # "plaFile":Ljava/io/File;
    .restart local p0    # "this":Landroid/mtp/MtpDatabase;
    .restart local p1    # "handle":I
    .restart local p2    # "references":[I
    :catch_0
    move-exception v0

    .line 1137
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_5

    .line 1134
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1135
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "ex":Ljava/io/IOException;
    goto :goto_4

    .line 1132
    :catch_2
    move-exception v0

    .line 1133
    .local v0, "ex":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1138
    .end local v0    # "ex":Ljava/io/FileNotFoundException;
    :goto_4
    nop

    .line 1140
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x2e

    invoke-virtual {v6, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ".m3u"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1143
    .local v5, "newPath":Ljava/lang/String;
    :try_start_d
    new-array v0, v8, [Ljava/lang/String;

    invoke-static {v6, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    new-array v9, v8, [Ljava/lang/String;

    invoke-static {v5, v9}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/nio/file/CopyOption;

    sget-object v10, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v0, v8, v9}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 1144
    iget-object v0, v1, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v8}, Landroid/mtp/MtpDatabase;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    .line 1148
    nop

    .line 1149
    const/16 v0, 0x2001

    return v0

    .line 1145
    :catch_3
    move-exception v0

    .line 1146
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1147
    const/16 v8, 0x2002

    return v8
.end method

.method private blacklist setOpenSession(Z)V
    .locals 3
    .param p1, "value"    # Z

    .line 1382
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1383
    const/4 v1, 0x0

    const-string v2, "com.samsung.android.mtp.SHARED_PREFERENCE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1384
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1385
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "opensession"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1386
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1388
    .end local v0    # "pref":Landroid/content/SharedPreferences;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method private static blacklist updateMediaStore(Landroid/content/Context;Ljava/io/File;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    .line 734
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 735
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Landroid/mtp/MtpDatabase$UpdateMediaStoreThread;

    invoke-direct {v2, v0, p1}, Landroid/mtp/MtpDatabase$UpdateMediaStoreThread;-><init>(Landroid/content/ContentResolver;Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 736
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 737
    return-void
.end method


# virtual methods
.method public greylist-max-o addStorage(Landroid/os/storage/StorageVolume;)V
    .locals 3
    .param p1, "storage"    # Landroid/os/storage/StorageVolume;

    .line 412
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    new-instance v1, Landroid/mtp/MtpDatabase$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/mtp/MtpDatabase$$ExternalSyntheticLambda0;-><init>(Landroid/mtp/MtpDatabase;)V

    invoke-virtual {v0, p1, v1}, Landroid/mtp/MtpStorageManager;->addMtpStorage(Landroid/os/storage/StorageVolume;Ljava/util/function/Supplier;)Landroid/mtp/MtpStorage;

    move-result-object v0

    .line 413
    .local v0, "mtpStorage":Landroid/mtp/MtpStorage;
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 414
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    if-eqz v1, :cond_0

    .line 416
    invoke-virtual {v1, v0}, Landroid/mtp/MtpServer;->addStorage(Landroid/mtp/MtpStorage;)V

    .line 419
    :cond_0
    return-void
.end method

.method public greylist-max-o beginSendObject(Ljava/lang/String;III)I
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "format"    # I
    .param p3, "parent"    # I
    .param p4, "storageId"    # I

    .line 476
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    if-nez p3, :cond_0

    invoke-virtual {v0, p4}, Landroid/mtp/MtpStorageManager;->getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p3}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 477
    .local v0, "parentObj":Landroid/mtp/MtpStorageManager$MtpObject;
    :goto_0
    if-nez v0, :cond_1

    .line 478
    const/4 v1, -0x1

    return v1

    .line 481
    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 482
    .local v1, "objPath":Ljava/nio/file/Path;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-interface {v1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3, p2}, Landroid/mtp/MtpStorageManager;->beginSendObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method public whitelist test-api close()V
    .locals 3

    .line 389
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager;->close()V

    .line 390
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 391
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    .line 395
    :cond_0
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_finalize()V

    .line 397
    :cond_1
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 402
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 405
    :cond_0
    invoke-virtual {p0}, Landroid/mtp/MtpDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 408
    nop

    .line 409
    return-void

    .line 407
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 408
    throw v0
.end method

.method public blacklist getContext()Landroid/content/Context;
    .locals 1

    .line 384
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public greylist-max-o getNumObjects(III)I
    .locals 2
    .param p1, "storageID"    # I
    .param p2, "format"    # I
    .param p3, "parent"    # I

    .line 520
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p2, p1, v1}, Landroid/mtp/MtpStorageManager;->getObjects(IIIZ)Ljava/util/List;

    move-result-object v0

    .line 522
    .local v0, "objs":Ljava/util/List;, "Ljava/util/List<Landroid/mtp/MtpStorageManager$MtpObject;>;"
    if-nez v0, :cond_0

    .line 523
    const/4 v1, -0x1

    return v1

    .line 525
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    return v1
.end method

.method public blacklist getThumbnailData(I)[B
    .locals 14
    .param p1, "handle"    # I

    .line 987
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 988
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 989
    return-object v1

    .line 991
    :cond_0
    const/4 v2, 0x0

    .line 992
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    .line 993
    .local v3, "path":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v4

    const-string v5, "cannot create thumbnail"

    const/16 v6, 0x100

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_3

    .line 1006
    :sswitch_0
    const/4 v4, 0x0

    .line 1007
    .local v4, "cursor":Landroid/database/Cursor;
    new-instance v5, Landroid/os/CancellationSignal;

    invoke-direct {v5}, Landroid/os/CancellationSignal;-><init>()V

    .line 1009
    .local v5, "cs":Landroid/os/CancellationSignal;
    :try_start_0
    iget-boolean v7, p0, Landroid/mtp/MtpDatabase;->mSkipThumbForHost:Z

    if-eqz v7, :cond_1

    .line 1010
    sget-object v7, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v8, "getThumbnailData: Skip runtime thumbnail."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    :cond_1
    iget-object v7, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    const-string v11, "_data=?"

    const/4 v7, 0x1

    new-array v12, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v12, v7

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    move-object v4, v7

    .line 1014
    if-eqz v4, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_2

    .line 1015
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1016
    const-string v7, "_id"

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1017
    .local v7, "imageId":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 1018
    .local v8, "uri":Landroid/net/Uri;
    iget-object v9, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    new-instance v10, Landroid/util/Size;

    invoke-direct {v10, v6, v6}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v9, v8, v10, v5}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v2, v9

    .line 1020
    .end local v7    # "imageId":I
    .end local v8    # "uri":Landroid/net/Uri;
    :cond_2
    if-eqz v2, :cond_4

    .line 1021
    invoke-direct {p0, v3, v2}, Landroid/mtp/MtpDatabase;->getThumbnailProcess(Ljava/lang/String;Landroid/graphics/Bitmap;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1026
    if-eqz v4, :cond_3

    .line 1027
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1021
    :cond_3
    return-object v1

    .line 1026
    :cond_4
    if-eqz v4, :cond_5

    .line 1027
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1026
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1023
    :catch_0
    move-exception v7

    .line 1024
    .local v7, "ex":Ljava/io/IOException;
    :try_start_1
    sget-object v8, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v9, "cannot load thumbnail."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1026
    nop

    .end local v7    # "ex":Ljava/io/IOException;
    if-eqz v4, :cond_5

    .line 1027
    goto :goto_0

    .line 1031
    :cond_5
    :goto_1
    :try_start_2
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Landroid/util/Size;

    invoke-direct {v8, v6, v6}, Landroid/util/Size;-><init>(II)V

    invoke-static {v7, v8, v5}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/io/File;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v2, v6

    .line 1032
    invoke-direct {p0, v3, v2}, Landroid/mtp/MtpDatabase;->getThumbnailProcess(Ljava/lang/String;Landroid/graphics/Bitmap;)[B

    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v1

    .line 1033
    :catch_1
    move-exception v6

    .line 1034
    .local v6, "ex":Ljava/io/IOException;
    sget-object v7, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v8, "cannot create thumbnail."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    .end local v6    # "ex":Ljava/io/IOException;
    goto :goto_3

    .line 1026
    :goto_2
    if-eqz v4, :cond_6

    .line 1027
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1028
    :cond_6
    throw v1

    .line 1053
    .end local v4    # "cursor":Landroid/database/Cursor;
    .end local v5    # "cs":Landroid/os/CancellationSignal;
    :sswitch_1
    :try_start_3
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Landroid/util/Size;

    invoke-direct {v7, v6, v6}, Landroid/util/Size;-><init>(II)V

    new-instance v6, Landroid/os/CancellationSignal;

    invoke-direct {v6}, Landroid/os/CancellationSignal;-><init>()V

    invoke-static {v4, v7, v6}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/io/File;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v2, v4

    .line 1054
    invoke-direct {p0, v3, v2}, Landroid/mtp/MtpDatabase;->getThumbnailProcess(Ljava/lang/String;Landroid/graphics/Bitmap;)[B

    move-result-object v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    return-object v1

    .line 1055
    :catch_2
    move-exception v4

    .line 1056
    .local v4, "ex":Ljava/io/IOException;
    sget-object v6, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1039
    .end local v4    # "ex":Ljava/io/IOException;
    :sswitch_2
    :try_start_4
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Landroid/util/Size;

    invoke-direct {v7, v6, v6}, Landroid/util/Size;-><init>(II)V

    new-instance v6, Landroid/os/CancellationSignal;

    invoke-direct {v6}, Landroid/os/CancellationSignal;-><init>()V

    invoke-static {v4, v7, v6}, Landroid/media/ThumbnailUtils;->createAudioThumbnail(Ljava/io/File;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v2, v4

    .line 1040
    invoke-direct {p0, v3, v2}, Landroid/mtp/MtpDatabase;->getThumbnailProcess(Ljava/lang/String;Landroid/graphics/Bitmap;)[B

    move-result-object v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    return-object v1

    .line 1041
    :catch_3
    move-exception v4

    .line 1042
    .restart local v4    # "ex":Ljava/io/IOException;
    sget-object v6, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    .end local v4    # "ex":Ljava/io/IOException;
    nop

    .line 1060
    :goto_3
    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x3009 -> :sswitch_2
        0x300a -> :sswitch_1
        0x300b -> :sswitch_1
        0x300c -> :sswitch_1
        0x3800 -> :sswitch_0
        0x3801 -> :sswitch_0
        0x3802 -> :sswitch_0
        0x3804 -> :sswitch_0
        0x3807 -> :sswitch_0
        0x3808 -> :sswitch_0
        0x380b -> :sswitch_0
        0x380d -> :sswitch_0
        0x380f -> :sswitch_0
        0x3810 -> :sswitch_0
        0x3811 -> :sswitch_0
        0x3812 -> :sswitch_0
        0xb980 -> :sswitch_1
        0xb981 -> :sswitch_1
        0xb982 -> :sswitch_1
        0xb984 -> :sswitch_1
    .end sparse-switch
.end method

.method public blacklist getThumbnailInfo(I[J)Z
    .locals 9
    .param p1, "handle"    # I
    .param p2, "outLongs"    # [J

    .line 939
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 940
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 941
    return v1

    .line 943
    :cond_0
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v2

    const/4 v3, 0x2

    const-wide/32 v4, 0x32000

    const-wide/16 v6, 0x100

    const/4 v8, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 981
    return v1

    .line 956
    :sswitch_0
    aput-wide v4, p2, v1

    .line 957
    aput-wide v6, p2, v8

    .line 958
    aput-wide v6, p2, v3

    .line 959
    iget-boolean v1, p0, Landroid/mtp/MtpDatabase;->mSkipThumbForHost:Z

    if-eqz v1, :cond_1

    .line 960
    sget-object v1, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v2, "getThumbnailInfo: Skip runtime thumbnail."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    return v8

    .line 963
    :cond_1
    return v8

    .line 976
    :sswitch_1
    aput-wide v4, p2, v1

    .line 977
    aput-wide v6, p2, v8

    .line 978
    aput-wide v6, p2, v3

    .line 979
    return v8

    .line 965
    :sswitch_2
    aput-wide v4, p2, v1

    .line 966
    aput-wide v6, p2, v8

    .line 967
    aput-wide v6, p2, v3

    .line 968
    return v8

    :sswitch_data_0
    .sparse-switch
        0x3009 -> :sswitch_2
        0x300a -> :sswitch_1
        0x300b -> :sswitch_1
        0x300c -> :sswitch_1
        0x3800 -> :sswitch_0
        0x3801 -> :sswitch_0
        0x3802 -> :sswitch_0
        0x3804 -> :sswitch_0
        0x3807 -> :sswitch_0
        0x3808 -> :sswitch_0
        0x380b -> :sswitch_0
        0x380d -> :sswitch_0
        0x380f -> :sswitch_0
        0x3810 -> :sswitch_0
        0x3811 -> :sswitch_0
        0x3812 -> :sswitch_0
        0xb980 -> :sswitch_1
        0xb981 -> :sswitch_1
        0xb982 -> :sswitch_1
        0xb984 -> :sswitch_1
    .end sparse-switch
.end method

.method public blacklist initializeSerivce()V
    .locals 5

    .line 1190
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->isStratCommand:Z

    .line 1192
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->serviceComponent:[Landroid/content/ComponentName;

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.easyMover.Agent"

    const-string v4, "com.sec.android.easyMover.Agent.RemoteService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 1193
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->serviceComponent:[Landroid/content/ComponentName;

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.easyMover"

    const-string v4, "com.sec.android.easyMover.service.RemoteService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 1195
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->conn:[Landroid/content/ServiceConnection;

    new-instance v2, Landroid/mtp/MtpDatabase$3;

    invoke-direct {v2, p0}, Landroid/mtp/MtpDatabase$3;-><init>(Landroid/mtp/MtpDatabase;)V

    aput-object v2, v1, v0

    .line 1217
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->conn:[Landroid/content/ServiceConnection;

    new-instance v1, Landroid/mtp/MtpDatabase$4;

    invoke-direct {v1, p0}, Landroid/mtp/MtpDatabase$4;-><init>(Landroid/mtp/MtpDatabase;)V

    aput-object v1, v0, v3

    .line 1238
    return-void
.end method

.method synthetic blacklist lambda$addStorage$0$android-mtp-MtpDatabase()Ljava/lang/Boolean;
    .locals 1

    .line 412
    iget-boolean v0, p0, Landroid/mtp/MtpDatabase;->mHostIsWindows:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o removeStorage(Landroid/os/storage/StorageVolume;)V
    .locals 3
    .param p1, "storage"    # Landroid/os/storage/StorageVolume;

    .line 422
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpStorage;

    .line 423
    .local v0, "mtpStorage":Landroid/mtp/MtpStorage;
    if-nez v0, :cond_0

    .line 424
    return-void

    .line 426
    :cond_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    if-eqz v1, :cond_1

    .line 427
    invoke-virtual {v1, v0}, Landroid/mtp/MtpServer;->removeStorage(Landroid/mtp/MtpStorage;)V

    .line 429
    :cond_1
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, v0}, Landroid/mtp/MtpStorageManager;->removeMtpStorage(Landroid/mtp/MtpStorage;)V

    .line 430
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    return-void
.end method

.method public greylist-max-o setServer(Landroid/mtp/MtpServer;)V
    .locals 4
    .param p1, "server"    # Landroid/mtp/MtpServer;

    .line 369
    iput-object p1, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    .line 372
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    goto :goto_0

    .line 373
    :catch_0
    move-exception v0

    .line 377
    :goto_0
    if-eqz p1, :cond_0

    .line 378
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 381
    :cond_0
    return-void
.end method
