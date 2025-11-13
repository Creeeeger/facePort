.class public Lcom/android/settingslib/search/GtsIndexableResources;
.super Ljava/lang/Object;
.source "GtsIndexableResources.java"


# instance fields
.field private final mProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/settingslib/search/GtsIndexableData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/search/GtsIndexableResources;->mProviders:Ljava/util/Set;

    .line 11
    new-instance v0, Lcom/android/settingslib/search/GtsIndexableData;

    const-class v1, Lcom/android/settings/DisplaySettings;

    sget-object v2, Lcom/android/settings/DisplaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/GtsIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/GtsIndexableResources;->addIndex(Lcom/android/settingslib/search/GtsIndexableData;)V

    .line 12
    new-instance v0, Lcom/android/settingslib/search/GtsIndexableData;

    const-class v1, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;

    sget-object v2, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/GtsIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/GtsIndexableResources;->addIndex(Lcom/android/settingslib/search/GtsIndexableData;)V

    .line 13
    new-instance v0, Lcom/android/settingslib/search/GtsIndexableData;

    const-class v1, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;

    sget-object v2, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/GtsIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/GtsIndexableResources;->addIndex(Lcom/android/settingslib/search/GtsIndexableData;)V

    .line 14
    new-instance v0, Lcom/android/settingslib/search/GtsIndexableData;

    const-class v1, Lcom/samsung/android/settings/as/audio/SoundSettings;

    sget-object v2, Lcom/samsung/android/settings/as/audio/SoundSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/GtsIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/GtsIndexableResources;->addIndex(Lcom/android/settingslib/search/GtsIndexableData;)V

    .line 15
    new-instance v0, Lcom/android/settingslib/search/GtsIndexableData;

    const-class v1, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensitySettings;

    sget-object v2, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensitySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/GtsIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/GtsIndexableResources;->addIndex(Lcom/android/settingslib/search/GtsIndexableData;)V

    .line 16
    new-instance v0, Lcom/android/settingslib/search/GtsIndexableData;

    const-class v1, Lcom/samsung/android/settings/as/vibration/VibrationSystemIntensitySettings;

    sget-object v2, Lcom/samsung/android/settings/as/vibration/VibrationSystemIntensitySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/GtsIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/GtsIndexableResources;->addIndex(Lcom/android/settingslib/search/GtsIndexableData;)V

    .line 17
    new-instance v0, Lcom/android/settingslib/search/GtsIndexableData;

    const-class v1, Lcom/samsung/android/settings/general/GeneralDeviceSettings;

    sget-object v2, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/GtsIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/GtsIndexableResources;->addIndex(Lcom/android/settingslib/search/GtsIndexableData;)V

    .line 18
    new-instance v0, Lcom/android/settingslib/search/GtsIndexableData;

    const-class v1, Lcom/samsung/android/settings/inputmethod/MouseAndTrackpadSettings;

    sget-object v2, Lcom/samsung/android/settings/inputmethod/MouseAndTrackpadSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/GtsIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/GtsIndexableResources;->addIndex(Lcom/android/settingslib/search/GtsIndexableData;)V

    .line 19
    new-instance v0, Lcom/android/settingslib/search/GtsIndexableData;

    const-class v1, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;

    sget-object v2, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/GtsIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/GtsIndexableResources;->addIndex(Lcom/android/settingslib/search/GtsIndexableData;)V

    .line 20
    new-instance v0, Lcom/android/settingslib/search/GtsIndexableData;

    const-class v1, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;

    sget-object v2, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/GtsIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/GtsIndexableResources;->addIndex(Lcom/android/settingslib/search/GtsIndexableData;)V

    .line 21
    new-instance v0, Lcom/android/settingslib/search/GtsIndexableData;

    const-class v1, Lcom/samsung/android/settings/notification/ConfigureNotificationMoreSettings;

    sget-object v2, Lcom/samsung/android/settings/notification/ConfigureNotificationMoreSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/GtsIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/GtsIndexableResources;->addIndex(Lcom/android/settingslib/search/GtsIndexableData;)V

    .line 22
    new-instance v0, Lcom/android/settingslib/search/GtsIndexableData;

    const-class v1, Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings;

    sget-object v2, Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/GtsIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/GtsIndexableResources;->addIndex(Lcom/android/settingslib/search/GtsIndexableData;)V

    .line 23
    new-instance v0, Lcom/android/settingslib/search/GtsIndexableData;

    const-class v1, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;

    sget-object v2, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/GtsIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/GtsIndexableResources;->addIndex(Lcom/android/settingslib/search/GtsIndexableData;)V

    .line 24
    new-instance v0, Lcom/android/settingslib/search/GtsIndexableData;

    const-class v1, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    sget-object v2, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/GtsIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/GtsIndexableResources;->addIndex(Lcom/android/settingslib/search/GtsIndexableData;)V

    .line 25
    new-instance v0, Lcom/android/settingslib/search/GtsIndexableData;

    const-class v1, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    sget-object v2, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/GtsIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/GtsIndexableResources;->addIndex(Lcom/android/settingslib/search/GtsIndexableData;)V

    .line 26
    new-instance v0, Lcom/android/settingslib/search/GtsIndexableData;

    const-class v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    sget-object v2, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/GtsIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/GtsIndexableResources;->addIndex(Lcom/android/settingslib/search/GtsIndexableData;)V

    return-void
.end method


# virtual methods
.method public addIndex(Lcom/android/settingslib/search/GtsIndexableData;)V
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/settingslib/search/GtsIndexableResources;->mProviders:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getProviderValues()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/search/GtsIndexableData;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object p0, p0, Lcom/android/settingslib/search/GtsIndexableResources;->mProviders:Ljava/util/Set;

    return-object p0
.end method
