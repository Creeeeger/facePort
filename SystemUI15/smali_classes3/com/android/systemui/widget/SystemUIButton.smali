.class public Lcom/android/systemui/widget/SystemUIButton;
.super Landroid/widget/Button;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAttrCount:I

.field public final mBlurSettings:Lcom/android/systemui/widget/SystemUIButton$BlurSettingsListener;

.field public mDefaultArea:Ljava/lang/String;

.field public mDensityDpi:I

.field public mFontScale:F

.field public mIsCallbackRegistered:Z

.field public mIsLockStarEnabled:Z

.field public final mLockStarCallback:Lcom/android/systemui/widget/SystemUIButton$1;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public mOriginalFontSizeDp:F

.field public mPendingUpdateFlag:J

.field public final mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

.field public final mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

.field public mUpdateFlag:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/widget/SystemUIButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/widget/SystemUIButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/widget/SystemUIButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/android/systemui/widget/SystemUIButton$ResData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    iput v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mDensityDpi:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mOriginalFontSizeDp:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mFontScale:F

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mUpdateFlag:J

    iput v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mAttrCount:I

    iput-boolean v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mIsCallbackRegistered:Z

    iput-wide v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mPendingUpdateFlag:J

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockManager;

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    new-instance v0, Lcom/android/systemui/widget/SystemUIButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/widget/SystemUIButton$1;-><init>(Lcom/android/systemui/widget/SystemUIButton;)V

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mLockStarCallback:Lcom/android/systemui/widget/SystemUIButton$1;

    new-instance v0, Lcom/android/systemui/widget/SystemUIButton$BlurSettingsListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/widget/SystemUIButton$BlurSettingsListener;-><init>(Lcom/android/systemui/widget/SystemUIButton;)V

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mBlurSettings:Lcom/android/systemui/widget/SystemUIButton$BlurSettingsListener;

    sget-object v0, Lcom/android/systemui/res/R$styleable;->SysuiWidgetRes:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    if-eqz p2, :cond_12

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p3

    iput p3, p0, Lcom/android/systemui/widget/SystemUIButton;->mAttrCount:I

    move p3, v1

    :goto_0
    iget p4, p0, Lcom/android/systemui/widget/SystemUIButton;->mAttrCount:I

    if-ge p3, p4, :cond_11

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result p4

    const/16 v0, 0x17

    if-ne p4, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWallpaperArea:Ljava/lang/String;

    goto/16 :goto_1

    :cond_0
    if-nez p4, :cond_1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_1

    :cond_1
    const/16 v0, 0x9

    if-ne p4, v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mOriginColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    const/16 v0, 0x1a

    if-ne p4, v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWhiteBgColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    const/16 v0, 0x12

    if-ne p4, v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    const/16 v0, 0xf

    if-ne p4, v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBlackColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    const/16 v0, 0xb

    if-ne p4, v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mOriginShadowColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    const/16 v0, 0x1c

    if-ne p4, v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWhiteBgShadowColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    const/16 v0, 0x15

    if-ne p4, v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeShadowColor:Ljava/lang/String;

    goto :goto_1

    :cond_8
    const/16 v0, 0x11

    if-ne p4, v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBlackShadowColor:Ljava/lang/String;

    goto :goto_1

    :cond_9
    const/16 v0, 0x8

    if-ne p4, v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mOriginBackground:Ljava/lang/String;

    goto :goto_1

    :cond_a
    const/16 v0, 0x19

    if-ne p4, v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWhiteBgBackground:Ljava/lang/String;

    goto :goto_1

    :cond_b
    const/16 v0, 0xd

    if-ne p4, v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBackground:Ljava/lang/String;

    goto :goto_1

    :cond_c
    const/16 v0, 0xe

    if-ne p4, v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBlackBackground:Ljava/lang/String;

    goto :goto_1

    :cond_d
    const/4 v0, 0x7

    if-ne p4, v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, v0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mMovable:Z

    goto :goto_1

    :cond_e
    const/4 v0, 0x5

    if-ne p4, v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mGroup:Ljava/lang/String;

    goto :goto_1

    :cond_f
    const/16 v0, 0x14

    if-ne p4, v0, :cond_10

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, v0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemePolicyIgnorable:Z

    :cond_10
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    :cond_11
    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIButton;->refreshResIds()V

    :cond_12
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIButton;->mMainExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    iget v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mAttrCount:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    iget-object v1, v0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWallpaperArea:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mDefaultArea:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mMovable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mLockStarCallback:Lcom/android/systemui/widget/SystemUIButton$1;

    invoke-interface {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->registerSystemUIViewCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mIsLockStarEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    iget-object v2, v0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mGroup:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/systemui/pluginlock/PluginLockManager;->getLockStarItemLocationInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWallpaperArea:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    iget-object v0, v0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWallpaperArea:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mIsCallbackRegistered:Z

    :cond_1
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/Button;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/widget/SystemUIButton;->updateFontSizeInKeyguardBoundary(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mIsCallbackRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mIsCallbackRegistered:Z

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {v1, v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(ZLcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    iget-boolean v0, v0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mMovable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mLockStarCallback:Lcom/android/systemui/widget/SystemUIButton$1;

    invoke-interface {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->removeSystemUIViewCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIButton;->mDefaultArea:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWallpaperArea:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public onFinishInflate()V
    .locals 11

    invoke-super {p0}, Landroid/widget/Button;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/widget/Button;->getTextSize()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    mul-float v3, v1, v2

    div-float/2addr v0, v3

    iput v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mOriginalFontSizeDp:F

    const v3, 0x3f99999a    # 1.2f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float/2addr v2, v0

    mul-float/2addr v2, v1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUIButton;->updateFontSizeInKeyguardBoundary(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    iget v5, v4, Lcom/android/systemui/widget/SystemUIButton$ResData;->mOriginColorId:I

    iget v6, v4, Lcom/android/systemui/widget/SystemUIButton$ResData;->mOriginShadowColorId:I

    iget v4, v4, Lcom/android/systemui/widget/SystemUIButton$ResData;->mOriginBackgroundId:I

    const/4 v7, 0x0

    if-lez v5, :cond_1

    iget-object v8, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v5, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/Button;->setTextColor(I)V

    :cond_1
    if-lez v6, :cond_2

    invoke-virtual {p0}, Landroid/widget/Button;->getShadowRadius()F

    move-result v5

    invoke-virtual {p0}, Landroid/widget/Button;->getShadowDx()F

    move-result v8

    invoke-virtual {p0}, Landroid/widget/Button;->getShadowDy()F

    move-result v9

    iget-object v10, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    invoke-virtual {p0, v5, v8, v9, v6}, Landroid/widget/Button;->setShadowLayer(FFFI)V

    :cond_2
    if-lez v4, :cond_3

    iget-object v5, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-virtual {p0, v2, v0, v3, v1}, Landroid/widget/Button;->setPadding(IIII)V

    return-void
.end method

.method public final refreshResIds()V
    .locals 4

    iget-object v0, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getInstance(Landroid/content/Context;)Lcom/android/systemui/widget/SystemUIWidgetRes;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mOriginColor:Ljava/lang/String;

    const-string v3, "color"

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mOriginColorId:I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWhiteBgColor:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWhiteBgColorId:I

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeColor:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeColorId:I

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBlackColor:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBlackColorId:I

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mOriginShadowColor:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mOriginShadowColorId:I

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWhiteBgShadowColor:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWhiteBgShadowColorId:I

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeShadowColor:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeShadowColorId:I

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBlackShadowColor:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBlackShadowColorId:I

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mOriginBackground:Ljava/lang/String;

    const-string v3, "drawable"

    if-eqz v2, :cond_8

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mOriginBackgroundId:I

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWhiteBgBackground:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWhiteBgBackgroundId:I

    :cond_9
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBackground:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBackgroundId:I

    :cond_a
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBlackBackground:Ljava/lang/String;

    if-eqz v1, :cond_b

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBlackBackgroundId:I

    :cond_b
    return-void
.end method

.method public final setVisibility(I)V
    .locals 5

    invoke-super {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    if-nez p1, :cond_0

    iget-wide v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mPendingUpdateFlag:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v4, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {p1, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getSemWallpaperColors(Z)Landroid/app/SemWallpaperColors;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/widget/SystemUIButton;->updateStyle(JLandroid/app/SemWallpaperColors;)V

    iput-wide v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mPendingUpdateFlag:J

    :cond_0
    return-void
.end method

.method public final updateButtonColor()V
    .locals 12

    invoke-virtual {p0}, Landroid/widget/Button;->semClearAllTextEffect()V

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    iget-object v0, v0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWallpaperArea:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    if-eqz v0, :cond_0

    iget v5, v5, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWhiteBgColorId:I

    goto :goto_0

    :cond_0
    iget v5, v5, Lcom/android/systemui/widget/SystemUIButton$ResData;->mOriginColorId:I

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    if-eqz v0, :cond_1

    iget v6, v6, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWhiteBgShadowColorId:I

    goto :goto_1

    :cond_1
    iget v6, v6, Lcom/android/systemui/widget/SystemUIButton$ResData;->mOriginShadowColorId:I

    :goto_1
    iget-object v7, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    if-eqz v0, :cond_2

    iget v7, v7, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWhiteBgBackgroundId:I

    goto :goto_2

    :cond_2
    iget v7, v7, Lcom/android/systemui/widget/SystemUIButton$ResData;->mOriginBackgroundId:I

    :goto_2
    iget-wide v8, p0, Lcom/android/systemui/widget/SystemUIButton;->mUpdateFlag:J

    const-wide/16 v10, 0x1

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_8

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isOpenThemeLook()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    iget-object v9, v9, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWallpaperArea:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    move-result-wide v9

    iget-object v11, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    iget-boolean v11, v11, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemePolicyIgnorable:Z

    invoke-static {v8, v9, v10, v11}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->needsBlackComponent(Landroid/content/Context;JZ)Z

    move-result v8

    const-string v9, "SystemUIButton"

    if-eqz v8, :cond_5

    const-string v8, "apply style: theme : white"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    iget v9, v8, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBlackColorId:I

    if-lez v9, :cond_3

    move v5, v9

    :cond_3
    iget v9, v8, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBlackShadowColorId:I

    if-lez v9, :cond_4

    move v6, v9

    :cond_4
    iget v8, v8, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBlackBackgroundId:I

    if-lez v8, :cond_8

    :goto_3
    move v7, v8

    goto :goto_4

    :cond_5
    const-string v8, "apply style: theme : black"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    iget v9, v8, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeColorId:I

    if-lez v9, :cond_6

    move v5, v9

    :cond_6
    iget v9, v8, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeShadowColorId:I

    if-lez v9, :cond_7

    move v6, v9

    :cond_7
    iget v8, v8, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBackgroundId:I

    if-lez v8, :cond_8

    goto :goto_3

    :cond_8
    :goto_4
    iget-object v8, p0, Lcom/android/systemui/widget/SystemUIButton;->mBlurSettings:Lcom/android/systemui/widget/SystemUIButton$BlurSettingsListener;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v9, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v8, v9}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v8}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    move-result v8

    if-eqz v8, :cond_b

    if-eqz v0, :cond_9

    const v5, 0x7f0605f0

    goto :goto_5

    :cond_9
    const v5, 0x7f0605ef

    :goto_5
    if-eqz v0, :cond_a

    const v0, 0x7f080fb3

    :goto_6
    move v7, v0

    goto :goto_7

    :cond_a
    const v0, 0x7f080fb2

    goto :goto_6

    :cond_b
    :goto_7
    const/4 v0, 0x0

    if-lez v5, :cond_c

    iget-object v8, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v5, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/Button;->setTextColor(I)V

    :cond_c
    if-lez v6, :cond_d

    invoke-virtual {p0}, Landroid/widget/Button;->getShadowRadius()F

    move-result v5

    invoke-virtual {p0}, Landroid/widget/Button;->getShadowDx()F

    move-result v8

    invoke-virtual {p0}, Landroid/widget/Button;->getShadowDy()F

    move-result v9

    iget-object v10, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v6, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    invoke-virtual {p0, v5, v8, v9, v6}, Landroid/widget/Button;->setShadowLayer(FFFI)V

    :cond_d
    if-lez v7, :cond_e

    iget-object v5, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_e
    invoke-virtual {p0, v3, v1, v4, v2}, Landroid/widget/Button;->setPadding(IIII)V

    return-void
.end method

.method public final updateFontSizeInKeyguardBoundary(Landroid/content/res/Configuration;)V
    .locals 4

    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    const v1, 0x3f99999a    # 1.2f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mDensityDpi:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/android/systemui/widget/SystemUIButton;->mDensityDpi:I

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    iget v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mFontScale:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_1

    iput v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mFontScale:F

    goto :goto_1

    :cond_1
    move v2, p1

    :goto_1
    if-eqz v2, :cond_2

    iget p1, p0, Lcom/android/systemui/widget/SystemUIButton;->mOriginalFontSizeDp:F

    iget v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mFontScale:F

    mul-float/2addr p1, v0

    iget-object v0, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    invoke-virtual {p0, v3, p1}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_2
    return-void
.end method

.method public final updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Button;->getVisibility()I

    move-result p3

    if-eqz p3, :cond_1

    iput-wide p1, p0, Lcom/android/systemui/widget/SystemUIButton;->mPendingUpdateFlag:J

    :goto_0
    return-void

    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "updateStyle() flag="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mUpdateFlag:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/Button;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "SystemUIButton"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide p1, p0, Lcom/android/systemui/widget/SystemUIButton;->mUpdateFlag:J

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIButton;->refreshResIds()V

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIButton;->updateButtonColor()V

    return-void
.end method
