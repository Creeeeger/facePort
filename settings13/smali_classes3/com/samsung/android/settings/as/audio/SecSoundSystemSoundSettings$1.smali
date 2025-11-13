.class Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "SecSoundSystemSoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 196
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
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

    const/4 p0, 0x0

    .line 231
    invoke-static {p1, p0, p0}, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;->-$$Nest$smbuildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

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

    .line 236
    invoke-super {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;->getGtsResourceGroup()Ljava/util/HashMap;

    move-result-object p0

    .line 237
    sget-object v0, Lcom/samsung/android/settings/gts/GtsGroup;->GROUP_KEY_SOUNDS_SYSTEM_SOUNDS:Lcom/samsung/android/settings/gts/GtsGroup;

    invoke-virtual {v0}, Lcom/samsung/android/settings/gts/GtsGroup;->getGroupName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "touch_sounds"

    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-virtual {v0}, Lcom/samsung/android/settings/gts/GtsGroup;->getGroupName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "screen_locking_sounds"

    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    invoke-virtual {v0}, Lcom/samsung/android/settings/gts/GtsGroup;->getGroupName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "charging_sounds"

    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    invoke-virtual {v0}, Lcom/samsung/android/settings/gts/GtsGroup;->getGroupName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dial_pad_tones"

    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-virtual {v0}, Lcom/samsung/android/settings/gts/GtsGroup;->getGroupName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "keyboard_sound"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/samsung/android/settings/gts/GtsGroup;->GROUP_KEY_SOUNDS:Lcom/samsung/android/settings/gts/GtsGroup;

    invoke-virtual {v0}, Lcom/samsung/android/settings/gts/GtsGroup;->getGroupName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ringtone"

    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-virtual {v0}, Lcom/samsung/android/settings/gts/GtsGroup;->getGroupName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "system_sound"

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

    .line 214
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 215
    sget-boolean p2, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_SPEAKER:Z

    if-nez p2, :cond_0

    return-object p0

    .line 218
    :cond_0
    new-instance p2, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {p2, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v0, "keyboard_sound"

    .line 219
    iput-object v0, p2, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 220
    invoke-static {}, Lcom/android/settings/Utils;->isSecBrandAsGalaxy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    sget v0, Lcom/android/settings/R$string;->sec_keyboard_sound_vibration_jpn:I

    goto :goto_0

    .line 222
    :cond_1
    sget v0, Lcom/android/settings/R$string;->sec_keyboard_sound_vibration:I

    .line 220
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 223
    sget v0, Lcom/android/settings/R$string;->sec_sound_system:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 224
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

    .line 199
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    new-instance p2, Landroid/provider/SearchIndexableResource;

    invoke-direct {p2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 202
    sget-boolean p1, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_SPEAKER:Z

    if-nez p1, :cond_0

    return-object p0

    .line 206
    :cond_0
    sget p1, Lcom/android/settings/R$xml;->as_system_sound_settings:I

    iput p1, p2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 208
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
