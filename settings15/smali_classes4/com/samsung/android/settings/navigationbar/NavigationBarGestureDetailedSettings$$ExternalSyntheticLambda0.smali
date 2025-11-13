.class public final synthetic Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x1

    const/4 p1, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;

    iget p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v5}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "navigationbar_switch_apps_when_hint_hidden"

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, v5, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mSwitchAppsWhenHintHidden:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return v4

    :pswitch_0
    iget-object p0, v5, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getNavBarMode(Landroid/content/Context;)I

    move-result p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {v5}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "navigation_bar_gesture_hint"

    invoke-static {v6, v7, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, v5, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mGestureHintPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v6, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-ne p0, p1, :cond_1

    if-eqz p2, :cond_0

    move-wide v0, v2

    :cond_0
    const/16 p0, 0x1d3f

    invoke-static {v4, p0, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :cond_1
    iget-object p0, v5, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mOverlayInteractor:Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->setInteractionMode()V

    return v4

    :pswitch_1
    sget-object p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v5}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "navigation_bar_block_gestures_with_spen"

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, v5, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mBlockGestureWithSPenPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-eqz p0, :cond_2

    move-wide v0, v2

    :cond_2
    const/16 p0, 0x1d41

    invoke-static {v4, p0, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return v4

    :pswitch_2
    sget-object p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const p2, 0xb65f9

    int-to-long v0, p0

    invoke-static {v4, p2, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    invoke-virtual {v5}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-boolean v0, v5, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mIsTaskBarEnabled:Z

    if-eqz v0, :cond_3

    if-eqz p0, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    move v0, p0

    :goto_0
    const-string/jumbo v1, "navigationbar_key_position"

    invoke-static {p2, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p2, v5, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mButtonPositionPreference:Landroidx/preference/SecDropDownPreference;

    iget-boolean v0, v5, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mIsTaskBarEnabled:Z

    if-eqz v0, :cond_5

    if-nez p0, :cond_4

    move p1, v4

    :cond_4
    move p0, p1

    :cond_5
    invoke-virtual {p2, p0}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
