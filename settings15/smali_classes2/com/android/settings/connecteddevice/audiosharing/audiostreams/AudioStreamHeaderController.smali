.class public Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# static fields
.field static final AUDIO_STREAM_HEADER_LISTENING_NOW_SUMMARY:I = 0x7f1404cb

.field static final AUDIO_STREAM_HEADER_NOT_LISTENING_SUMMARY:Ljava/lang/String; = ""

.field private static final KEY:Ljava/lang/String; = "audio_stream_header"

.field private static final TAG:Ljava/lang/String; = "AudioStreamHeaderController"


# instance fields
.field private final mAudioStreamsHelper:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;

.field private final mBroadcastAssistantCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

.field private mBroadcastId:I

.field private mBroadcastName:Ljava/lang/String;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mFragment:Lcom/android/settings/dashboard/DashboardFragment;

.field private mHeaderController:Lcom/android/settings/widget/EntityHeaderController;

.field private final mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;


# direct methods
.method public static synthetic $r8$lambda$1ktWsXcrbnJ06VsrZqbotWfF4_o(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;->lambda$updateSummary$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZqRH4L9mM-gWZvzeLDxhAU7nVNg(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;->lambda$updateSummary$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$q5PJrwalDUIo6dZM3zemJGyQhAQ(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;Ljava/lang/Integer;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;->lambda$updateSummary$0(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAudioStreamsHelper(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;)Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;->mAudioStreamsHelper:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBroadcastId(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;->mBroadcastId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBroadcastName(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;->mBroadcastName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateSummary(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;->updateSummary()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController$1;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;)V

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;->mBroadcastAssistantCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    const-string p2, ""

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;->mBroadcastName:Ljava/lang/String;

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;->mBroadcastId:I

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;

    sget-object v0, Lcom/android/settings/bluetooth/Utils;->mOnInitCallback:Lcom/android/settings/bluetooth/Utils$2;

    invoke-static {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;-><init>(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;->mAudioStreamsHelper:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;

    invoke-virtual {p2}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;->getLeBroadcastAssistant()Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private synthetic lambda$updateSummary$0(Ljava/lang/Integer;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;->mBroadcastId:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private lambda$updateSummary$1(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;->mHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    if-eqz p0, :cond_0

    iput-object p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mSummary:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/EntityHeaderController;->done(Z)Landroid/view/View;

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateSummary$2()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;->mAudioStreamsHelper:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;->getAllConnectedSources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;->AUDIO_STREAM_HEADER_LISTENING_NOW_SUMMARY:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    new-instance v1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateSummary()V
    .locals 1

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 5

    const-string v0, "audio_stream_header"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    iget-object v3, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v4, 0x7f0a05c5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/android/settings/widget/EntityHeaderController;

    invoke-direct {v4, v1, v2, v3}, Lcom/android/settings/widget/EntityHeaderController;-><init>(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/Fragment;Landroid/view/View;)V

    iput-object v4, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;->mHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;->mBroadcastName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iput-object v1, v4, Lcom/android/settings/widget/EntityHeaderController;->mLabel:Ljava/lang/CharSequence;

    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08039e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;->updateSummary()V

    :cond_1
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

    const-string p0, "audio_stream_header"

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

.method public init(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamDetailsFragment;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;->mBroadcastName:Ljava/lang/String;

    iput p3, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;->mBroadcastId:I

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

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-nez p1, :cond_0

    const-string p0, "AudioStreamHeaderController"

    const-string p1, "onStart(): LeBroadcastAssistant is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;->mBroadcastAssistantCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    invoke-virtual {p1, v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->registerServiceCallBack(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;)V

    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-nez p1, :cond_0

    const-string p0, "AudioStreamHeaderController"

    const-string p1, "onStop(): LeBroadcastAssistant is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;->mBroadcastAssistantCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

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
