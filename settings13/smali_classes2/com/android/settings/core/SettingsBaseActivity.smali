.class public Lcom/android/settings/core/SettingsBaseActivity;
.super Lcom/samsung/android/settings/core/SecSettingsBaseActivity;
.source "SettingsBaseActivity.java"

# interfaces
.implements Lcom/android/settings/core/CategoryMixin$CategoryHandler;


# instance fields
.field protected mCategoryMixin:Lcom/android/settings/core/CategoryMixin;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;-><init>()V

    return-void
.end method

.method private isSettingsRunOnTop()Z
    .locals 2

    .line 283
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    .line 284
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 285
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 286
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getCategoryMixin()Lcom/android/settings/core/CategoryMixin;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mCategoryMixin:Lcom/android/settings/core/CategoryMixin;

    return-object p0
.end method

.method public isLaunchableInTaskModePinned()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isLockTaskModePinned()Z
    .locals 1

    .line 277
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 278
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isNeedCategoryUpdateWithCreate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "SettingsBaseActivity#onCreate"

    .line 103
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 107
    new-instance v0, Lcom/android/settings/core/CategoryMixin;

    invoke-direct {v0, p0}, Lcom/android/settings/core/CategoryMixin;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mCategoryMixin:Lcom/android/settings/core/CategoryMixin;

    .line 108
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/core/SettingsBaseActivity;->mCategoryMixin:Lcom/android/settings/core/CategoryMixin;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/core/SettingsBaseActivity;->isNeedCategoryUpdateWithCreate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mCategoryMixin:Lcom/android/settings/core/CategoryMixin;

    invoke-virtual {v0}, Lcom/android/settings/core/CategoryMixin;->updateCategoriesOnCreate()V

    .line 117
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 120
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void

    .line 125
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/core/SettingsBaseActivity;->isLockTaskModePinned()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/settings/core/SettingsBaseActivity;->isSettingsRunOnTop()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/core/SettingsBaseActivity;->isLaunchableInTaskModePinned()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "SettingsBaseActivity"

    const-string v0, "Devices lock task mode pinned."

    .line 126
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 135
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 136
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    new-instance v0, Lcom/android/settingslib/core/lifecycle/HideNonSystemOverlayMixin;

    invoke-direct {v0, p0}, Lcom/android/settingslib/core/lifecycle/HideNonSystemOverlayMixin;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    const/4 p0, 0x1

    .line 137
    invoke-static {p0}, Lcom/google/android/material/resources/TextAppearanceConfig;->setShouldLoadFontSynchronously(Z)V

    .line 181
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .line 225
    sget v0, Lcom/android/settings/R$id;->content_frame:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 229
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 234
    sget v0, Lcom/android/settings/R$id;->content_frame:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 239
    sget v0, Lcom/android/settings/R$id;->content_frame:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTileEnabled(Landroid/content/ComponentName;Z)Z
    .locals 5

    .line 302
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 303
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-ne v4, p2, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    .line 307
    iget-object p0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mCategoryMixin:Lcom/android/settings/core/CategoryMixin;

    invoke-virtual {p0, p1}, Lcom/android/settings/core/CategoryMixin;->removeFromDenylist(Landroid/content/ComponentName;)V

    goto :goto_2

    .line 309
    :cond_3
    iget-object p0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mCategoryMixin:Lcom/android/settings/core/CategoryMixin;

    invoke-virtual {p0, p1}, Lcom/android/settings/core/CategoryMixin;->addToDenylist(Landroid/content/ComponentName;)V

    :goto_2
    if-eqz p2, :cond_4

    move p0, v3

    goto :goto_3

    :cond_4
    const/4 p0, 0x2

    .line 311
    :goto_3
    invoke-virtual {v0, p1, p0, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return v3
.end method

.method public setTitle(I)V
    .locals 1

    .line 254
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 258
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    :goto_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 244
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 248
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
