.class public Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController;
.super Lcom/android/settings/core/SecSingleChoicePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final DARK_MODE_NO:Ljava/lang/String; = "0"

.field public static final DARK_MODE_SCHEDULED_TYPE_AUTO:I = 0x1

.field public static final DARK_MODE_SCHEDULED_TYPE_USER:I = 0x2

.field public static final DARK_MODE_SCHEDULE_UNSUPPORTED:I = -0x1

.field private static final DARK_MODE_YES:Ljava/lang/String; = "1"

.field private static final KEY:Ljava/lang/String; = "dark_mode"

.field private static final KEY_DISABLED_IN_PSM:Ljava/lang/String; = "nighttheme_err_disabled_in_psm"

.field private static final KEY_END_TIME:Ljava/lang/String; = "end_time"

.field private static final KEY_SCHEDULED:Ljava/lang/String; = "scheduled"

.field private static final KEY_SCHEDULE_TYPE:Ljava/lang/String; = "schedule_type"

.field private static final KEY_START_TIME:Ljava/lang/String; = "start_time"

.field private static final TAG:Ljava/lang/String; = "DarkModePreferenceController"


# instance fields
.field private final mDelegate:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$5N8nTg0vTQTRlR-mcrY__mIsH28(Landroid/app/UiModeManager;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController;->lambda$setValue$0(Landroid/app/UiModeManager;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "dark_mode"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/SecSingleChoicePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController;->mHandler:Landroid/os/Handler;

    const-class v1, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {p1, v1}, Lcom/android/settings/core/BasePreferenceController;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {p1, v1, v0}, Lcom/android/settings/core/BasePreferenceController;->createInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    iput-object p1, p0, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController;->mDelegate:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    return-void
.end method

.method private getDarkModeScheduledType()I
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController;->isDarkModeScheduledTypeSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "display_night_theme_scheduled_type"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private getTime(J)Ljava/time/LocalTime;
    .locals 4

    const-wide/16 v0, 0x3c

    div-long v2, p1, v0

    long-to-int p0, v2

    rem-long/2addr p1, v0

    long-to-int p1, p1

    invoke-static {p0, p1}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object p0

    return-object p0
.end method

.method private isDarkModeScheduled()Z
    .locals 2

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "display_night_theme_scheduled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private isDarkModeScheduledTypeSupported()Z
    .locals 2

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "display_night_theme_scheduled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isPowerSavingAndTurnOnDarkModeEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isMediumPowerSavingModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "pms_settings_dark_mode_enabled"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$setValue$0(Landroid/app/UiModeManager;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/UiModeManager;->setNightMode(I)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController;->isPowerSavingAndTurnOnDarkModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nighttheme_err_disabled_in_psm"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/BasePreferenceController;->setStatusCode(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController;->mDelegate:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->getAvailabilityStatus()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getControlType()I
    .locals 0

    const/16 p0, 0x65

    return p0
.end method

.method public getEntries()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController;->mDelegate:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->getEntries()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getEntryValues()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController;->mDelegate:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->getEntryValues()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getImageEntries()Ljava/util/ArrayList;
    .locals 0
    .annotation build Landroid/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController;->mDelegate:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->getImageEntries()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "dark_mode"

    return-object p0
.end method

.method public getSelectedValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController;->mDelegate:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->getSelectedValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSubEntries()Ljava/util/ArrayList;
    .locals 0
    .annotation build Landroid/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController;->mDelegate:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->getSubEntries()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 7

    invoke-super {p0}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/cube/ControlValue$Builder;

    iget-object v2, v0, Lcom/samsung/android/settings/cube/ControlValue;->mKey:Ljava/lang/String;

    iget v3, v0, Lcom/samsung/android/settings/cube/ControlValue;->mControlType:I

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/settings/cube/ControlValue$Builder;-><init>(Ljava/lang/String;I)V

    iget-object v2, v0, Lcom/samsung/android/settings/cube/ControlValue;->mBundle:Landroid/os/Bundle;

    iput-object v2, v1, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController;->getAvailabilityStatus()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mAvailabilityStatus:I

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, v1, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mForceChange:Ljava/lang/Boolean;

    iget-object v2, v0, Lcom/samsung/android/settings/cube/ControlValue;->mControlId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setControlId(Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/samsung/android/settings/cube/ControlValue;->mIsDefault:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mIsDefault:Ljava/lang/Boolean;

    iget-object v2, v0, Lcom/samsung/android/settings/cube/ControlValue;->mStatusCode:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mStatusCode:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/android/settings/cube/ControlValue;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setValue(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController;->getDarkModeScheduledType()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "display_night_theme_on_time"

    const-wide/16 v4, 0x474

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v2, v2

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "display_night_theme_off_time"

    const-wide/16 v5, 0x1a4

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    long-to-int v3, v3

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v4, "display_night_theme_scheduled"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const-string/jumbo v4, "schedule_type"

    invoke-virtual {v1, v0, v4}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->addAttributeInt(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "start_time"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "end_time"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "scheduled"

    invoke-virtual {v1, p0, v0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->addAttributeInt(ILjava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->build()Lcom/samsung/android/settings/cube/ControlValue;

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

    invoke-super {p0}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public isControllable()Z
    .locals 0

    const/4 p0, 0x1

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

.method public needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setSelectedValue(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController;->mDelegate:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->setSelectedValue(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 14

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/UiModeManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/ControlValue;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v4, p1, Lcom/samsung/android/settings/cube/ControlValue;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v5, "schedule_type"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_6

    sget-object v4, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "schedule type: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Lcom/samsung/android/settings/cube/ControlValue;->getAttributeInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "scheduled"

    invoke-virtual {p1, v4}, Lcom/samsung/android/settings/cube/ControlValue;->getAttributeInt(Ljava/lang/String;)I

    move-result v4

    iget-object v7, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "display_night_theme_scheduled"

    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p1, v5}, Lcom/samsung/android/settings/cube/ControlValue;->getAttributeInt(Ljava/lang/String;)I

    move-result v5

    const-string v7, "display_night_theme_scheduled_type"

    if-ne v5, v3, :cond_2

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v4, :cond_1

    invoke-virtual {v0, v6}, Landroid/app/UiModeManager;->setNightMode(I)V

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v0, v1}, Landroid/app/UiModeManager;->setNightMode(I)V

    goto/16 :goto_2

    :cond_2
    iget-object v3, p1, Lcom/samsung/android/settings/cube/ControlValue;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v5, "start_time"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcom/samsung/android/settings/cube/ControlValue;->mBundle:Landroid/os/Bundle;

    const-string v6, "end_time"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1, v5}, Lcom/samsung/android/settings/cube/ControlValue;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "display_night_theme_on_time"

    invoke-static {v3, v5, v8, v9}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    const-wide/16 v12, 0x5a0

    if-ltz v3, :cond_3

    cmp-long v3, v8, v12

    if-gez v3, :cond_3

    invoke-direct {p0, v8, v9}, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController;->getTime(J)Ljava/time/LocalTime;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/UiModeManager;->setCustomNightModeStart(Ljava/time/LocalTime;)V

    :cond_3
    invoke-virtual {p1, v6}, Lcom/samsung/android/settings/cube/ControlValue;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "display_night_theme_off_time"

    invoke-static {p1, v3, v5, v6}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    cmp-long p1, v5, v10

    if-ltz p1, :cond_4

    cmp-long p1, v5, v12

    if-gez p1, :cond_4

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController;->getTime(J)Ljava/time/LocalTime;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/UiModeManager;->setCustomNightModeEnd(Ljava/time/LocalTime;)V

    :cond_4
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v7, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v4, :cond_5

    const/4 p1, 0x3

    invoke-virtual {v0, p1}, Landroid/app/UiModeManager;->setNightMode(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v1}, Landroid/app/UiModeManager;->setNightMode(I)V

    goto :goto_2

    :cond_6
    const-string p1, "display_night_theme"

    if-ne v1, v2, :cond_7

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController$$ExternalSyntheticLambda0;-><init>(Landroid/app/UiModeManager;I)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2
    new-instance p1, Lcom/samsung/android/settings/cube/ControlResult$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->SUCCESS:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    iput-object p0, p1, Lcom/samsung/android/settings/cube/ControlResult$Builder;->mResultCode:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->build()Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
