.class public final Lcom/android/settingslib/search/GtsIndexableResources;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mProviders:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/search/GtsIndexableResources;->mProviders:Ljava/util/Set;

    new-instance v0, Lcom/android/settingslib/search/GtsIndexableData;

    const-class v1, Lcom/android/settings/DisplaySettings;

    sget-object v1, Lcom/android/settings/DisplaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1}, Lcom/android/settingslib/search/GtsIndexableData;-><init>(Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/GtsIndexableResources;->addIndex(Lcom/android/settingslib/search/GtsIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/GtsIndexableData;

    const-class v1, Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings;

    sget-object v1, Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1}, Lcom/android/settingslib/search/GtsIndexableData;-><init>(Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/GtsIndexableResources;->addIndex(Lcom/android/settingslib/search/GtsIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/GtsIndexableData;

    const-class v1, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;

    sget-object v1, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1}, Lcom/android/settingslib/search/GtsIndexableData;-><init>(Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/GtsIndexableResources;->addIndex(Lcom/android/settingslib/search/GtsIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/GtsIndexableData;

    const-class v1, Lcom/samsung/android/settings/asbase/audio/SoundSettings;

    sget-object v1, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1}, Lcom/android/settingslib/search/GtsIndexableData;-><init>(Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/GtsIndexableResources;->addIndex(Lcom/android/settingslib/search/GtsIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/GtsIndexableData;

    const-class v1, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensitySettings;

    sget-object v1, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensitySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1}, Lcom/android/settingslib/search/GtsIndexableData;-><init>(Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/GtsIndexableResources;->addIndex(Lcom/android/settingslib/search/GtsIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/GtsIndexableData;

    const-class v1, Lcom/samsung/android/settings/asbase/vibration/VibrationSystemIntensitySettings;

    sget-object v1, Lcom/samsung/android/settings/asbase/vibration/VibrationSystemIntensitySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1}, Lcom/android/settingslib/search/GtsIndexableData;-><init>(Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/GtsIndexableResources;->addIndex(Lcom/android/settingslib/search/GtsIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/GtsIndexableData;

    const-class v1, Lcom/samsung/android/settings/general/GeneralDeviceSettings;

    sget-object v1, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1}, Lcom/android/settingslib/search/GtsIndexableData;-><init>(Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/GtsIndexableResources;->addIndex(Lcom/android/settingslib/search/GtsIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/GtsIndexableData;

    const-class v1, Lcom/samsung/android/settings/inputmethod/MouseAndTrackpadSettings;

    sget-object v1, Lcom/samsung/android/settings/inputmethod/MouseAndTrackpadSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1}, Lcom/android/settingslib/search/GtsIndexableData;-><init>(Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/GtsIndexableResources;->addIndex(Lcom/android/settingslib/search/GtsIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/GtsIndexableData;

    const-class v1, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;

    sget-object v1, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1}, Lcom/android/settingslib/search/GtsIndexableData;-><init>(Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/GtsIndexableResources;->addIndex(Lcom/android/settingslib/search/GtsIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/GtsIndexableData;

    const-class v1, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;

    sget-object v1, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1}, Lcom/android/settingslib/search/GtsIndexableData;-><init>(Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/GtsIndexableResources;->addIndex(Lcom/android/settingslib/search/GtsIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/GtsIndexableData;

    const-class v1, Lcom/samsung/android/settings/notification/StatusBarNotificationSettings;

    sget-object v1, Lcom/samsung/android/settings/notification/StatusBarNotificationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1}, Lcom/android/settingslib/search/GtsIndexableData;-><init>(Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/GtsIndexableResources;->addIndex(Lcom/android/settingslib/search/GtsIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/GtsIndexableData;

    const-class v1, Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings;

    sget-object v1, Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1}, Lcom/android/settingslib/search/GtsIndexableData;-><init>(Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/GtsIndexableResources;->addIndex(Lcom/android/settingslib/search/GtsIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/GtsIndexableData;

    const-class v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    sget-object v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1}, Lcom/android/settingslib/search/GtsIndexableData;-><init>(Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/GtsIndexableResources;->addIndex(Lcom/android/settingslib/search/GtsIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/GtsIndexableData;

    const-class v1, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeySettings;

    sget-object v1, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1}, Lcom/android/settingslib/search/GtsIndexableData;-><init>(Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/GtsIndexableResources;->addIndex(Lcom/android/settingslib/search/GtsIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/GtsIndexableData;

    const-class v1, Lcom/samsung/android/settings/usefulfeature/motionandgestures/MotionAndGestureSettings;

    sget-object v1, Lcom/samsung/android/settings/usefulfeature/motionandgestures/MotionAndGestureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1}, Lcom/android/settingslib/search/GtsIndexableData;-><init>(Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/GtsIndexableResources;->addIndex(Lcom/android/settingslib/search/GtsIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/GtsIndexableData;

    const-class v1, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;

    sget-object v1, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1}, Lcom/android/settingslib/search/GtsIndexableData;-><init>(Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/GtsIndexableResources;->addIndex(Lcom/android/settingslib/search/GtsIndexableData;)V

    return-void
.end method


# virtual methods
.method public final addIndex(Lcom/android/settingslib/search/GtsIndexableData;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/search/GtsIndexableResources;->mProviders:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method
