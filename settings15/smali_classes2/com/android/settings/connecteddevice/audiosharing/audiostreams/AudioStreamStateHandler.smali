.class public abstract Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamStateHandler;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static final EMPTY_STRING_RES:I


# instance fields
.field public final mAudioStreamsRepository:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsRepository;

.field public final mHandler:Landroid/os/Handler;

.field public final mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsRepository;->getInstance()Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamStateHandler;->mAudioStreamsRepository:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsRepository;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamStateHandler;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamStateHandler;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No feature factory configured"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getOnClickListener(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;)Landroidx/preference/Preference$OnPreferenceClickListener;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getStateEnum()Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;
.end method

.method public getSummary()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public performAction(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;)V
    .locals 0

    return-void
.end method
