.class public Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mLockScreenEditor:Landroid/view/View;

.field public mWidgetEditor:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final newActivityStart(Landroid/view/View;Landroidx/preference/PreferenceViewHolder;)V
    .locals 7

    const v0, 0x7f0a08f6

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "SecLockScreenEditorPreference"

    if-ne p1, v0, :cond_0

    :try_start_0
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.dressroom.intent.action.SHOW_LOCK_SETTINGS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x14000020

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v0, "wallpaper_index"
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, -0x1

    :try_start_1
    const-string v3, "content://com.android.systemui.pluginlock.provider"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "get_wallpaper_index"

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v5, v6, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "wallpaper_index"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "getWallPaperIndex() : "

    const-string v5, "SecLockScreenEditorPreference"

    invoke-static {v4, v3, v5}, Landroidx/glance/session/SessionManagerImpl$scope$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string p2, "ActivityNotFoundException in EditMainActivity"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    :cond_0
    const v0, 0x7f0a1155

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-ne p1, p2, :cond_1

    :try_start_3
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.settings.FaceWidgetSettings"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p0, "4980W"

    const/16 p2, 0x1130

    invoke-static {p2, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(ILjava/lang/String;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    const-string p2, "ActivityNotFoundException in FaceWidgetSettings"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :cond_1
    :goto_1
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    new-instance p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference$$ExternalSyntheticLambda2;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference$$ExternalSyntheticLambda2;-><init>(Landroid/view/View;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 10

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a08f6

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->mLockScreenEditor:Landroid/view/View;

    const v0, 0x7f0a1155

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->mWidgetEditor:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isMinimalBatteryUseEnabled(Landroid/content/Context;)Z

    move-result v3

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v4

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

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->mWidgetEditor:Landroid/view/View;

    if-nez v3, :cond_1

    if-eqz v4, :cond_2

    :cond_1
    move v1, v8

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f14250a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f141c84

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f140cc0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->mLockScreenEditor:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v3, v5, p1}, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;ZLjava/lang/String;Landroidx/preference/PreferenceViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->mWidgetEditor:Landroid/view/View;

    new-instance v9, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference$$ExternalSyntheticLambda1;

    move-object v1, v9

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;ZZLjava/lang/String;Ljava/lang/String;Landroidx/preference/PreferenceViewHolder;)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "lock_screen_additional_info"

    const-string v1, "hide"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->mWidgetEditor:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "grayout"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->mWidgetEditor:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->mWidgetEditor:Landroid/view/View;

    invoke-virtual {p0, v8}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    :goto_1
    return-void
.end method
