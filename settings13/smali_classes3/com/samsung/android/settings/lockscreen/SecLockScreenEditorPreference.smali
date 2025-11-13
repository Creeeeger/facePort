.class public Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;
.super Landroidx/preference/Preference;
.source "SecLockScreenEditorPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsHighlightRequired:Z

.field private mIsLockScreenEditorSearch:Z

.field private mIsWidgetEditorSearch:Z

.field private mLockScreenEditor:Landroid/view/View;

.field private mWidgetEditor:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$Gjr6950tJejXhvtdpfSihJd_Hp0(Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;ZZLjava/lang/String;Ljava/lang/String;Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->lambda$onBindViewHolder$1(ZZLjava/lang/String;Ljava/lang/String;Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IwEKevr1vHSDJ7CMjYAN_cMm6SQ(Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;ZLjava/lang/String;Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->lambda$onBindViewHolder$0(ZLjava/lang/String;Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M-ksim_zYah2sepzbb8r7JiW4Lc(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->lambda$applyHighlight$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k4QjYgHnnONmKWSa8va-P1i1-Wc(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->lambda$applyHighlight$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$penPSKO9VcU3HBgiTxVbjshhZkE(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->lambda$newActivityStart$2(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 36
    iput-boolean p2, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->mIsLockScreenEditorSearch:Z

    .line 37
    iput-boolean p2, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->mIsWidgetEditorSearch:Z

    .line 38
    iput-boolean p2, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->mIsHighlightRequired:Z

    .line 53
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->mContext:Landroid/content/Context;

    .line 54
    sget p1, Lcom/android/settings/R$layout;->sec_lockscreen_editor_preference:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private applyHighlight()V
    .locals 2

    .line 158
    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->mIsHighlightRequired:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 160
    iget-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->mIsWidgetEditorSearch:Z

    if-eqz v1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->mWidgetEditor:Landroid/view/View;

    goto :goto_0

    .line 162
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->mIsLockScreenEditorSearch:Z

    if-eqz v1, :cond_1

    .line 163
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->mLockScreenEditor:Landroid/view/View;

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 166
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->applyHighlight(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 167
    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->mIsHighlightRequired:Z

    .line 168
    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->mIsLockScreenEditorSearch:Z

    .line 169
    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->mIsWidgetEditorSearch:Z

    :cond_2
    return-void
.end method

.method private applyHighlight(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 178
    :cond_0
    new-instance p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference$$ExternalSyntheticLambda3;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference$$ExternalSyntheticLambda3;-><init>(Landroid/view/View;)V

    const-wide/16 v0, 0x258

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 181
    new-instance p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference$$ExternalSyntheticLambda4;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference$$ExternalSyntheticLambda4;-><init>(Landroid/view/View;)V

    const-wide/16 v0, 0x2ee

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private getWallpaperIndex()I
    .locals 4

    const/4 v0, -0x1

    :try_start_0
    const-string v1, "content://com.android.systemui.pluginlock.provider"

    .line 139
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 140
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "get_wallpaper_index"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "wallpaper_index"

    .line 141
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWallPaperIndex() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SecLockScreenEditorPreference"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isMinimalPowerSavingMode()Z
    .locals 0

    .line 103
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/Utils;->isMinimalBatteryUseEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$applyHighlight$3(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 179
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method

.method private static synthetic lambda$applyHighlight$4(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 182
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method

.method private static synthetic lambda$newActivityStart$2(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 133
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(ZLjava/lang/String;Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 78
    :cond_0
    invoke-direct {p0, p4, p3}, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->newActivityStart(Landroid/view/View;Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(ZZLjava/lang/String;Ljava/lang/String;Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V
    .locals 0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    invoke-direct {p0, p6, p5}, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->newActivityStart(Landroid/view/View;Landroidx/preference/PreferenceViewHolder;)V

    return-void

    .line 83
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object p3, p4

    :goto_1
    const/4 p1, 0x0

    invoke-static {p0, p3, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private newActivityStart(Landroid/view/View;Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 107
    sget v0, Lcom/android/settings/R$id;->lockscreen_editor:I

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1130

    const-string v2, "SecLockScreenEditorPreference"

    if-ne p1, v0, :cond_0

    .line 109
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.dressroom.intent.action.SHOW_LOCK_SETTINGS"

    .line 110
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x14000020

    .line 111
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "wallpaper_index"

    .line 114
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->getWallpaperIndex()I

    move-result v3

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p0, "4980E"

    .line 116
    invoke-static {v1, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p2, "ActivityNotFoundException in EditMainActivity"

    .line 118
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 121
    :cond_0
    sget v0, Lcom/android/settings/R$id;->widget_editor:I

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-ne p1, p2, :cond_1

    .line 123
    :try_start_1
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.settings.FaceWidgetSettings"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 124
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p0, "4980W"

    .line 125
    invoke-static {v1, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p2, "ActivityNotFoundException in FaceWidgetSettings"

    .line 127
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 131
    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    .line 132
    new-instance p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference$$ExternalSyntheticLambda2;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference$$ExternalSyntheticLambda2;-><init>(Landroid/view/View;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public applyHighlightIfRequired(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_5

    const-string v2, "editor_dummy_for_search"

    .line 151
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "lock_editor_preview_preference"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v0

    :goto_2
    iput-boolean v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->mIsLockScreenEditorSearch:Z

    const-string v2, "widget_editor_preview_preference_dummy"

    .line 152
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->mIsWidgetEditorSearch:Z

    .line 153
    iget-boolean v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->mIsLockScreenEditorSearch:Z

    if-nez v2, :cond_4

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :cond_4
    :goto_3
    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->mIsHighlightRequired:Z

    :cond_5
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 60
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 61
    sget v0, Lcom/android/settings/R$id;->lockscreen_editor:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->mLockScreenEditor:Landroid/view/View;

    .line 62
    sget v0, Lcom/android/settings/R$id;->widget_editor:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->mWidgetEditor:Landroid/view/View;

    .line 64
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->isMinimalPowerSavingMode()Z

    move-result v3

    .line 65
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v4

    .line 67
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->mLockScreenEditor:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    const v8, 0x3ecccccd    # 0.4f

    if-eqz v3, :cond_0

    move v2, v8

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 68
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->mWidgetEditor:Landroid/view/View;

    if-nez v3, :cond_1

    if-eqz v4, :cond_2

    :cond_1
    move v1, v8

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 70
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_lock_settings_menu_disabled_power_saving_mode_on:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/android/settings/R$string;->power_saving_mode:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    aput-object v6, v5, v9

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 71
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v6, Lcom/android/settings/R$string;->dex_mode:I

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 73
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->mLockScreenEditor:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v3, v5, p1}, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;ZLjava/lang/String;Landroidx/preference/PreferenceViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->mWidgetEditor:Landroid/view/View;

    new-instance v10, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference$$ExternalSyntheticLambda1;

    move-object v1, v10

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;ZZLjava/lang/String;Ljava/lang/String;Landroidx/preference/PreferenceViewHolder;)V

    invoke-virtual {v0, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "lock_screen_additional_info"

    const-string v1, "hide"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 92
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->mWidgetEditor:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 93
    :cond_3
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "grayout"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 94
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->mWidgetEditor:Landroid/view/View;

    invoke-virtual {p1, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 95
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->mWidgetEditor:Landroid/view/View;

    invoke-virtual {p1, v8}, Landroid/view/View;->setAlpha(F)V

    .line 99
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->applyHighlight()V

    return-void
.end method
