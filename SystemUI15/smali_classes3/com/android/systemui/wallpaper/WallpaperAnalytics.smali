.class public final Lcom/android/systemui/wallpaper/WallpaperAnalytics;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginWallpaperManager;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->mWallpaperManager:Landroid/app/WallpaperManager;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    iput-object p3, p0, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-void
.end method

.method public static getStatusId(ILcom/android/systemui/wallpaper/WallpaperAnalytics$StatusField;)Ljava/lang/String;
    .locals 2

    and-int/lit8 v0, p0, 0x3c

    if-nez v0, :cond_0

    const-string v0, "getStatusId: mode is missing. which="

    const-string v1, "WallpaperAnalytics"

    invoke-static {p0, v0, v1}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p0, v0}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "WS0004"

    goto :goto_0

    :cond_2
    const-string p1, "WS0002"

    goto :goto_0

    :cond_3
    invoke-static {p0, v0}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "WS0003"

    goto :goto_0

    :cond_4
    const-string p1, "WS0001"

    :goto_0
    if-eqz p1, :cond_5

    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "_C"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_5
    return-object p1
.end method


# virtual methods
.method public final isSggApplied(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->semGetUri(I)Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_3

    return v2

    :cond_3
    const/4 v0, 0x1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string/jumbo p1, "sgg"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    move v2, v0

    :cond_4
    return v2
.end method

.method public final setWallpaperStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setWallpaperStatus: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperAnalytics"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "wallpaper_pref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final updateWallpaperStatus(I)V
    .locals 12

    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-string v3, "WallpaperAnalytics"

    if-ne v0, v1, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-ne v0, v2, :cond_0

    const-string/jumbo v0, "updateWallpaperStatus : system&lock requested. which="

    invoke-static {p1, v0, v3}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    and-int/lit8 p1, p1, 0x3c

    or-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->updateWallpaperStatus(I)V

    or-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->updateWallpaperStatus(I)V

    return-void

    :cond_0
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-boolean v4, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    const/4 v5, 0x6

    const-string/jumbo v6, "updateWallpaperStatus : which = "

    if-eqz v4, :cond_1

    sget-boolean v4, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-eqz v4, :cond_2

    const-string v4, ". This model does not have Lockscreen wallpaper for cover display. Convering to main screen."

    invoke-static {p1, v6, v4, v3}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move p1, v5

    goto :goto_1

    :cond_1
    const-string v4, ". This model does not have Lockscreen wallpaper for sub display. Convering to main screen."

    invoke-static {p1, v6, v4, v3}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    and-int/lit8 v4, p1, 0x3c

    const/4 v5, 0x4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    sget-boolean v4, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v4}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v4

    if-nez v4, :cond_4

    move v6, v2

    :cond_4
    and-int/lit8 p1, p1, 0x3

    if-eqz v6, :cond_5

    or-int/2addr p1, v0

    goto :goto_2

    :cond_5
    or-int/2addr p1, v5

    :goto_2
    invoke-static {p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getScreenId(I)I

    move-result v4

    invoke-static {p1, v1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    if-eqz v6, :cond_7

    if-eqz v7, :cond_7

    invoke-interface {v7, v4}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->isDynamicWallpaperEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    move v4, p1

    goto :goto_3

    :cond_7
    and-int/lit8 v4, p1, 0x3c

    iget-object v6, p0, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v6, v4}, Landroid/app/WallpaperManager;->isSystemAndLockPaired(I)Z

    move-result v6

    if-eqz v6, :cond_6

    or-int/2addr v4, v2

    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "updateWallpaperStatus : which="

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", sourceWhich="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getScreenId(I)I

    move-result v6

    invoke-static {v4, v1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result v8

    const/4 v9, 0x3

    const-string v10, "Multi pack"

    if-eqz v8, :cond_a

    if-eqz v7, :cond_a

    invoke-interface {v7, v6}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->isDynamicWallpaperEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {p0, v4}, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->isSggApplied(I)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_5

    :cond_8
    invoke-interface {v7, v6}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->isCustomPackApplied(I)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v10, "Gallery Multi pack"

    goto :goto_5

    :cond_9
    invoke-interface {v7, v6}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->isMultiPackApplied(I)Z

    move-result v5

    if-eqz v5, :cond_12

    const-string v10, "Theme Multi pack"

    goto :goto_5

    :cond_a
    iget-object v6, p0, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v6, v4}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    move-result v6

    const-string v8, "Image"

    if-eqz v6, :cond_b

    if-eq v6, v2, :cond_11

    if-eq v6, v9, :cond_12

    if-eq v6, v5, :cond_10

    const/4 v5, 0x5

    if-eq v6, v5, :cond_f

    const/4 v5, 0x7

    if-eq v6, v5, :cond_d

    const/16 v5, 0x8

    if-eq v6, v5, :cond_c

    const/16 v5, 0x3e8

    if-eq v6, v5, :cond_12

    const-string v5, "getWallpaperTypeString: Unknown wpType. type="

    invoke-static {v6, v5, v3}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_b
    move-object v10, v8

    goto :goto_5

    :cond_c
    const-string v10, "Video"

    goto :goto_5

    :cond_d
    iget-object v5, p0, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v5, v4}, Landroid/app/WallpaperManager;->isStockLiveWallpaper(I)Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v5, "Internal live"

    :goto_4
    move-object v10, v5

    goto :goto_5

    :cond_e
    const-string v5, "3rd party live"

    goto :goto_4

    :cond_f
    const-string v10, "Gif"

    goto :goto_5

    :cond_10
    const-string v10, "Animated"

    goto :goto_5

    :cond_11
    const-string v10, "Motion"

    :cond_12
    :goto_5
    sget-object v5, Lcom/android/systemui/wallpaper/WallpaperAnalytics$StatusField;->TYPE:Lcom/android/systemui/wallpaper/WallpaperAnalytics$StatusField;

    invoke-static {p1, v5}, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->getStatusId(ILcom/android/systemui/wallpaper/WallpaperAnalytics$StatusField;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v10}, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->setWallpaperStatus(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getScreenId(I)I

    move-result v5

    invoke-static {v4, v1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result v6

    const-string v8, "Theme"

    const-string v10, "Featured"

    const-string v11, "Custom"

    if-eqz v6, :cond_18

    if-eqz v7, :cond_18

    invoke-interface {v7, v5}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->isDynamicWallpaperEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-interface {v7, v5}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->isCustomPackApplied(I)Z

    move-result v0

    invoke-interface {v7, v5}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->isServiceWallpaperApplied(I)Z

    move-result v1

    invoke-interface {v7, v5}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->isMultiPackApplied(I)Z

    move-result v2

    invoke-virtual {p0, v4}, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->isSggApplied(I)Z

    move-result v4

    const-string v5, "getWallpaperSourceString: isCustomMultiPack = "

    const-string v6, ", isSgg = "

    const-string v7, ", isServiceWallpaper = "

    invoke-static {v5, v6, v7, v0, v4}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isThemeMultiPack = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_13

    const-string v8, "SGG"

    goto/16 :goto_9

    :cond_13
    if-eqz v0, :cond_15

    :cond_14
    :goto_6
    move-object v8, v11

    goto/16 :goto_9

    :cond_15
    if-eqz v1, :cond_16

    const-string v8, "DLS"

    goto/16 :goto_9

    :cond_16
    if-eqz v2, :cond_17

    goto :goto_9

    :cond_17
    :goto_7
    move-object v8, v10

    goto :goto_9

    :cond_18
    new-instance v3, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;

    iget-object v5, p0, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v6

    invoke-direct {v3, v5, v4, v6}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v3}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v0}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result v0

    invoke-static {v4, v1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result v4

    if-eqz v4, :cond_19

    iget-object v4, p0, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v4, v0}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperTransparent(Z)I

    move-result v0

    goto :goto_8

    :cond_19
    iget-object v4, p0, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v4, v0}, Lcom/android/systemui/util/SettingsHelper;->getHomescreenWallpaperSource(Z)I

    move-result v0

    :goto_8
    if-eqz v0, :cond_1c

    if-eq v0, v2, :cond_1a

    if-eq v0, v1, :cond_1f

    if-eq v0, v9, :cond_1f

    goto :goto_7

    :cond_1a
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    :cond_1b
    move-object v8, v5

    goto :goto_9

    :cond_1c
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string/jumbo v0, "prompt"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string/jumbo v8, "prompt_g"

    goto :goto_9

    :cond_1d
    const-string v0, "layered"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_6

    :cond_1e
    invoke-virtual {v3}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->getImageCategory()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_1f
    :goto_9
    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperAnalytics$StatusField;->FROM:Lcom/android/systemui/wallpaper/WallpaperAnalytics$StatusField;

    invoke-static {p1, v0}, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->getStatusId(ILcom/android/systemui/wallpaper/WallpaperAnalytics$StatusField;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v8}, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->setWallpaperStatus(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
