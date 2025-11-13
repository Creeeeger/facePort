.class public Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/accessibility/base/controller/AccessibilityObservableController;
.implements Lcom/samsung/android/settings/accessibility/base/logging/A11yStatusLoggingProvider;


# static fields
.field private static final CORNER_ACTION_TYPE_FRAGMENT:Ljava/lang/String; = "com.samsung.android.settings.accessibility.dexterity.autoaction.CornerActionTypePickerFragment"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private cornerActionList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, ":"

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p1, p0, p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "TopLeft"

    return-object p0

    :cond_0
    const/4 p1, 0x1

    aget-object p1, p0, p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "TopRight"

    return-object p0

    :cond_1
    const/4 p1, 0x2

    aget-object p1, p0, p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, "BottomLeft"

    return-object p0

    :cond_2
    const/4 p1, 0x3

    aget-object p0, p0, p1

    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "BottomRight"

    return-object p0

    :cond_3
    const-string p0, "Off"

    return-object p0
.end method

.method private getDynamicSummary()Ljava/lang/CharSequence;
    .locals 7

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_corner_actions"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "none:none:none:none"

    :cond_1
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePreferenceController;->getCornerPosition(Ljava/lang/String;)I

    move-result v1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    aget-object v0, v0, v1

    sget-object v1, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/AutoActionUtils;->mActionMap:Ljava/util/HashMap;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    sget-object v5, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/AutoActionUtils;->mActionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    const-string/jumbo v6, "sound_vibrate_mute"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p0}, Lcom/samsung/android/settings/asbase/utils/VibUtils;->hasVibrator(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    const v4, 0x7f1400b0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f1409b2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private totalActions(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    const-string p0, ":"

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p2

    sget-object p1, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/AutoActionUtils;->mActionMap:Ljava/util/HashMap;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p2, p0, p1

    const-string/jumbo v0, "none"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    array-length p1, p0

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
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

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCornerPosition(Ljava/lang/String;)I
    .locals 5

    const/4 p0, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_0
    move p1, v3

    goto :goto_1

    :sswitch_0
    const-string/jumbo v4, "top_left_corner_action_preference"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p0

    goto :goto_1

    :sswitch_1
    const-string v4, "bottom_left_corner_action_preference"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v0

    goto :goto_1

    :sswitch_2
    const-string/jumbo v4, "top_right_corner_action_preference"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move p1, v1

    goto :goto_1

    :sswitch_3
    const-string v4, "bottom_right_corner_action_preference"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move p1, v2

    :goto_1
    packed-switch p1, :pswitch_data_0

    return v3

    :pswitch_0
    return v2

    :pswitch_1
    return v0

    :pswitch_2
    return v1

    :pswitch_3
    return p0

    :sswitch_data_0
    .sparse-switch
        -0x7fc39f8f -> :sswitch_3
        -0x6f122bf9 -> :sswitch_2
        -0x2a4752c2 -> :sswitch_1
        0x49df6ee8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getStatusLoggingData(Landroid/content/Context;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "accessibility_corner_actions"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string/jumbo p1, "none:none:none:none"

    :cond_0
    const/16 v0, 0x1d

    new-array v0, v0, [Ljava/util/Map$Entry;

    const-string/jumbo v1, "open_close_notifications"

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePreferenceController;->cornerActionList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "A11YS5013"

    invoke-static {v2, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "open_close_quick_panel"

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePreferenceController;->cornerActionList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "A11YS5014"

    invoke-static {v2, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "screen_shot"

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePreferenceController;->cornerActionList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "A11YS5015"

    invoke-static {v2, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "talk_to_bixby"

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePreferenceController;->cornerActionList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "A11YS5016"

    invoke-static {v2, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "send_sos_messages"

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePreferenceController;->cornerActionList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "A11YS5017"

    invoke-static {v2, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "media_volume_up"

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePreferenceController;->cornerActionList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "A11YS5018"

    invoke-static {v2, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "media_volume_down"

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePreferenceController;->cornerActionList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "A11YS5019"

    invoke-static {v2, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "ringtone_volume_up"

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePreferenceController;->cornerActionList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "A11YS5020"

    invoke-static {v2, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "ringtone_volume_down"

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePreferenceController;->cornerActionList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "A11YS5021"

    invoke-static {v2, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "increase_brightness"

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePreferenceController;->cornerActionList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "A11YS5022"

    invoke-static {v2, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "reduce_brightness"

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePreferenceController;->cornerActionList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "A11YS5023"

    invoke-static {v2, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "screen_rotation"

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePreferenceController;->cornerActionList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "A11YS5024"

    invoke-static {v2, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "sound_vibrate_mute"

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePreferenceController;->cornerActionList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "A11YS5025"

    invoke-static {v2, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "screen_off"

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePreferenceController;->cornerActionList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "A11YS5026"

    invoke-static {v2, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "power_off_menu"

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePreferenceController;->cornerActionList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "A11YS5027"

    invoke-static {v2, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "home"

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePreferenceController;->cornerActionList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "A11YS5028"

    invoke-static {v2, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "recents"

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePreferenceController;->cornerActionList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "A11YS5029"

    invoke-static {v2, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "back"

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePreferenceController;->cornerActionList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "A11YS5030"

    invoke-static {v2, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "accessibility_button"

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePreferenceController;->cornerActionList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "A11YS5031"

    invoke-static {v2, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "double_click"

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePreferenceController;->cornerActionList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "A11YS5032"

    invoke-static {v2, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "click_and_hold"

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePreferenceController;->cornerActionList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "A11YS5033"

    invoke-static {v2, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "drag"

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePreferenceController;->cornerActionList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "A11YS5034"

    invoke-static {v2, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "drag_and_drop"

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePreferenceController;->cornerActionList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "A11YS5035"

    invoke-static {v2, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "zoom_in"

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePreferenceController;->cornerActionList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "A11YS5036"

    invoke-static {v2, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string/jumbo v1, "zoom_out"

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePreferenceController;->cornerActionList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "A11YS5037"

    invoke-static {v2, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string/jumbo v1, "swipe_left"

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePreferenceController;->cornerActionList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "A11YS5038"

    invoke-static {v2, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string/jumbo v1, "swipe_right"

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePreferenceController;->cornerActionList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "A11YS5039"

    invoke-static {v2, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string/jumbo v1, "swipe_up"

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePreferenceController;->cornerActionList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "A11YS5040"

    invoke-static {v2, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string/jumbo v1, "swipe_down"

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePreferenceController;->cornerActionList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "A11YS5041"

    invoke-static {p1, p0}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    const/16 p1, 0x1c

    aput-object p0, v0, p1

    invoke-static {v0}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePreferenceController;->getDynamicSummary()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getUriList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const-string p0, "accessibility_corner_actions"

    invoke-static {p0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public isChecked()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f060af9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->seslSetSummaryColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    instance-of v0, p1, Lcom/samsung/android/settings/widget/SecDisabledAppearancePreference;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/samsung/android/settings/widget/SecDisabledAppearancePreference;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/AutoActionUtils;->mActionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "any_screen_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Lcom/samsung/android/settings/widget/SecDisabledAppearancePreference;->setEnabledAppearance(Z)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f140097

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f141b6a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const v1, 0x7f1408c7

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/samsung/android/settings/widget/SecDisabledAppearancePreference;->mMsg:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecDisabledAppearancePreference;->setEnabledAppearance(Z)V

    const-string p0, "com.samsung.android.settings.accessibility.dexterity.autoaction.CornerActionTypePickerFragment"

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
