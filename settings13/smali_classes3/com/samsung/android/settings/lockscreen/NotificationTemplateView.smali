.class public Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;
.super Landroid/widget/FrameLayout;
.source "NotificationTemplateView.java"


# instance fields
.field private final DB_NAME_NOTI_BACKGROUND:Ljava/lang/String;

.field private final DB_NAME_NOTI_TEXT:Ljava/lang/String;

.field private final DB_NAME_NSSL_BACKGROUND:Ljava/lang/String;

.field private final DB_NAME_QUICKSTAR_COLORING_NOTIFICATION_SWITCH:Ljava/lang/String;

.field private final INVERSION_DB:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentBehavior:Lcom/samsung/android/settings/lockscreen/NotificationTemplateBehavior;

.field private mCurrentMode:I

.field private mDimmedBGView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mInvertTextRunnable:Ljava/lang/Runnable;

.field private mIsAdaptiveTextColor:Z

.field private mIsInOpenTheme:Z

.field private mIsQuickColoring:Z

.field private mIsWallpaperChangedInOpenTheme:Z

.field private mIsWhiteWallpaper:Z

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mStackScrollerBGView:Landroid/view/View;

.field private mTextColorInversion:Z

.field private mViewOpacity:F


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInvertTextRunnable(Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mInvertTextRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmViewOpacity(Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mViewOpacity:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsAdaptiveTextColor(Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mIsAdaptiveTextColor:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTextInversion(Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->setTextInversion(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-string v0, "com.android.systemui"

    .line 87
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v1, -0x40800000    # -1.0f

    .line 61
    iput v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mViewOpacity:F

    const/4 v1, 0x0

    .line 63
    iput v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mCurrentMode:I

    .line 64
    iput-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mIsWhiteWallpaper:Z

    const-string v2, "notification_text_color_inversion"

    .line 65
    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->INVERSION_DB:Ljava/lang/String;

    const-string v2, "quickstar_coloring_notification_switch"

    .line 66
    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->DB_NAME_QUICKSTAR_COLORING_NOTIFICATION_SWITCH:Ljava/lang/String;

    const-string v2, "qs_coloring_nssl_background_color"

    .line 67
    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->DB_NAME_NSSL_BACKGROUND:Ljava/lang/String;

    const-string v2, "qs_coloring_notification_text_color"

    .line 68
    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->DB_NAME_NOTI_TEXT:Ljava/lang/String;

    const-string v2, "qs_coloring_notification_background_color"

    .line 69
    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->DB_NAME_NOTI_BACKGROUND:Ljava/lang/String;

    .line 70
    iput-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mIsAdaptiveTextColor:Z

    .line 71
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mHandler:Landroid/os/Handler;

    .line 77
    new-instance v2, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView$1;-><init>(Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;)V

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mInvertTextRunnable:Ljava/lang/Runnable;

    .line 119
    new-instance v2, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView$2;

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView$2;-><init>(Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 88
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mContext:Landroid/content/Context;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "current_sec_active_themepackage"

    invoke-static {p1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mIsInOpenTheme:Z

    .line 91
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    const-string v2, "theme_designer_quick_panel_turned_on"

    const-string v3, "bool"

    .line 92
    invoke-virtual {p1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mIsQuickColoring:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 94
    :catch_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mIsQuickColoring:Z

    .line 96
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->init()V

    return-void
.end method

.method private changeState(I)V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mCurrentBehavior:Lcom/samsung/android/settings/lockscreen/NotificationTemplateBehavior;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 246
    invoke-interface {v0, v1}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateBehavior;->setContentVisibility(Z)V

    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 250
    :cond_1
    new-instance p1, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;-><init>(Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;)V

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mCurrentBehavior:Lcom/samsung/android/settings/lockscreen/NotificationTemplateBehavior;

    .line 251
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->updateContentView()V

    .line 252
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mStackScrollerBGView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 253
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mDimmedBGView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private getDimmedBgColor()I
    .locals 5

    const-string v0, "com.android.systemui"

    .line 140
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    .line 141
    iget-boolean v2, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mIsQuickColoring:Z

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    .line 144
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    const-string v3, "qp_notification_background_color"

    const-string v4, "color"

    .line 145
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

.method private getStackBGColor()I
    .locals 6

    const-string v0, "com.android.systemui"

    .line 166
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    .line 167
    iget-boolean v2, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mIsQuickColoring:Z

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    .line 170
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "sec_panel_background_color"

    const-string v5, "color"

    .line 171
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

    .line 184
    :cond_2
    iget-boolean p0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mIsWhiteWallpaper:Z

    if-eqz p0, :cond_3

    const p0, -0x5a5a5b

    return p0

    :cond_3
    return v2
.end method

.method private setTextInversion(F)V
    .locals 2

    .line 200
    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mIsInOpenTheme:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mIsQuickColoring:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 204
    invoke-static {p1, v0}, Lcom/android/internal/util/ContrastColorUtil;->shouldInvertTextColor(FZ)Z

    move-result p1

    .line 205
    iget-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mIsAdaptiveTextColor:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    .line 208
    :goto_0
    iget-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mTextColorInversion:Z

    if-eq p1, v0, :cond_2

    .line 209
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " textColor Inversion = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NTV"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mCurrentBehavior:Lcom/samsung/android/settings/lockscreen/NotificationTemplateBehavior;

    invoke-interface {p1, v0}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateBehavior;->updateTextInversion(Z)V

    .line 211
    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mTextColorInversion:Z

    :cond_2
    :goto_1
    return-void
.end method

.method private setViewOpacity(FZ)V
    .locals 1

    .line 127
    iget v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mViewOpacity:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 128
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mDimmedBGView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 129
    iget-object p2, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mStackScrollerBGView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 130
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->setTextInversion(F)V

    .line 131
    iput p1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mViewOpacity:F

    :cond_1
    return-void
.end method

.method private updateContentView()V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mCurrentBehavior:Lcom/samsung/android/settings/lockscreen/NotificationTemplateBehavior;

    invoke-interface {v0}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateBehavior;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mCurrentBehavior:Lcom/samsung/android/settings/lockscreen/NotificationTemplateBehavior;

    invoke-interface {v0}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateBehavior;->getView()Landroid/view/View;

    move-result-object v0

    .line 265
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mCurrentBehavior:Lcom/samsung/android/settings/lockscreen/NotificationTemplateBehavior;

    invoke-interface {v1, v0}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateBehavior;->setView(Landroid/view/View;)V

    .line 269
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mCurrentBehavior:Lcom/samsung/android/settings/lockscreen/NotificationTemplateBehavior;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateBehavior;->setContentVisibility(Z)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 5

    .line 100
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mDimmedBGView:Landroid/view/View;

    .line 101
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mStackScrollerBGView:Landroid/view/View;

    .line 102
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    .line 104
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 106
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mDimmedBGView:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$drawable;->sec_notification_template_view_bg:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 107
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mDimmedBGView:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->getDimmedBgColor()I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 108
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mStackScrollerBGView:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 109
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mStackScrollerBGView:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->getStackBGColor()I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 111
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mStackScrollerBGView:Landroid/view/View;

    invoke-virtual {p0, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mDimmedBGView:Landroid/view/View;

    invoke-virtual {p0, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mContext:Landroid/content/Context;

    .line 115
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "notification_text_color_inversion"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mIsAdaptiveTextColor:Z

    const/4 v0, 0x2

    .line 116
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->changeState(I)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    const-string v0, "com.android.systemui"

    .line 292
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 293
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notification_text_color_inversion"

    .line 294
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x1

    .line 293
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 296
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 298
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

    .line 300
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "theme_designer_quick_panel_turned_on"

    const-string v4, "bool"

    .line 301
    invoke-virtual {v1, v3, v4, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mIsQuickColoring:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 303
    :catch_0
    iput-boolean v2, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mIsQuickColoring:Z

    .line 306
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mIsQuickColoring:Z

    if-eqz v0, :cond_1

    const-string v0, "NTV"

    const-string v1, "NotiPreview Setting catch QSColoring color"

    .line 307
    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mCurrentBehavior:Lcom/samsung/android/settings/lockscreen/NotificationTemplateBehavior;

    iget-boolean p0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mIsQuickColoring:Z

    invoke-interface {v0, p0}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateBehavior;->updateQuickColoring(Z)V

    goto :goto_2

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mCurrentBehavior:Lcom/samsung/android/settings/lockscreen/NotificationTemplateBehavior;

    iget-boolean p0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mIsInOpenTheme:Z

    invoke-interface {v0, p0}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateBehavior;->updateOpenTheme(Z)V

    :goto_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 286
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 287
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 217
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 218
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mCurrentBehavior:Lcom/samsung/android/settings/lockscreen/NotificationTemplateBehavior;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateBehavior;->measure(II)I

    move-result p2

    .line 219
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mStackScrollerBGView:Landroid/view/View;

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    .line 221
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 220
    invoke-virtual {v1, p1, v3}, Landroid/view/View;->measure(II)V

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mDimmedBGView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 226
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 225
    invoke-virtual {v1, p1, v2}, Landroid/view/View;->measure(II)V

    .line 228
    :cond_1
    invoke-virtual {p0, v0, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public setCurrentMode(I)V
    .locals 2

    .line 232
    iget v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mCurrentMode:I

    if-eq v0, p1, :cond_0

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Change currentmode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NTV"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->changeState(I)V

    .line 235
    iput p1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mCurrentMode:I

    :cond_0
    return-void
.end method

.method public setIsWhiteWallpaper(Z)V
    .locals 2

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " White Wallpaper = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NTV"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mIsWhiteWallpaper:Z

    .line 275
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mCurrentBehavior:Lcom/samsung/android/settings/lockscreen/NotificationTemplateBehavior;

    invoke-interface {v0, p1}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateBehavior;->updateWhiteWallpaper(Z)V

    .line 277
    iget-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mIsInOpenTheme:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mIsQuickColoring:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mDimmedBGView:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->getDimmedBgColor()I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 280
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mStackScrollerBGView:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->getStackBGColor()I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 281
    iget p1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mViewOpacity:F

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->setViewOpacity(FZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSensitiveMode(I)V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mCurrentBehavior:Lcom/samsung/android/settings/lockscreen/NotificationTemplateBehavior;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateBehavior;->updateHideSensitive(Z)V

    .line 241
    iget p1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mViewOpacity:F

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->setTextInversion(F)V

    return-void
.end method

.method public setViewOpacity(F)V
    .locals 1

    const/4 v0, 0x0

    .line 196
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->setViewOpacity(FZ)V

    return-void
.end method

.method public setWallpaperChangedInThemeState(Z)V
    .locals 0

    .line 315
    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mIsWallpaperChangedInOpenTheme:Z

    .line 316
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mCurrentBehavior:Lcom/samsung/android/settings/lockscreen/NotificationTemplateBehavior;

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateBehavior;->updateWallpaperChangedInTheme(Z)V

    return-void
.end method

.method public updateUiMode()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mDimmedBGView:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->getDimmedBgColor()I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method
