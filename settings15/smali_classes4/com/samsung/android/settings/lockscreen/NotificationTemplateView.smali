.class public final Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentBehavior:Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;

.field public mCurrentMode:I

.field public final mDimmedBGView:Landroid/view/View;

.field public final mHandler:Landroid/os/Handler;

.field public final mInvertTextRunnable:Lcom/samsung/android/settings/lockscreen/NotificationTemplateView$1;

.field public mIsAdaptiveTextColor:Z

.field public mIsInOpenTheme:Z

.field public mIsQuickColoring:Z

.field public mIsWhiteWallpaper:Z

.field public final mSettingsObserver:Lcom/samsung/android/settings/lockscreen/NotificationTemplateView$2;

.field public final mStackScrollerBGView:Landroid/view/View;

.field public mTextColorInversion:Z

.field public mViewOpacity:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const-string v0, "com.android.systemui"

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mViewOpacity:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mCurrentMode:I

    iput-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mIsWhiteWallpaper:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mIsAdaptiveTextColor:Z

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView$1;-><init>(Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;)V

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mInvertTextRunnable:Lcom/samsung/android/settings/lockscreen/NotificationTemplateView$1;

    new-instance v3, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView$2;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView$2;-><init>(Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mSettingsObserver:Lcom/samsung/android/settings/lockscreen/NotificationTemplateView$2;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "current_sec_active_themepackage"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mIsInOpenTheme:Z

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    const-string/jumbo v2, "theme_designer_quick_panel_turned_on"

    const-string v4, "bool"

    invoke-virtual {p1, v2, v4, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mIsQuickColoring:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mIsQuickColoring:Z

    :goto_1
    new-instance p1, Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mDimmedBGView:Landroid/view/View;

    new-instance p1, Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mStackScrollerBGView:Landroid/view/View;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mDimmedBGView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->getDimmedBgColor()I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mStackScrollerBGView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->getStackBGColor()I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mStackScrollerBGView:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mDimmedBGView:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "notification_text_color_inversion"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne v3, p1, :cond_1

    move v1, v3

    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mIsAdaptiveTextColor:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->changeState()V

    return-void
.end method


# virtual methods
.method public final changeState()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mCurrentBehavior:Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    new-instance v0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mCurrentBehavior:Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;

    const-class v0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mCurrentBehavior:Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;

    iget-object v2, v1, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d08fb

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    const v3, 0x7f0a101c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/DateTimeView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/widget/DateTimeView;->setTime(J)V

    iget-object v2, v1, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    const v3, 0x7f0a0797

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContext:Landroid/content/Context;

    const v4, 0x7f06064e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v2, v1, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, v1, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mCurrentBehavior:Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;

    iput-object v1, v0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mCurrentBehavior:Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mStackScrollerBGView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mDimmedBGView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final getDimmedBgColor()I
    .locals 5

    const-string v0, "com.android.systemui"

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    iget-boolean v2, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mIsQuickColoring:Z

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    const-string/jumbo v3, "qp_notification_background_color"

    const-string v4, "color"

    invoke-virtual {p0, v3, v4, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move p0, v2

    :goto_0
    if-eq p0, v2, :cond_0

    return p0

    :cond_0
    const/16 p0, 0x20

    if-eq v1, p0, :cond_1

    const p0, -0x30304

    return p0

    :cond_1
    const p0, -0xdadadb

    return p0
.end method

.method public final getStackBGColor()I
    .locals 6

    const-string v0, "com.android.systemui"

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    iget-boolean v2, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mIsQuickColoring:Z

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v4, "sec_panel_background_color"

    const-string v5, "color"

    invoke-virtual {v3, v4, v5, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v0, v2

    :goto_0
    if-eq v0, v2, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x10

    const v2, -0x171718

    if-eq v1, v0, :cond_2

    const/16 p0, 0x20

    if-eq v1, p0, :cond_1

    return v2

    :cond_1
    const p0, -0xc3c3c4

    return p0

    :cond_2
    iget-boolean p0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mIsWhiteWallpaper:Z

    if-eqz p0, :cond_3

    const p0, -0x5a5a5b

    return p0

    :cond_3
    return v2
.end method

.method public final onAttachedToWindow()V
    .locals 7

    const-string v0, "com.android.systemui"

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "notification_text_color_inversion"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mSettingsObserver:Lcom/samsung/android/settings/lockscreen/NotificationTemplateView$2;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mSettingsObserver:Lcom/samsung/android/settings/lockscreen/NotificationTemplateView$2;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView$2;->onChange(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "current_sec_active_themepackage"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    iput-boolean v4, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mIsInOpenTheme:Z

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v3, "theme_designer_quick_panel_turned_on"

    const-string v4, "bool"

    invoke-virtual {v1, v3, v4, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mIsQuickColoring:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iput-boolean v2, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mIsQuickColoring:Z

    :goto_1
    iget-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mIsQuickColoring:Z

    if-eqz v1, :cond_2

    const-string v1, "NTV"

    const-string v2, "NotiPreview Setting catch QSColoring color"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mCurrentBehavior:Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;

    iget-boolean p0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mIsQuickColoring:Z

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "color"

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    :try_start_1
    iget-object p0, v1, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    const-string/jumbo v3, "qp_notification_title_color"

    invoke-virtual {p0, v3, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    const-string/jumbo v5, "qp_notification_content_color"

    invoke-virtual {p0, v5, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    const-string/jumbo v6, "qp_notification_primary_color"

    invoke-virtual {p0, v6, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v0, v1, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    const v2, 0x7f0a0797

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object p0, v1, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    const v0, 0x7f0a1041

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, v1, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    const v0, 0x7f0a0fe1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, v1, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    const v0, 0x7f0a101c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mCurrentBehavior:Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :catch_1
    :goto_2
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mSettingsObserver:Lcom/samsung/android/settings/lockscreen/NotificationTemplateView$2;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mCurrentBehavior:Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;

    iget-object v2, v1, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v4, 0x40000000    # 2.0f

    if-ltz v3, :cond_0

    iget-object p2, v1, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p2, v3, v2}, Landroid/view/View;->measure(II)V

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->measure(II)V

    :goto_0
    iget-object p2, v1, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mStackScrollerBGView:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/view/View;->measure(II)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mDimmedBGView:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/view/View;->measure(II)V

    :cond_2
    invoke-virtual {p0, v0, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public final setSensitiveMode(I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mCurrentBehavior:Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-object p1, v0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    const v3, 0x7f0a0fe1

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/16 v3, 0x8

    if-eqz p1, :cond_2

    if-eqz v2, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-object p1, v0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    const v4, 0x7f0a1041

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_4

    if-eqz v2, :cond_3

    move v4, v3

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_2
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    iget-object p1, v0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    const v0, 0x7f0a0116

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_6

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    move v1, v3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->setTextInversion()V

    return-void
.end method

.method public final setTextInversion()V
    .locals 7

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mIsInOpenTheme:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mIsQuickColoring:Z

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mIsAdaptiveTextColor:Z

    iget-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mTextColorInversion:Z

    if-eq v1, v0, :cond_9

    const-string v1, " textColor Inversion = "

    const-string v2, "NTV"

    invoke-static {v1, v2, v0}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mCurrentBehavior:Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;

    iget-object v2, v1, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    if-eqz v2, :cond_8

    iget-object v2, v1, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    const/16 v3, 0x20

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    iget-boolean v3, v1, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mIsWhiteWallpaper:Z

    if-nez v3, :cond_2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move v4, v0

    :goto_1
    iget-object v2, v1, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    const v3, 0x7f0a1041

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f060654

    const v5, 0x7f060655

    if-eqz v4, :cond_4

    iget-object v6, v1, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->getColor(I)I

    move-result v6

    goto :goto_2

    :cond_4
    iget-object v6, v1, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->getColor(I)I

    move-result v6

    :goto_2
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v1, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    const v6, 0x7f0a0116

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v4, :cond_5

    iget-object v3, v1, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getColor(I)I

    move-result v3

    goto :goto_3

    :cond_5
    iget-object v5, v1, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v1, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    const v3, 0x7f0a101c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v4, :cond_6

    iget-object v3, v1, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContext:Landroid/content/Context;

    const v5, 0x7f060653

    invoke-virtual {v3, v5}, Landroid/content/Context;->getColor(I)I

    move-result v3

    goto :goto_4

    :cond_6
    iget-object v3, v1, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContext:Landroid/content/Context;

    const v5, 0x7f060652

    invoke-virtual {v3, v5}, Landroid/content/Context;->getColor(I)I

    move-result v3

    :goto_4
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v1, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    const v3, 0x7f0a0fe1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v4, :cond_7

    iget-object v1, v1, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContext:Landroid/content/Context;

    const v3, 0x7f060651

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    goto :goto_5

    :cond_7
    iget-object v1, v1, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContext:Landroid/content/Context;

    const v3, 0x7f060650

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    :goto_5
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_8
    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mTextColorInversion:Z

    :cond_9
    :goto_6
    return-void
.end method

.method public final setViewOpacity(FZ)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mViewOpacity:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mDimmedBGView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mStackScrollerBGView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->setTextInversion()V

    iput p1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mViewOpacity:F

    :cond_1
    return-void
.end method
