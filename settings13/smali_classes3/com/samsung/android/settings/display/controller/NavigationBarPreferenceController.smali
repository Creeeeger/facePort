.class public Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;
.super Lcom/android/settings/core/SecCustomPreferenceController;
.source "NavigationBarPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final KEY:Ljava/lang/String; = "navigation_Bar"

.field private static final KEY_BLOCK_GESTURES_WITH_SPEN_GTS:Ljava/lang/String; = "block_gestures_with_spen"

.field private static final KEY_BUTTON_ORDER_GTS:Ljava/lang/String; = "button_order"

.field private static final KEY_BUTTON_POSITION_GTS:Ljava/lang/String; = "button_position"

.field private static final KEY_GESTURE_DETAILED_GTS:Ljava/lang/String; = "gesture_detailed"

.field private static final KEY_GESTURE_HINT_GTS:Ljava/lang/String; = "gesture_hint"

.field private static final KEY_SHOW_BUTTON_TO_HIDE_KEYBOARD_GTS:Ljava/lang/String; = "show_button_to_hide_keyboard"

.field private static final KEY_SWITCH_APPS_WHEN_HINT_HIDDEN_GTS:Ljava/lang/String; = "switch_apps_when_hint_hidden"

.field private static final OFF:I = 0x0

.field private static final ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NavigationBarPreferenceController"


# instance fields
.field private mBtnOrder:I

.field private mBtnPosition:I

.field private mDetailType:I

.field private mIsBlockGesturesOn:Z

.field private mIsGestureHintOn:Z

.field private mIsHideKeyboardButtonOn:Z

.field private mIsSwitchAppsOn:Z

.field private mMode:I

.field private mPreference:Landroidx/preference/SecPreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "navigation_Bar"

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/SecCustomPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    const-string p2, "navigation_Bar"

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/SecCustomPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private getNavigationBarGTSSummary()Ljava/lang/String;
    .locals 3

    .line 222
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 223
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->navigationbar_gesture_category_name:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " - "

    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    iget v1, p0, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->mMode:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->navigationbar_buttons:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->navigationbar_full_screen_gestures:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 225
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    iget v1, p0, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->mMode:I

    if-eqz v1, :cond_2

    const-string v1, "("

    .line 229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    iget v1, p0, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->mDetailType:I

    if-nez v1, :cond_1

    .line 231
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->navigationbar_swipe_from_bottom:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 232
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->navigationbar_swipe_from_side_and_bottom:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 230
    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, ")"

    .line 233
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 235
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getNavigationSettingsValueForGTS()V
    .locals 4

    .line 160
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getNavBarMode(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->mMode:I

    .line 161
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getDetailType(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->mDetailType:I

    .line 162
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigationbar_key_position"

    .line 163
    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getDefaultSettingsValue(Ljava/lang/String;)I

    move-result v2

    .line 162
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->mBtnPosition:I

    .line 164
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigationbar_key_order"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->mBtnOrder:I

    .line 166
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isGestureHintOn(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->mIsGestureHintOn:Z

    .line 167
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigation_bar_block_gestures_with_spen"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->mIsBlockGesturesOn:Z

    .line 168
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "navigation_bar_button_to_hide_keyboard"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->mIsHideKeyboardButtonOn:Z

    .line 169
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "navigationbar_switch_apps_when_hint_hidden"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v2, v1

    :cond_2
    iput-boolean v2, p0, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->mIsSwitchAppsOn:Z

    return-void
.end method

.method private setNavigationSettingsValueForGTS(Lcom/samsung/android/settings/cube/ControlValue;)V
    .locals 6

    .line 174
    iget v0, p0, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->mMode:I

    .line 175
    iget v1, p0, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->mDetailType:I

    .line 177
    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/ControlValue;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->mMode:I

    const-string v2, "gesture_detailed"

    .line 178
    invoke-virtual {p1, v2}, Lcom/samsung/android/settings/cube/ControlValue;->getAttributeInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->mDetailType:I

    .line 179
    iget v3, p0, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->mMode:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v3, :cond_1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v5

    :goto_1
    const-string v1, "button_position"

    .line 182
    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/cube/ControlValue;->getAttributeInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->mBtnPosition:I

    const-string v1, "button_order"

    .line 183
    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/cube/ControlValue;->getAttributeInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->mBtnOrder:I

    const-string v1, "gesture_hint"

    .line 184
    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/cube/ControlValue;->getAttributeInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v5, :cond_2

    move v1, v5

    goto :goto_2

    :cond_2
    move v1, v4

    :goto_2
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->mIsGestureHintOn:Z

    const-string v1, "block_gestures_with_spen"

    .line 185
    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/cube/ControlValue;->getAttributeInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v5, :cond_3

    move v1, v5

    goto :goto_3

    :cond_3
    move v1, v4

    :goto_3
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->mIsBlockGesturesOn:Z

    const-string v1, "show_button_to_hide_keyboard"

    .line 186
    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/cube/ControlValue;->getAttributeInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v5, :cond_4

    move v1, v5

    goto :goto_4

    :cond_4
    move v1, v4

    :goto_4
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->mIsHideKeyboardButtonOn:Z

    const-string v1, "switch_apps_when_hint_hidden"

    .line 187
    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/cube/ControlValue;->getAttributeInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v5, :cond_5

    move v4, v5

    :cond_5
    iput-boolean v4, p0, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->mIsSwitchAppsOn:Z

    .line 189
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget v1, p0, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->mMode:I

    const-string v2, "navigation_bar_gesture_while_hidden"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 191
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget v1, p0, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->mDetailType:I

    const-string v2, "navigation_bar_gesture_detail_type"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 193
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 195
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isTaskBarEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->mBtnPosition:I

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->updateButtonPositionNumberForTaskBar(I)I

    move-result v1

    goto :goto_5

    .line 196
    :cond_6
    iget v1, p0, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->mBtnPosition:I

    :goto_5
    const-string v2, "navigationbar_key_position"

    .line 193
    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 197
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget v1, p0, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->mBtnOrder:I

    const-string v2, "navigationbar_key_order"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 199
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 200
    iget-boolean v1, p0, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->mIsGestureHintOn:Z

    const-string v2, "navigation_bar_gesture_hint"

    .line 199
    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 201
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 202
    iget-boolean v1, p0, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->mIsBlockGesturesOn:Z

    const-string v2, "navigation_bar_block_gestures_with_spen"

    .line 201
    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 203
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 204
    iget-boolean v1, p0, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->mIsHideKeyboardButtonOn:Z

    const-string v2, "navigation_bar_button_to_hide_keyboard"

    .line 203
    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 205
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 206
    iget-boolean v1, p0, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->mIsSwitchAppsOn:Z

    const-string v2, "navigationbar_switch_apps_when_hint_hidden"

    .line 205
    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v0, :cond_7

    .line 209
    new-instance p1, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;-><init>(Landroid/content/Context;)V

    .line 210
    invoke-virtual {p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->setInteractionMode()V

    :cond_7
    return-void
.end method

.method private updateButtonPositionNumberForTaskBar(I)I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    return p1
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    const-string v0, "navigation_Bar"

    .line 80
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 86
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    if-eqz v0, :cond_0

    .line 88
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isNavigationBarEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 90
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBarForHardKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    sget v1, Lcom/android/settings/R$string;->navigationbar_gesture_category_name:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 92
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x3

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public getLaunchIntent()Landroid/content/Intent;
    .locals 1

    .line 151
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    .line 152
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->navigationbar_title:I

    .line 153
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 v0, 0x64

    .line 154
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const v0, 0x10008000

    .line 155
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->addFlags(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "navigation_Bar"

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 3

    .line 108
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->getNavigationSettingsValueForGTS()V

    .line 110
    new-instance v0, Lcom/samsung/android/settings/cube/ControlValue$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/core/SecCustomPreferenceController;->getControlType()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/cube/ControlValue$Builder;-><init>(Ljava/lang/String;I)V

    iget v1, p0, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->mDetailType:I

    const-string v2, "gesture_detailed"

    .line 111
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->addAttributeInt(Ljava/lang/String;I)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->mBtnPosition:I

    const-string v2, "button_position"

    .line 112
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->addAttributeInt(Ljava/lang/String;I)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->mBtnOrder:I

    const-string v2, "button_order"

    .line 113
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->addAttributeInt(Ljava/lang/String;I)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v0

    .line 114
    iget-boolean v1, p0, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->mIsGestureHintOn:Z

    const-string v2, "gesture_hint"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->addAttributeInt(Ljava/lang/String;I)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v0

    .line 115
    iget-boolean v1, p0, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->mIsBlockGesturesOn:Z

    const-string v2, "block_gestures_with_spen"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->addAttributeInt(Ljava/lang/String;I)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v0

    .line 116
    iget-boolean v1, p0, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->mIsHideKeyboardButtonOn:Z

    const-string v2, "show_button_to_hide_keyboard"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->addAttributeInt(Ljava/lang/String;I)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v0

    .line 117
    iget-boolean v1, p0, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->mIsSwitchAppsOn:Z

    const-string v2, "switch_apps_when_hint_hidden"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->addAttributeInt(Ljava/lang/String;I)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v0

    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->getAvailabilityStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setAvailabilityStatus(I)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v0

    .line 119
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setIgnoreUserInteraction(Ljava/lang/Boolean;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v0

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getControlId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setControlId(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 121
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setDefault(Z)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v0

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getStatusCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setStatusCode(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->mMode:I

    .line 123
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v0

    .line 124
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->getNavigationBarGTSSummary()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setSummary(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object p0

    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->build()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public isControllable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 2

    .line 132
    new-instance v0, Lcom/samsung/android/settings/cube/ControlResult$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;->setNavigationSettingsValueForGTS(Lcom/samsung/android/settings/cube/ControlValue;)V

    .line 136
    sget-object p0, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->SUCCESS:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setResult(Lcom/samsung/android/settings/cube/ControlResult$ResultCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    goto :goto_0

    .line 138
    :cond_0
    sget-object p0, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->FAIL:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setResult(Lcom/samsung/android/settings/cube/ControlResult$ResultCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    .line 141
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->build()Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
