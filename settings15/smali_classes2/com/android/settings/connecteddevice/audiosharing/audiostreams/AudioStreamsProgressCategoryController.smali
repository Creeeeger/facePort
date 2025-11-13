.class public Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "AudioStreamsProgressCategoryController"

.field private static final UNSET_BROADCAST_ID:I = -0x1


# instance fields
.field private final mAudioStreamsHelper:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;

.field private final mBluetoothCallback:Lcom/android/settingslib/bluetooth/BluetoothCallback;

.field private final mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private final mBroadcastAssistantCallback:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryCallback;

.field private final mBroadcastIdToPreferenceMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoryPreference:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryPreference;

.field private final mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mFragment:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDashboardFragment;

.field private final mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

.field private final mMediaControlHelper:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/MediaControlHelper;

.field private mSourceFromQrCode:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

.field private mSourceFromQrCodeOriginForLogging:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;


# direct methods
.method public static synthetic $r8$lambda$-VwsS3fm5S1cjqLgIXsLnYaDJDU(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->lambda$init$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$1aZTWHUhpRIVUEibyrJnVdKI_4I(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->lambda$moveToState$16(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CMdjas7jdbjtozKlK_wyfCTHVro(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;Ljava/lang/Integer;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;)Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->lambda$handleSourceFromQrCodeIfExists$3(Ljava/lang/Integer;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;)Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$E5ORDN-lKri9LOaebKjcPX8ugW0(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;Ljava/lang/Integer;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;)Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->lambda$handleSourceConnectBadCode$9(Ljava/lang/Integer;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;)Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$E6ib437p4UgOcPtfTM1jt4tpP5Q(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->init()V

    return-void
.end method

.method public static synthetic $r8$lambda$IMqxovBQQpMmclvU-CGDmwS_F2E(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->lambda$setScanning$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ROe2gA8tt6XV-4KYKYI8Spoa05E(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->lambda$init$12(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rb-WrR318TXf0YtdNUZPZI9ICWA(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;Landroid/bluetooth/BluetoothLeBroadcastReceiveState;Ljava/lang/Integer;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;)Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->lambda$handleSourceConnected$8(Landroid/bluetooth/BluetoothLeBroadcastReceiveState;Ljava/lang/Integer;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;)Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SSLwrrA3INOHRKI-qhXZj-hQFMU(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->lambda$new$0(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$U8B3azFuUFscvG55IIAqKX3j80o(ILandroid/bluetooth/BluetoothLeBroadcastReceiveState;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->lambda$handleSourceLost$4(ILandroid/bluetooth/BluetoothLeBroadcastReceiveState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Xocp8g4ITPwoALM3zQt14zAL2Jk(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->lambda$startScanning$15()V

    return-void
.end method

.method public static synthetic $r8$lambda$aIhuRdlth4A6zg2L2-2j-7DdoLI(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->lambda$init$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$ang9BMTohxIuZ-J8ifeDIJ0SQCY(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->lambda$handleSourceRemoved$7(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g1ehljlcFBuZokuvVMfrWxH4wJ8(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;Landroid/bluetooth/BluetoothLeBroadcastMetadata;ILjava/lang/Integer;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;)Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->lambda$handleSourceFound$2(Landroid/bluetooth/BluetoothLeBroadcastMetadata;ILjava/lang/Integer;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;)Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hhbldsCCSfJM_9YUQVzJZgM0MdQ(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;Landroid/bluetooth/BluetoothLeBroadcastMetadata;Ljava/lang/Integer;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;)Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->lambda$handleSourceAddRequest$11(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;Landroid/bluetooth/BluetoothLeBroadcastMetadata;Ljava/lang/Integer;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;)Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kEsQpNL_8SqgLjPuNrkIpNKOcws(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->lambda$handleSourceLost$5(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mhmHg3RjLRjD8QDmKp_yW98SHcE(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;Ljava/lang/Integer;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;)Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->lambda$handleSourceFailedToConnect$10(Ljava/lang/Integer;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;)Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qYlrnF36o0KYAtHGjVUYftodSNM(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;Landroid/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->lambda$getNoLeDeviceDialog$17(Landroid/app/AlertDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tbbMQg6jxh1Xqo8uEiilmtZeq24(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->stopScanning()V

    return-void
.end method

.method public static synthetic $r8$lambda$wCQA9wDZ_MIF2OXEka8_WzR86BU(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;Landroid/bluetooth/BluetoothLeBroadcastReceiveState;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->lambda$handleSourceRemoved$6(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;Landroid/bluetooth/BluetoothLeBroadcastReceiveState;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmExecutor(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$minit(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$1;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;)V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mBluetoothCallback:Lcom/android/settingslib/bluetooth/BluetoothCallback;

    new-instance p1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda12;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    new-instance p2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda13;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/Comparator;->thenComparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mComparator:Ljava/util/Comparator;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mBroadcastIdToPreferenceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/android/settings/bluetooth/Utils;->mOnInitCallback:Lcom/android/settings/bluetooth/Utils$2;

    invoke-static {p1, p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    new-instance p2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;

    invoke-direct {p2, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;-><init>(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mAudioStreamsHelper:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/MediaControlHelper;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/MediaControlHelper;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mMediaControlHelper:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/MediaControlHelper;

    invoke-virtual {p2}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;->getLeBroadcastAssistant()Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    new-instance p1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryCallback;

    invoke-direct {p1, p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryCallback;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;)V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mBroadcastAssistantCallback:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryCallback;

    return-void
.end method

.method private addNewPreference(Landroid/bluetooth/BluetoothLeBroadcastMetadata;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;)Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->isEncrypted()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;->mIsEncrypted:Z

    invoke-static {p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;->getBroadcastName(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference$AudioStream;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;->UNKNOWN:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    iput-object v2, v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference$AudioStream;->mState:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    iput-object p1, v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference$AudioStream;->mMetadata:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    iput-object p3, v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference$AudioStream;->mSourceOriginForLogging:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;

    iput-object v0, v1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;->mAudioStream:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference$AudioStream;

    invoke-direct {p0, v1, p2}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->moveToState(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;)V

    return-object v1
.end method

.method private addNewPreference(Landroid/bluetooth/BluetoothLeBroadcastReceiveState;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;)Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;->getBroadcastName(Landroid/bluetooth/BluetoothLeBroadcastReceiveState;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference$AudioStream;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;->UNKNOWN:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;

    iput-object v2, v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference$AudioStream;->mSourceOriginForLogging:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;

    sget-object v2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;->UNKNOWN:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    iput-object v2, v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference$AudioStream;->mState:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    iput-object p1, v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference$AudioStream;->mReceiveState:Landroid/bluetooth/BluetoothLeBroadcastReceiveState;

    iput-object v0, v1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;->mAudioStream:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference$AudioStream;

    invoke-direct {p0, v1, p2}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->moveToState(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;)V

    return-object v1
.end method

.method private getNoLeDeviceDialog()Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;
    .locals 3

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f1404c4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f1404c3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;->mSubTitle2:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f1404bc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;->mLeftButtonText:Ljava/lang/String;

    new-instance v1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceWaitForResponseState$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;->mLeftButtonOnClickListener:Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f1404c2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;->mRightButtonText:Ljava/lang/String;

    new-instance v1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;I)V

    iput-object v1, v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;->mRightButtonOnClickListener:Ljava/util/function/Consumer;

    return-object v0
.end method

.method private handleSourceFromQrCodeIfExists()V
    .locals 4

    const-string v0, "AudioStreamsProgressCategoryController"

    const-string v1, "handleSourceFromQrCodeIfExists()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mSourceFromQrCode:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mBroadcastIdToPreferenceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda6;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda6;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;I)V

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method

.method private init()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mBroadcastIdToPreferenceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;->getCachedBluetoothDeviceInSharingOrLeConnected(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda5;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v3}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;ZI)V

    invoke-static {v1, v2}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->postOnMainThread(Landroid/content/Context;Ljava/lang/Runnable;)V

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->startScanning()V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda3;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->postOnMainThread(Landroid/content/Context;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->stopScanning()V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda3;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->postOnMainThread(Landroid/content/Context;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private lambda$getNoLeDeviceDialog$17(Landroid/app/AlertDialog;)V
    .locals 2

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iget-object v1, v0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p0, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/16 p0, 0x830

    iput p0, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$handleSourceAddRequest$11(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;Landroid/bluetooth/BluetoothLeBroadcastMetadata;Ljava/lang/Integer;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;)Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;
    .locals 0

    invoke-virtual {p4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "AudioStreamsProgressCategoryController"

    const-string p3, "handleSourceAddedRequest(): existing preference not match"

    invoke-static {p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p4, p2}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;->setAudioStreamMetadata(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    sget-object p1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;->ADD_SOURCE_WAIT_FOR_RESPONSE:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    invoke-direct {p0, p4, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->moveToState(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;)V

    return-object p4
.end method

.method private synthetic lambda$handleSourceConnectBadCode$9(Ljava/lang/Integer;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;)Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;
    .locals 0

    sget-object p1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;->ADD_SOURCE_BAD_CODE:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    invoke-direct {p0, p2, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->moveToState(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;)V

    return-object p2
.end method

.method private synthetic lambda$handleSourceConnected$8(Landroid/bluetooth/BluetoothLeBroadcastReceiveState;Ljava/lang/Integer;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;)Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;
    .locals 1

    sget-object p2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;->SOURCE_ADDED:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    if-nez p3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->addNewPreference(Landroid/bluetooth/BluetoothLeBroadcastReceiveState;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;)Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p3}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;->getAudioStreamState()Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    move-result-object p1

    sget-object v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;->WAIT_FOR_SYNC:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    if-ne p1, v0, :cond_1

    invoke-virtual {p3}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;->getAudioStreamBroadcastId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mSourceFromQrCode:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    if-eqz p1, :cond_1

    invoke-virtual {p3, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;->setAudioStreamMetadata(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    :cond_1
    invoke-direct {p0, p3, p2}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->moveToState(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;)V

    return-object p3
.end method

.method private synthetic lambda$handleSourceFailedToConnect$10(Ljava/lang/Integer;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;)Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;
    .locals 0

    sget-object p1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;->ADD_SOURCE_FAILED:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    invoke-direct {p0, p2, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->moveToState(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;)V

    return-object p2
.end method

.method private synthetic lambda$handleSourceFound$2(Landroid/bluetooth/BluetoothLeBroadcastMetadata;ILjava/lang/Integer;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;)Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;
    .locals 1

    if-nez p4, :cond_0

    sget-object p2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;->SYNCED:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    sget-object p3, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;->BROADCAST_SEARCH:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->addNewPreference(Landroid/bluetooth/BluetoothLeBroadcastMetadata;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;)Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p4}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;->getAudioStreamState()Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    move-result-object p3

    sget-object v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;->WAIT_FOR_SYNC:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    if-ne p3, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mSourceFromQrCode:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    if-eqz v0, :cond_1

    new-instance p2, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    invoke-direct {p2, p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;-><init>(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mSourceFromQrCode:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastCode()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->setBroadcastCode([B)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->build()Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;->setAudioStreamMetadata(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    sget-object p1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;->ADD_SOURCE_WAIT_FOR_RESPONSE:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    invoke-direct {p0, p4, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->moveToState(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p4, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;->setAudioStreamMetadata(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    sget-object p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;->SOURCE_ADDED:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    if-eq p3, p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "handleSourceFound(): unexpected state : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for broadcastId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AudioStreamsProgressCategoryController"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-object p4
.end method

.method private synthetic lambda$handleSourceFromQrCodeIfExists$3(Ljava/lang/Integer;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;)Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;
    .locals 1

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mSourceFromQrCode:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    if-eqz p1, :cond_0

    sget-object p2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;->WAIT_FOR_SYNC:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mSourceFromQrCodeOriginForLogging:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->addNewPreference(Landroid/bluetooth/BluetoothLeBroadcastMetadata;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;)Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "handleSourceFromQrCodeIfExists(): unexpected state : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;->getAudioStreamState()Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for broadcastId : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mSourceFromQrCode:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    if-nez p0, :cond_1

    const-string p0, "null"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AudioStreamsProgressCategoryController"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method private static synthetic lambda$handleSourceLost$4(ILandroid/bluetooth/BluetoothLeBroadcastReceiveState;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->getBroadcastId()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$handleSourceLost$5(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mCategoryPreference:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryPreference;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$handleSourceRemoved$6(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;Landroid/bluetooth/BluetoothLeBroadcastReceiveState;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->getBroadcastId()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;->getAudioStreamBroadcastId()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private lambda$handleSourceRemoved$7(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;)V
    .locals 1

    iget-object v0, p1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;->mAudioStream:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference$AudioStream;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference$AudioStream;->mMetadata:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;->SYNCED:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->moveToState(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;->getAudioStreamBroadcastId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->handleSourceLost(I)V

    :goto_1
    return-void
.end method

.method private lambda$init$12(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mCategoryPreference:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryPreference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryPreference;->getAllAudioStreamPreferences()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mCategoryPreference:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    return-void
.end method

.method private lambda$init$13()V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mFragment:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDashboardFragment;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    const-string v1, "AudioStreamsDialogFragment"

    if-nez v0, :cond_0

    const-string p0, "The host fragment is not added to the activity!"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_1

    check-cast p0, Landroidx/fragment/app/DialogFragment;

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$init$14()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mFragment:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDashboardFragment;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->getNoLeDeviceDialog()Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;

    move-result-object p0

    const/16 v1, 0x830

    invoke-static {v0, p0, v1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment;->show(Landroidx/fragment/app/Fragment;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;I)V

    :cond_0
    return-void
.end method

.method private lambda$moveToState$16(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mCategoryPreference:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryPreference;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mComparator:Ljava/util/Comparator;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryPreference;->getAllAudioStreamPreferences()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p0, v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOrder(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static synthetic lambda$new$0(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;)Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;->getAudioStreamState()Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    move-result-object p0

    sget-object v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;->SOURCE_ADDED:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private lambda$setScanning$1(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mCategoryPreference:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryPreference;

    if-eqz p0, :cond_0

    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method private lambda$startScanning$15()V
    .locals 7

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->handleSourceFromQrCodeIfExists()V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mAudioStreamsHelper:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;->getAllConnectedSources()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->startSearchingForSources(Ljava/util/List;)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mMediaControlHelper:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/MediaControlHelper;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/MediaControlHelper;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;->getCachedBluetoothDeviceInSharingOrLeConnected(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isEmpty()Z

    move-result v1

    const-string v2, "MediaControlHelper"

    if-eqz v1, :cond_1

    const-string p0, "start() : current LE device is empty!"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/MediaControlHelper;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/session/MediaController;

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/MediaControlHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v3, "start() : skip package: "

    invoke-static {v3, v4, v2}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v5, Lcom/android/settingslib/media/LocalMediaManager;

    iget-object v6, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/MediaControlHelper;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v4}, Lcom/android/settingslib/media/LocalMediaManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v4, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/MediaControlHelper$1;

    invoke-direct {v4, v3, v0, v5}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/MediaControlHelper$1;-><init>(Landroid/media/session/MediaController;Ljava/util/Optional;Lcom/android/settingslib/media/LocalMediaManager;)V

    invoke-virtual {v5, v4}, Lcom/android/settingslib/media/LocalMediaManager;->registerCallback(Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;)V

    iget-object v3, v5, Lcom/android/settingslib/media/LocalMediaManager;->mInfoMediaManager:Lcom/android/settingslib/media/InfoMediaManager;

    invoke-virtual {v3}, Lcom/android/settingslib/media/InfoMediaManager;->startScanOnRouter()V

    iget-object v3, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/MediaControlHelper;->mLocalMediaManagers:Ljava/util/List;

    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private maybeUpdateId(Ljava/lang/String;I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mSourceFromQrCode:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {v0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;->getBroadcastName(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "maybeUpdateId() : updating unset broadcastId for metadataFromQrCode with broadcastName: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mSourceFromQrCode:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;->getBroadcastName(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to broadcast Id: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioStreamsProgressCategoryController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mSourceFromQrCode:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    invoke-direct {p1, v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;-><init>(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->setBroadcastId(I)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->build()Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mSourceFromQrCode:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private moveToState(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;)V
    .locals 6

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported state: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    sget-object p2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceAddedState;->sInstance:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceAddedState;

    if-nez p2, :cond_0

    new-instance p2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceAddedState;

    invoke-direct {p2}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamStateHandler;-><init>()V

    sput-object p2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceAddedState;->sInstance:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceAddedState;

    :cond_0
    sget-object p2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceAddedState;->sInstance:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceAddedState;

    goto :goto_0

    :pswitch_1
    sget-object p2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceFailedState;->sInstance:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceFailedState;

    if-nez p2, :cond_1

    new-instance p2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceFailedState;

    invoke-direct {p2}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamStateHandler;-><init>()V

    sput-object p2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceFailedState;->sInstance:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceFailedState;

    :cond_1
    sget-object p2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceFailedState;->sInstance:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceFailedState;

    goto :goto_0

    :pswitch_2
    sget-object p2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceBadCodeState;->sInstance:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceBadCodeState;

    if-nez p2, :cond_2

    new-instance p2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceBadCodeState;

    invoke-direct {p2}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamStateHandler;-><init>()V

    sput-object p2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceBadCodeState;->sInstance:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceBadCodeState;

    :cond_2
    sget-object p2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceBadCodeState;->sInstance:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceBadCodeState;

    goto :goto_0

    :pswitch_3
    sget-object p2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceWaitForResponseState;->sInstance:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceWaitForResponseState;

    if-nez p2, :cond_3

    new-instance p2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceWaitForResponseState;

    invoke-direct {p2}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamStateHandler;-><init>()V

    sput-object p2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceWaitForResponseState;->sInstance:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceWaitForResponseState;

    :cond_3
    sget-object p2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceWaitForResponseState;->sInstance:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceWaitForResponseState;

    goto :goto_0

    :pswitch_4
    sget-object p2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState;->sInstance:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState;

    if-nez p2, :cond_4

    new-instance p2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState;

    invoke-direct {p2}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamStateHandler;-><init>()V

    sput-object p2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState;->sInstance:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState;

    :cond_4
    sget-object p2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState;->sInstance:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState;

    goto :goto_0

    :pswitch_5
    sget-object p2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/WaitForSyncState;->sInstance:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/WaitForSyncState;

    if-nez p2, :cond_5

    new-instance p2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/WaitForSyncState;

    invoke-direct {p2}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamStateHandler;-><init>()V

    sput-object p2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/WaitForSyncState;->sInstance:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/WaitForSyncState;

    :cond_5
    sget-object p2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/WaitForSyncState;->sInstance:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/WaitForSyncState;

    :goto_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mAudioStreamsHelper:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;

    invoke-virtual {p2}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamStateHandler;->getStateEnum()Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;->getAudioStreamState()Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    move-result-object v2

    if-ne v2, v1, :cond_6

    goto :goto_2

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "moveToState() : moving preference : ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;->getAudioStreamBroadcastId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;->mAudioStream:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference$AudioStream;

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    iget-object v5, v3, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference$AudioStream;->mMetadata:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    if-eqz v5, :cond_7

    invoke-static {v5}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;->getBroadcastName(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_7
    iget-object v3, v3, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference$AudioStream;->mReceiveState:Landroid/bluetooth/BluetoothLeBroadcastReceiveState;

    if-eqz v3, :cond_8

    invoke-static {v3}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;->getBroadcastName(Landroid/bluetooth/BluetoothLeBroadcastReceiveState;)Ljava/lang/String;

    move-result-object v4

    :cond_8
    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] from state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;->getAudioStreamState()Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AudioStreamStateHandler"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;->mAudioStream:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference$AudioStream;

    if-eqz v2, :cond_9

    iput-object v1, v2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference$AudioStream;->mState:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    :cond_9
    invoke-virtual {p2, p1, p0, v0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamStateHandler;->performAction(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;)V

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamStateHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p1, v1, p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamStateHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamStateHandler;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    :goto_2
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;I)V

    invoke-static {p2, v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->postOnMainThread(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private startScanning()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    const-string v1, "AudioStreamsProgressCategoryController"

    if-nez v0, :cond_0

    const-string p0, "startScanning(): LeBroadcastAssistant is null!"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->isSearchInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "startScanning(): scanning still in progress, stop scanning first."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->stopScanning()V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mBroadcastAssistantCallback:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->registerServiceCallBack(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda3;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private stopScanning()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    const-string v1, "AudioStreamsProgressCategoryController"

    if-nez v0, :cond_0

    const-string p0, "stopScanning(): LeBroadcastAssistant is null!"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->isSearchInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "stopScanning()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->stopSearchingForSources$1()V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mBroadcastAssistantCallback:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryCallback;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->unregisterServiceCallBack(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mMediaControlHelper:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/MediaControlHelper;

    iget-object v1, v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/MediaControlHelper;->mLocalMediaManagers:Ljava/util/List;

    new-instance v2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/MediaControlHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/MediaControlHelper;->mLocalMediaManagers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mSourceFromQrCode:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryPreference;

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mCategoryPreference:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getFragment()Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDashboardFragment;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mFragment:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDashboardFragment;

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public handleSourceAddRequest(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .locals 3

    const-string v0, "AudioStreamsProgressCategoryController"

    const-string v1, "handleSourceAddRequest()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mBroadcastIdToPreferenceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda20;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method

.method public handleSourceConnectBadCode(Landroid/bluetooth/BluetoothLeBroadcastReceiveState;)V
    .locals 3

    const-string v0, "AudioStreamsProgressCategoryController"

    const-string v1, "handleSourceConnectBadCode()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->getPaSyncState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->getBigEncryptionState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mBroadcastIdToPreferenceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->getBroadcastId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda6;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda6;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public handleSourceConnected(Landroid/bluetooth/BluetoothLeBroadcastReceiveState;)V
    .locals 4

    const-string v0, "handleSourceConnected()"

    const-string v1, "AudioStreamsProgressCategoryController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;->isConnected(Landroid/bluetooth/BluetoothLeBroadcastReceiveState;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->getBroadcastId()I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mSourceFromQrCode:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastId()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const-string v2, "handleSourceConnected() : processing mSourceFromQrCode with broadcastId unset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;->getBroadcastName(Landroid/bluetooth/BluetoothLeBroadcastReceiveState;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->getBroadcastId()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->maybeUpdateId(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mBroadcastIdToPreferenceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mBroadcastIdToPreferenceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mBroadcastIdToPreferenceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->getBroadcastId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mBroadcastIdToPreferenceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda9;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;Landroid/bluetooth/BluetoothLeBroadcastReceiveState;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method

.method public handleSourceFailedToConnect(I)V
    .locals 3

    const-string v0, "AudioStreamsProgressCategoryController"

    const-string v1, "handleSourceFailedToConnect()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mBroadcastIdToPreferenceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda6;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda6;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method

.method public handleSourceFound(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .locals 4

    const-string v0, "handleSourceFound()"

    const-string v1, "AudioStreamsProgressCategoryController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastId()I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mSourceFromQrCode:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastId()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const-string v2, "handleSourceFound() : processing mSourceFromQrCode with broadcastId unset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;->getBroadcastName(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastId()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->maybeUpdateId(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mBroadcastIdToPreferenceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mBroadcastIdToPreferenceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mBroadcastIdToPreferenceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mBroadcastIdToPreferenceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0, p1, v0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda10;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;Landroid/bluetooth/BluetoothLeBroadcastMetadata;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method

.method public handleSourceLost(I)V
    .locals 3

    const-string v0, "handleSourceLost()"

    const-string v1, "AudioStreamsProgressCategoryController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mAudioStreamsHelper:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;->getAllConnectedSources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda7;

    invoke-direct {v2, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "handleSourceLost() : keep this preference as the source is still connected."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mBroadcastIdToPreferenceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public handleSourceRemoved()V
    .locals 4

    const-string v0, "AudioStreamsProgressCategoryController"

    const-string v1, "handleSourceRemoved()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mBroadcastIdToPreferenceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;

    invoke-virtual {v1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;->getAudioStreamState()Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    move-result-object v2

    sget-object v3, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;->SOURCE_ADDED:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mAudioStreamsHelper:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;

    invoke-virtual {v2}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;->getAllConnectedSources()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public bridge synthetic onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onCreate(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public bridge synthetic onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onDestroy(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public bridge synthetic onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onPause(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public bridge synthetic onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onResume(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mBluetoothCallback:Lcom/android/settingslib/bluetooth/BluetoothCallback;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    :cond_0
    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda3;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mBluetoothCallback:Lcom/android/settingslib/bluetooth/BluetoothCallback;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    :cond_0
    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda3;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setFragment(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDashboardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mFragment:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDashboardFragment;

    return-void
.end method

.method public setScanning(Z)V
    .locals 2

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda5;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;ZI)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSourceFromQrCode(Landroid/bluetooth/BluetoothLeBroadcastMetadata;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setSourceFromQrCode(): broadcastId "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioStreamsProgressCategoryController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mSourceFromQrCode:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->mSourceFromQrCodeOriginForLogging:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;

    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->toastMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
