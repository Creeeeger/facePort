.class public Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationAllAppsPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/lifecycle/DefaultLifecycleObserver;
.implements Lcom/samsung/android/settings/accessibility/base/logging/A11yStatusLoggingProvider;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final extraButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final mScreenFlashModeObserver:Landroid/database/ContentObserver;

.field private parentFragment:Landroidx/fragment/app/Fragment;

.field private radioPreference:Lcom/samsung/android/settings/accessibility/base/widget/AccessibilitySelectorWithWidgetPreference;


# direct methods
.method public static synthetic $r8$lambda$ljcCySeSFK7AJ2x7hWnXHJvYlB0(Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationAllAppsPreferenceController;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationAllAppsPreferenceController;->lambda$onClick$0(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tLsCqrGDaCXFTzAdj0JsvJarelI(Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationAllAppsPreferenceController;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationAllAppsPreferenceController;->lambda$onStart$1(Landroid/net/Uri;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrefresh(Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationAllAppsPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationAllAppsPreferenceController;->refresh()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationAllAppsPreferenceController;

    const-string v0, "ScreenFlashNotificationAllAppsPreferenceController"

    sput-object v0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationAllAppsPreferenceController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p2, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationAllAppsPreferenceController$1;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationAllAppsPreferenceController$1;-><init>(Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationAllAppsPreferenceController;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationAllAppsPreferenceController;->mScreenFlashModeObserver:Landroid/database/ContentObserver;

    const p2, 0x7f080826

    invoke-static {p1, p2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationAllAppsPreferenceController;->extraButtonDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private isColorModeAllApps()Z
    .locals 2

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_flash_notification_color_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private synthetic lambda$onClick$0(Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_flash_notification_color_global"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationAllAppsPreferenceController;->refresh()V

    return-void
.end method

.method private synthetic lambda$onStart$1(Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationAllAppsPreferenceController;->mScreenFlashModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private refresh()V
    .locals 4

    sget-object v0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationAllAppsPreferenceController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "refresh"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationAllAppsPreferenceController;->radioPreference:Lcom/samsung/android/settings/accessibility/base/widget/AccessibilitySelectorWithWidgetPreference;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationAllAppsPreferenceController;->getAvailabilityStatus()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationAllAppsPreferenceController;->radioPreference:Lcom/samsung/android/settings/accessibility/base/widget/AccessibilitySelectorWithWidgetPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationAllAppsPreferenceController;->isColorModeAllApps()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_flash_notification_color_global"

    sget v3, Lcom/android/settings/accessibility/FlashNotificationsUtil;->DEFAULT_SCREEN_FLASH_COLOR:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationAllAppsPreferenceController;->radioPreference:Lcom/samsung/android/settings/accessibility/base/widget/AccessibilitySelectorWithWidgetPreference;

    iput-boolean v0, v2, Lcom/samsung/android/settings/accessibility/base/widget/AccessibilitySelectorWithWidgetPreference;->isExtraWidgetEnabled:Z

    invoke-virtual {v2}, Landroidx/preference/Preference;->notifyChanged()V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationAllAppsPreferenceController;->radioPreference:Lcom/samsung/android/settings/accessibility/base/widget/AccessibilitySelectorWithWidgetPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationAllAppsPreferenceController;->extraButtonDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil;->getColorChipStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationAllAppsPreferenceController;->radioPreference:Lcom/samsung/android/settings/accessibility/base/widget/AccessibilitySelectorWithWidgetPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationAllAppsPreferenceController;->extraButtonDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, v0, Lcom/samsung/android/settings/accessibility/base/widget/AccessibilitySelectorWithWidgetPreference;->extraImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroidx/preference/Preference;->notifyChanged()V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/FlashNotificationsUtil;->getColorDescriptionText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f1409b2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f141fda

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationAllAppsPreferenceController;->radioPreference:Lcom/samsung/android/settings/accessibility/base/widget/AccessibilitySelectorWithWidgetPreference;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1, v2}, Landroidx/apppickerview/features/applabel/AbstractAppLabelMapFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/base/widget/AccessibilitySelectorWithWidgetPreference;->extraWidgetContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationAllAppsPreferenceController;->radioPreference:Lcom/samsung/android/settings/accessibility/base/widget/AccessibilitySelectorWithWidgetPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method private setRadioPreference(Landroidx/preference/Preference;)V
    .locals 1

    instance-of v0, p1, Lcom/samsung/android/settings/accessibility/base/widget/AccessibilitySelectorWithWidgetPreference;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/settings/accessibility/base/widget/AccessibilitySelectorWithWidgetPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationAllAppsPreferenceController;->radioPreference:Lcom/samsung/android/settings/accessibility/base/widget/AccessibilitySelectorWithWidgetPreference;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->setExtraWidgetOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationAllAppsPreferenceController;->setRadioPreference(Landroidx/preference/Preference;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_flash_notification"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x2

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

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getStatusLoggingData(Landroid/content/Context;)Ljava/util/Map;
    .locals 2
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

    const-string p1, "Yellow"

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationAllAppsPreferenceController;->isColorModeAllApps()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_flash_notification_color_global"

    sget v1, Lcom/android/settings/accessibility/FlashNotificationsUtil;->DEFAULT_SCREEN_FLASH_COLOR:I

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    :try_start_0
    invoke-static {p0}, Lcom/android/settings/accessibility/FlashNotificationsUtil;->getScreenColor(I)Lcom/android/settings/accessibility/ScreenFlashNotificationColor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "Violet"

    goto :goto_0

    :pswitch_1
    const-string p1, "Magenta"

    goto :goto_0

    :pswitch_2
    const-string p1, "Rose"

    goto :goto_0

    :pswitch_3
    const-string p1, "Red"

    goto :goto_0

    :pswitch_4
    const-string p1, "Orange"

    goto :goto_0

    :pswitch_5
    const-string p1, "Chartreuse green"

    goto :goto_0

    :pswitch_6
    const-string p1, "Green"

    goto :goto_0

    :pswitch_7
    const-string p1, "Spring green"

    goto :goto_0

    :pswitch_8
    const-string p1, "Cyan"

    goto :goto_0

    :pswitch_9
    const-string p1, "Azure"

    goto :goto_0

    :pswitch_a
    const-string p1, "Blue"
    :try_end_0
    .catch Lcom/android/settings/accessibility/FlashNotificationsUtil$ScreenColorNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationAllAppsPreferenceController;->TAG:Ljava/lang/String;

    const-string v0, "getStatusLoggingData got wrong colorInt. info"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :pswitch_b
    const-string p0, "A11YS6012"

    invoke-static {p0, p1}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Ljava/util/Map;->of()Ljava/util/Map;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_b
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "screen_flash_notification_color_mode"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationAllAppsPreferenceController;->refresh()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
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

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "screen_flash_notification_color_global"

    sget v1, Lcom/android/settings/accessibility/FlashNotificationsUtil;->DEFAULT_SCREEN_FLASH_COLOR:I

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    new-instance v0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationAllAppsPreferenceController$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationAllAppsPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationAllAppsPreferenceController;I)V

    invoke-static {p1, v0}, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment;->getInstance(ILjava/util/function/Consumer;)Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationAllAppsPreferenceController;->parentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v0, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment;

    const-string v0, "ScreenFlashNotificationColorDialogFragment"

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
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
    .locals 2

    const-string/jumbo p1, "screen_flash_notification"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string/jumbo v0, "screen_flash_notification_color_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "screen_flash_notification_color_global"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationAllAppsPreferenceController$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationAllAppsPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationAllAppsPreferenceController;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationAllAppsPreferenceController;->mScreenFlashModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setParentFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationAllAppsPreferenceController;->parentFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationAllAppsPreferenceController;->refresh()V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
