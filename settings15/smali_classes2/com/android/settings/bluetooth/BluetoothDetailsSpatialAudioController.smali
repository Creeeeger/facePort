.class public final Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;
.super Lcom/android/settings/bluetooth/BluetoothDetailsController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# static fields
.field public static final SA_PROFILES:Lcom/google/common/collect/ImmutableSet;


# instance fields
.field mAudioDevice:Landroid/media/AudioDeviceAttributes;

.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mHasHeadTracker:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mInitialRefresh:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mProfilesContainer:Landroidx/preference/PreferenceCategory;

.field public final mSpatializer:Landroid/media/Spatializer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/common/collect/ImmutableSet;->construct(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->SA_PROFILES:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/bluetooth/BluetoothDetailsController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mAudioDevice:Landroid/media/AudioDeviceAttributes;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mHasHeadTracker:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mInitialRefresh:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-class p2, Landroid/media/AudioManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mAudioManager:Landroid/media/AudioManager;

    sget-object p2, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getBluetoothFeatureProvider()Lcom/android/settings/bluetooth/BluetoothFeatureProviderImpl;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class p2, Landroid/media/AudioManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getSpatializer()Landroid/media/Spatializer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mSpatializer:Landroid/media/Spatializer;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public createHeadTrackingPreference(Landroid/content/Context;)Landroidx/preference/TwoStatePreference;
    .locals 2

    new-instance v0, Landroidx/preference/SwitchPreferenceCompat;

    invoke-direct {v0, p1}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;)V

    const-string v1, "head_tracking"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const v1, 0x7f1406e4

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f1406e3

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-object v0
.end method

.method public createSpatialAudioPreference(Landroid/content/Context;)Landroidx/preference/TwoStatePreference;
    .locals 2

    new-instance v0, Landroidx/preference/SwitchPreferenceCompat;

    invoke-direct {v0, p1}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;)V

    const-string v1, "spatial_audio"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const v1, 0x7f1406e8

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f1406e7

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-object v0
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "spatial_audio_group"

    return-object p0
.end method

.method public final init(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    const-string v0, "spatial_audio_group"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->refresh()V

    return-void
.end method

.method public final isAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mSpatializer:Landroid/media/Spatializer;

    invoke-virtual {p0}, Landroid/media/Spatializer;->getImmersiveAudioLevel()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 6

    check-cast p1, Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "spatial_audio"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    const-string v4, "BluetoothSpatialAudioController"

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    const/16 v1, 0x778

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    invoke-virtual {v3, v0, v1, v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mAudioDevice:Landroid/media/AudioDeviceAttributes;

    if-nez v1, :cond_0

    const-string v0, "cannot update spatializer enabled for null audio device."

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mSpatializer:Landroid/media/Spatializer;

    invoke-virtual {v0, v1}, Landroid/media/Spatializer;->addCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mSpatializer:Landroid/media/Spatializer;

    invoke-virtual {v0, v1}, Landroid/media/Spatializer;->removeCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V

    :goto_0
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;Landroidx/preference/TwoStatePreference;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    return v2

    :cond_2
    const-string v1, "head_tracking"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    const/16 v1, 0x779

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    invoke-virtual {v3, v0, v1, v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mAudioDevice:Landroid/media/AudioDeviceAttributes;

    if-nez v0, :cond_3

    const-string p0, "cannot update spatializer head tracking for null audio device."

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mSpatializer:Landroid/media/Spatializer;

    invoke-virtual {p0, p1, v0}, Landroid/media/Spatializer;->setHeadTrackerEnabled(ZLandroid/media/AudioDeviceAttributes;)V

    :goto_1
    return v2

    :cond_4
    const-string p0, "invalid key name."

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final refresh()V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getAvailableDevice() mCachedDevice: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " profiles: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BluetoothSpatialAudioController"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-interface {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getProfileId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->SA_PROFILES:Lcom/google/common/collect/ImmutableSet;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v3, v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isEnabled(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getProfileId()I

    move-result v0

    const/4 v5, 0x2

    if-eq v0, v5, :cond_4

    const/16 v6, 0x15

    if-eq v0, v6, :cond_3

    const/16 v6, 0x16

    if-eq v0, v6, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "unrecognized profile for spatial audio: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getProfileId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getBluetoothAudioDeviceCategory(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_2

    new-instance v0, Landroid/media/AudioDeviceAttributes;

    iget-object v3, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x1b

    invoke-direct {v0, v5, v6, v3}, Landroid/media/AudioDeviceAttributes;-><init>(IILjava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/media/AudioDeviceAttributes;

    iget-object v3, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x1a

    invoke-direct {v0, v5, v6, v3}, Landroid/media/AudioDeviceAttributes;-><init>(IILjava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v0, Landroid/media/AudioDeviceAttributes;

    iget-object v3, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x17

    invoke-direct {v0, v5, v6, v3}, Landroid/media/AudioDeviceAttributes;-><init>(IILjava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v0, Landroid/media/AudioDeviceAttributes;

    iget-object v3, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x8

    invoke-direct {v0, v5, v6, v3}, Landroid/media/AudioDeviceAttributes;-><init>(IILjava/lang/String;)V

    goto :goto_1

    :cond_5
    :goto_0
    move-object v0, v4

    :goto_1
    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mAudioDevice:Landroid/media/AudioDeviceAttributes;

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mSpatializer:Landroid/media/Spatializer;

    invoke-virtual {v3, v0}, Landroid/media/Spatializer;->isAvailableForDevice(Landroid/media/AudioDeviceAttributes;)Z

    move-result v3

    if-eqz v3, :cond_6

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mAudioDevice:Landroid/media/AudioDeviceAttributes;

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "getAvailableDevice() device : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", is available : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mAudioDevice:Landroid/media/AudioDeviceAttributes;

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mAudioDevice:Landroid/media/AudioDeviceAttributes;

    if-nez v1, :cond_8

    const-string v1, "no type"

    goto :goto_3

    :cond_8
    invoke-virtual {v1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public final refreshSpatialAudioEnabled(Landroidx/preference/TwoStatePreference;)V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mSpatializer:Landroid/media/Spatializer;

    invoke-virtual {v0}, Landroid/media/Spatializer;->getCompatibleAudioDevices()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mAudioDevice:Landroid/media/AudioDeviceAttributes;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "refresh() isSpatialAudioOn : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothSpatialAudioController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    const-string v1, "head_tracking"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/TwoStatePreference;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->createHeadTrackingPreference(Landroid/content/Context;)Landroidx/preference/TwoStatePreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_0
    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mHasHeadTracker:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "refresh() has head tracker : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mHasHeadTracker:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mSpatializer:Landroid/media/Spatializer;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mAudioDevice:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v1, v2}, Landroid/media/Spatializer;->isHeadTrackerEnabled(Landroid/media/AudioDeviceAttributes;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mInitialRefresh:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    const/16 v2, 0x776

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    invoke-virtual {v3, v1, v2, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mHasHeadTracker:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    const/16 p1, 0x777

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-virtual {v3, p0, p1, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    :cond_3
    return-void
.end method

.method public setAvailableDevice(Landroid/media/AudioDeviceAttributes;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;->mAudioDevice:Landroid/media/AudioDeviceAttributes;

    return-void
.end method
