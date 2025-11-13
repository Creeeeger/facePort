.class Lcom/samsung/android/settings/as/vibration/VibrationSystemIntensitySettings$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "VibrationSystemIntensitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/vibration/VibrationSystemIntensitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 126
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    invoke-static {p1}, Lcom/samsung/android/settings/as/utils/VibUtils;->hasSystemVibrationMenu(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 130
    :cond_0
    new-instance v0, Lcom/samsung/android/settings/as/vibration/VibrationSystemIntensitySettingsPreferenceController;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/as/vibration/VibrationSystemIntensitySettingsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getGtsResourceGroup()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 136
    invoke-super {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;->getGtsResourceGroup()Ljava/util/HashMap;

    move-result-object p0

    .line 137
    sget-object v0, Lcom/samsung/android/settings/gts/GtsGroup;->GROUP_KEY_VIBRATION_SYSTEM:Lcom/samsung/android/settings/gts/GtsGroup;

    invoke-virtual {v0}, Lcom/samsung/android/settings/gts/GtsGroup;->getGroupName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vibrate_on_touch"

    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-virtual {v0}, Lcom/samsung/android/settings/gts/GtsGroup;->getGroupName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dialing_keypad_vibration"

    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-virtual {v0}, Lcom/samsung/android/settings/gts/GtsGroup;->getGroupName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "navigation_gestures_vibration"

    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-virtual {v0}, Lcom/samsung/android/settings/gts/GtsGroup;->getGroupName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "charging_feedback_vibration"

    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-virtual {v0}, Lcom/samsung/android/settings/gts/GtsGroup;->getGroupName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "keyboard_vibration"

    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-virtual {v0}, Lcom/samsung/android/settings/gts/GtsGroup;->getGroupName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "camera_feedback_vibration"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .line 109
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    invoke-static {p1}, Lcom/samsung/android/settings/as/utils/VibUtils;->hasSystemVibrationMenu(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    return-object p0

    .line 113
    :cond_0
    new-instance p2, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {p2, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v0, "keyboard_vibration"

    .line 114
    iput-object v0, p2, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 115
    invoke-static {}, Lcom/android/settings/Utils;->isSecBrandAsGalaxy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    sget v0, Lcom/android/settings/R$string;->sec_keyboard_sound_vibration_jpn:I

    goto :goto_0

    .line 117
    :cond_1
    sget v0, Lcom/android/settings/R$string;->sec_keyboard_sound_vibration:I

    .line 115
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 118
    sget v0, Lcom/android/settings/R$string;->sec_vibration_system_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 119
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .line 94
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    new-instance p2, Landroid/provider/SearchIndexableResource;

    invoke-direct {p2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 97
    invoke-static {p1}, Lcom/samsung/android/settings/as/utils/VibUtils;->hasSystemVibrationMenu(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    .line 101
    :cond_0
    sget p1, Lcom/android/settings/R$xml;->as_vibration_system_intensity_settings:I

    iput p1, p2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 103
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
