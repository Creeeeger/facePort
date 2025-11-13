.class public Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController;
.super Lcom/android/settings/core/SecSingleChoicePreferenceController;
.source "DarkModePreferenceController.java"


# static fields
.field private static final DARK_MODE_NO:Ljava/lang/String; = "0"

.field public static final DARK_MODE_SCHEDULED_TYPE_AUTO:I = 0x1

.field public static final DARK_MODE_SCHEDULED_TYPE_USER:I = 0x2

.field public static final DARK_MODE_SCHEDULE_UNSUPPORTED:I = -0x1

.field private static final DARK_MODE_YES:Ljava/lang/String; = "1"

.field private static final KEY:Ljava/lang/String; = "dark_mode"

.field private static final KEY_END_TIME:Ljava/lang/String; = "end_time"

.field private static final KEY_SCHEDULED:Ljava/lang/String; = "scheduled"

.field private static final KEY_SCHEDULE_TYPE:Ljava/lang/String; = "schedule_type"

.field private static final KEY_START_TIME:Ljava/lang/String; = "start_time"

.field private static final TAG:Ljava/lang/String; = "DarkModePreferenceController"


# instance fields
.field private final mDelegate:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$vFQMBrPZXQ2uJ2htl2Z5v2npJIg(Landroid/app/UiModeManager;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController;->lambda$setValue$0(Landroid/app/UiModeManager;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "dark_mode"

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/SecSingleChoicePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController;->mHandler:Landroid/os/Handler;

    .line 53
    const-class v1, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    .line 54
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-static {p1, v1, v0}, Lcom/samsung/android/settings/actions/ActionBuilderUtils;->getPreferenceController(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    iput-object p1, p0, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController;->mDelegate:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    return-void
.end method

.method private getDarkModeScheduledType()I
    .locals 2

    .line 227
    invoke-direct {p0}, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController;->isDarkModeScheduledTypeSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x2

    const-string v1, "display_night_theme_scheduled_type"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private getTime(J)Ljava/time/LocalTime;
    .locals 4

    const-wide/16 v0, 0x3c

    .line 145
    div-long v2, p1, v0

    long-to-int p0, v2

    .line 146
    rem-long/2addr p1, v0

    long-to-int p1, p1

    .line 147
    invoke-static {p0, p1}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object p0

    return-object p0
.end method

.method private isDarkModeScheduled()Z
    .locals 2

    .line 220
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

    .line 223
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

.method private static synthetic lambda$setValue$0(Landroid/app/UiModeManager;I)V
    .locals 0

    .line 136
    invoke-virtual {p0, p1}, Landroid/app/UiModeManager;->setNightMode(I)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController;->mDelegate:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->getAvailabilityStatus()I

    move-result p0

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

    .line 199
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

    .line 204
    iget-object p0, p0, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController;->mDelegate:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->getEntryValues()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getImageEntries()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 210
    iget-object p0, p0, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController;->mDelegate:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->getImageEntries()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

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

    .line 194
    iget-object p0, p0, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController;->mDelegate:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->getSelectedValue()Ljava/lang/String;

    move-result-object p0

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

.method public getSubEntries()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 216
    iget-object p0, p0, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController;->mDelegate:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->getSubEntries()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 7

    .line 157
    invoke-super {p0}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object v0

    .line 159
    new-instance v1, Lcom/samsung/android/settings/cube/ControlValue$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/settings/cube/ControlValue;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/settings/cube/ControlValue;->getControlType()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/settings/cube/ControlValue$Builder;-><init>(Ljava/lang/String;I)V

    .line 160
    invoke-virtual {v0}, Lcom/samsung/android/settings/cube/ControlValue;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setBundle(Landroid/os/Bundle;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v1

    .line 161
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController;->getAvailabilityStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setAvailabilityStatus(I)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v1

    .line 162
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setIgnoreUserInteraction(Ljava/lang/Boolean;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v1

    .line 163
    invoke-virtual {v0}, Lcom/samsung/android/settings/cube/ControlValue;->getControlId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setControlId(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v1

    .line 164
    invoke-virtual {v0}, Lcom/samsung/android/settings/cube/ControlValue;->isDefault()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setDefault(Z)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v1

    .line 165
    invoke-virtual {v0}, Lcom/samsung/android/settings/cube/ControlValue;->getStatusCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setStatusCode(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v1

    .line 166
    invoke-virtual {v0}, Lcom/samsung/android/settings/cube/ControlValue;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v0

    .line 168
    invoke-direct {p0}, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController;->getDarkModeScheduledType()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 171
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-wide/16 v3, 0x474

    const-string v5, "display_night_theme_on_time"

    invoke-static {v2, v5, v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v2, v2

    .line 173
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-wide/16 v4, 0x1a4

    const-string v6, "display_night_theme_off_time"

    invoke-static {v3, v6, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    long-to-int v3, v3

    .line 175
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v4, 0x1

    const-string v5, "display_night_theme_scheduled"

    invoke-static {p0, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const-string v4, "schedule_type"

    .line 178
    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->addAttributeInt(Ljava/lang/String;I)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "start_time"

    .line 179
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "end_time"

    .line 180
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v0

    const-string v1, "scheduled"

    .line 181
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->addAttributeInt(Ljava/lang/String;I)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v0

    .line 184
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->build()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

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

.method public needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    .line 189
    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setSelectedValue(Ljava/lang/String;)Z
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController;->mDelegate:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->setSelectedValue(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 14

    .line 79
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/UiModeManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 81
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

    .line 84
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/ControlValue;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "schedule_type"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_6

    .line 85
    sget-object v4, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "schedule type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Lcom/samsung/android/settings/cube/ControlValue;->getAttributeInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "scheduled"

    .line 87
    invoke-virtual {p1, v4}, Lcom/samsung/android/settings/cube/ControlValue;->getAttributeInt(Ljava/lang/String;)I

    move-result v4

    .line 88
    iget-object v7, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "display_night_theme_scheduled"

    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 91
    invoke-virtual {p1, v5}, Lcom/samsung/android/settings/cube/ControlValue;->getAttributeInt(Ljava/lang/String;)I

    move-result v5

    const-string v7, "display_night_theme_scheduled_type"

    if-ne v5, v3, :cond_2

    .line 92
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v4, :cond_1

    .line 97
    invoke-virtual {v0, v6}, Landroid/app/UiModeManager;->setNightMode(I)V

    goto/16 :goto_2

    .line 99
    :cond_1
    invoke-virtual {v0, v1}, Landroid/app/UiModeManager;->setNightMode(I)V

    goto/16 :goto_2

    .line 102
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/ControlValue;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "start_time"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/ControlValue;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    const-string v6, "end_time"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 103
    invoke-virtual {p1, v5}, Lcom/samsung/android/settings/cube/ControlValue;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 104
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

    .line 108
    invoke-direct {p0, v8, v9}, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController;->getTime(J)Ljava/time/LocalTime;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/UiModeManager;->setCustomNightModeStart(Ljava/time/LocalTime;)V

    .line 111
    :cond_3
    invoke-virtual {p1, v6}, Lcom/samsung/android/settings/cube/ControlValue;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 112
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "display_night_theme_off_time"

    invoke-static {p1, v3, v5, v6}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    cmp-long p1, v5, v10

    if-ltz p1, :cond_4

    cmp-long p1, v5, v12

    if-gez p1, :cond_4

    .line 116
    invoke-direct {p0, v5, v6}, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController;->getTime(J)Ljava/time/LocalTime;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/UiModeManager;->setCustomNightModeEnd(Ljava/time/LocalTime;)V

    .line 120
    :cond_4
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v7, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v4, :cond_5

    const/4 p1, 0x3

    .line 125
    invoke-virtual {v0, p1}, Landroid/app/UiModeManager;->setNightMode(I)V

    goto :goto_2

    .line 127
    :cond_5
    invoke-virtual {v0, v1}, Landroid/app/UiModeManager;->setNightMode(I)V

    goto :goto_2

    :cond_6
    const-string p1, "display_night_theme"

    if-ne v1, v2, :cond_7

    .line 132
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 134
    :cond_7
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 136
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController$$ExternalSyntheticLambda0;-><init>(Landroid/app/UiModeManager;I)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    :goto_2
    new-instance p1, Lcom/samsung/android/settings/cube/ControlResult$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->SUCCESS:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    .line 140
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setResult(Lcom/samsung/android/settings/cube/ControlResult$ResultCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p0

    .line 141
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->build()Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
