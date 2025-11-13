.class public Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# static fields
.field private static final KEY:Ljava/lang/String; = "audio_stream_button"

.field private static final SOURCE_ORIGIN_REPOSITORY:I

.field private static final TAG:Ljava/lang/String; = "AudioStreamButtonController"


# instance fields
.field private final mAudioStreamsHelper:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;

.field private final mAudioStreamsRepository:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsRepository;

.field private final mBroadcastAssistantCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

.field private mBroadcastId:I

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mPreference:Lcom/android/settingslib/widget/ActionButtonsPreference;


# direct methods
.method public static synthetic $r8$lambda$6ek4GMnvjO04ZLrcalbMavknG84(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->lambda$updateButton$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$CHEoO8CN-2NspJmQfLtGlpXxgYs(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->lambda$updateButton$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$Mz4PvmtyGL3yDLtf4ZUcEn8bTGs(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$$ExternalSyntheticLambda3;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->lambda$updateButton$8(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NDQ7awvYr_zMcOMfY4TRNTUEyYA(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->lambda$updateButton$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$PznzOrEYBU0Zh-gOVC1icXBZg8w(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->lambda$updateButton$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$TC62cAzOhBObM9bCJ-Aaq_NVZdo(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;Ljava/lang/Integer;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->lambda$updateButton$0(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Txms1Jv_DTldJgcrEshyY7seH3g(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->lambda$updateButton$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VrvgkauYaeU8S5I2VaTsAkXnQUE(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$$ExternalSyntheticLambda3;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->lambda$updateButton$4(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zr3KfV-ZDC2byRzRazmLZWPKmEI(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->lambda$updateButton$3(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmMetricsFeatureProvider(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateButton(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->updateButton()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetSOURCE_ORIGIN_REPOSITORY()I
    .locals 1

    sget v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->SOURCE_ORIGIN_REPOSITORY:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    sput v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->SOURCE_ORIGIN_REPOSITORY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$1;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;)V

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->mBroadcastAssistantCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    invoke-static {}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsRepository;->getInstance()Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsRepository;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->mAudioStreamsRepository:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsRepository;

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->mBroadcastId:I

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;

    sget-object v0, Lcom/android/settings/bluetooth/Utils;->mOnInitCallback:Lcom/android/settings/bluetooth/Utils$2;

    invoke-static {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;-><init>(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->mAudioStreamsHelper:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;

    invoke-virtual {p2}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;->getLeBroadcastAssistant()Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic access$000(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private synthetic lambda$updateButton$0(Ljava/lang/Integer;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->mBroadcastId:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$updateButton$1()V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->mPreference:Lcom/android/settingslib/widget/ActionButtonsPreference;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Enabled(Z)V

    :cond_0
    return-void
.end method

.method private lambda$updateButton$2()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->mAudioStreamsHelper:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;

    iget v1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->mBroadcastId:I

    iget-object v2, v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-nez v2, :cond_0

    const-string v0, "AudioStreamsHelper"

    const-string v1, "removeSource(): LeBroadcastAssistant is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper$$ExternalSyntheticLambda10;

    invoke-direct {v2, v0, v1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper$$ExternalSyntheticLambda10;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;I)V

    invoke-static {v2}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    :goto_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    const/16 v3, 0x79b

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$updateButton$3(Landroid/view/View;)V
    .locals 1

    new-instance p1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;I)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method private synthetic lambda$updateButton$4(Landroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->mPreference:Lcom/android/settingslib/widget/ActionButtonsPreference;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Enabled(Z)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->mPreference:Lcom/android/settingslib/widget/ActionButtonsPreference;

    const v0, 0x7f1404c8

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Text(I)V

    const v0, 0x7f0805dc

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Icon(I)V

    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1OnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateButton$5()V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->mPreference:Lcom/android/settingslib/widget/ActionButtonsPreference;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Enabled(Z)V

    :cond_0
    return-void
.end method

.method private lambda$updateButton$6()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->mAudioStreamsRepository:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsRepository;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->mBroadcastId:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "bluetooth_audio_stream_pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string v3, "bluetooth_audio_stream_metadata"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "AudioStreamsRepository"

    if-nez v0, :cond_0

    const-string v0, "getSavedMetadata(): savedMetadataStr is null"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lcom/android/settingslib/bluetooth/BluetoothLeBroadcastMetadataExt;->convertToBroadcastMetadata(Ljava/lang/String;)Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastId()I

    move-result v4

    if-eq v4, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSavedMetadata(): broadcastId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " metadata found in storage."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, "getSavedMetadata(): savedMetadata doesn\'t match broadcast Id."

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->mAudioStreamsHelper:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;

    iget-object v2, v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-nez v2, :cond_4

    const-string v0, "AudioStreamsHelper"

    const-string v1, "addSource(): LeBroadcastAssistant is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    new-instance v2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0, v1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper$$ExternalSyntheticLambda7;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    invoke-static {v2}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    :goto_2
    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/16 v2, 0x799

    sget v3, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->SOURCE_ORIGIN_REPOSITORY:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method private synthetic lambda$updateButton$7(Landroid/view/View;)V
    .locals 1

    new-instance p1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;I)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method private synthetic lambda$updateButton$8(Landroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->mPreference:Lcom/android/settingslib/widget/ActionButtonsPreference;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Enabled(Z)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->mPreference:Lcom/android/settingslib/widget/ActionButtonsPreference;

    const v0, 0x7f1404b7

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Text(I)V

    const v0, 0x7f080333

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Icon(I)V

    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1OnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private updateButton()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->mPreference:Lcom/android/settingslib/widget/ActionButtonsPreference;

    if-nez v0, :cond_0

    const-string p0, "AudioStreamButtonController"

    const-string v0, "updateButton(): preference is null!"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->mAudioStreamsHelper:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;->getAllConnectedSources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$$ExternalSyntheticLambda3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;I)V

    new-instance v1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$$ExternalSyntheticLambda3;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$$ExternalSyntheticLambda3;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;I)V

    new-instance v1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$$ExternalSyntheticLambda4;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$$ExternalSyntheticLambda3;B)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/ActionButtonsPreference;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->mPreference:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->updateButton()V

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

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

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "audio_stream_button"

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

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public init(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->mBroadcastId:I

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
    .locals 1

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-nez p1, :cond_0

    const-string p0, "AudioStreamButtonController"

    const-string p1, "onStart(): LeBroadcastAssistant is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->mBroadcastAssistantCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    invoke-virtual {p1, v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->registerServiceCallBack(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;)V

    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-nez p1, :cond_0

    const-string p0, "AudioStreamButtonController"

    const-string p1, "onStop(): LeBroadcastAssistant is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->mBroadcastAssistantCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->unregisterServiceCallBack(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
