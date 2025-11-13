.class public Lcom/android/systemui/widget/SystemUITextView;
.super Landroid/widget/TextView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# instance fields
.field public final mAttrCount:I

.field public final mBlurSettings:Lcom/android/systemui/widget/SystemUITextView$BlurSettingsListener;

.field public final mCompoundVisible:Z

.field public mDefaultArea:Ljava/lang/String;

.field public mDensityDpi:I

.field public mFontScale:F

.field public mIsCallbackRegistered:Z

.field public final mIsFixedFontSize:Z

.field public mIsLockStarEnabled:Z

.field public final mLockStarCallback:Lcom/android/systemui/widget/SystemUITextView$1;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public mMaxFontScale:F

.field public mOriginalFontSizeDp:F

.field public mPendingUpdateFlag:J

.field public final mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

.field public final mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

.field public mUpdateFlag:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/widget/SystemUITextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/widget/SystemUITextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/widget/SystemUITextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mOriginalFontSizeDp:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mUpdateFlag:J

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    const v2, 0x3f99999a    # 1.2f

    iput v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mMaxFontScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mFontScale:F

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mDensityDpi:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/widget/SystemUITextView;->mCompoundVisible:Z

    iput v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mAttrCount:I

    iput-boolean v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mIsCallbackRegistered:Z

    iput-wide v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mPendingUpdateFlag:J

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockManager;

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    new-instance v0, Lcom/android/systemui/widget/SystemUITextView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/widget/SystemUITextView$1;-><init>(Lcom/android/systemui/widget/SystemUITextView;)V

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mLockStarCallback:Lcom/android/systemui/widget/SystemUITextView$1;

    new-instance v0, Lcom/android/systemui/widget/SystemUITextView$BlurSettingsListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/widget/SystemUITextView$BlurSettingsListener;-><init>(Lcom/android/systemui/widget/SystemUITextView;)V

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mBlurSettings:Lcom/android/systemui/widget/SystemUITextView$BlurSettingsListener;

    sget-object v0, Lcom/android/systemui/res/R$styleable;->KeyguardFontSize:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mIsFixedFontSize:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v0, Lcom/android/systemui/res/R$styleable;->SysuiWidgetRes:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    new-instance p3, Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-direct {p3}, Lcom/android/systemui/widget/SystemUITextView$ResData;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    if-eqz p2, :cond_17

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p3

    iput p3, p0, Lcom/android/systemui/widget/SystemUITextView;->mAttrCount:I

    move p3, v2

    :goto_0
    iget p4, p0, Lcom/android/systemui/widget/SystemUITextView;->mAttrCount:I

    if-ge p3, p4, :cond_16

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result p4

    const/16 v0, 0x17

    if-ne p4, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWallpaperArea:Ljava/lang/String;

    goto/16 :goto_1

    :cond_0
    if-nez p4, :cond_1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_1

    :cond_1
    const/16 v0, 0x9

    if-ne p4, v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mOriginColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    const/16 v0, 0x1a

    if-ne p4, v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    const/16 v0, 0x12

    if-ne p4, v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    const/16 v0, 0xf

    if-ne p4, v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeBlackColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    const/16 v0, 0xb

    if-ne p4, v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mOriginShadowColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    const/16 v0, 0x1c

    if-ne p4, v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgShadowColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    const/16 v0, 0x15

    if-ne p4, v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeShadowColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    const/16 v0, 0x11

    if-ne p4, v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeBlackShadowColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_9
    const/16 v0, 0x8

    if-ne p4, v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mOriginBackground:Ljava/lang/String;

    goto/16 :goto_1

    :cond_a
    const/16 v0, 0x19

    if-ne p4, v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgBackground:Ljava/lang/String;

    goto/16 :goto_1

    :cond_b
    const/16 v0, 0xd

    if-ne p4, v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeBackground:Ljava/lang/String;

    goto/16 :goto_1

    :cond_c
    const/16 v0, 0xe

    if-ne p4, v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeBlackBackground:Ljava/lang/String;

    goto :goto_1

    :cond_d
    const/4 v0, 0x2

    if-ne p4, v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mCompoundDrawable:Ljava/lang/String;

    goto :goto_1

    :cond_e
    const/4 v0, 0x4

    if-ne p4, v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mCompoundScale:Ljava/lang/String;

    goto :goto_1

    :cond_f
    const/4 v0, 0x3

    if-ne p4, v0, :cond_10

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mCompoundPadding:Ljava/lang/String;

    goto :goto_1

    :cond_10
    const/4 v0, 0x7

    if-ne p4, v0, :cond_11

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p2, p4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mMovable:Z

    goto :goto_1

    :cond_11
    const/4 v0, 0x5

    if-ne p4, v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mGroup:Ljava/lang/String;

    goto :goto_1

    :cond_12
    const/16 v0, 0xc

    if-ne p4, v0, :cond_13

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p2, p4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mReduceTransparency:Z

    goto :goto_1

    :cond_13
    const/16 v0, 0x14

    if-ne p4, v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p2, p4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemePolicyIgnorable:Z

    goto :goto_1

    :cond_14
    const/16 v0, 0x18

    if-ne p4, v0, :cond_15

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p2, p4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWallpaperColorIgnorable:Z

    :cond_15
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    :cond_16
    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->refreshResIds$4()V

    :cond_17
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mMainExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAttachedToWindow mAttrCount = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mAttrCount:I

    const-string v2, "SystemUITextView"

    invoke-static {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mAttrCount:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v1, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWallpaperArea:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mDefaultArea:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mMovable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mLockStarCallback:Lcom/android/systemui/widget/SystemUITextView$1;

    invoke-interface {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->registerSystemUIViewCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mIsLockStarEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    iget-object v2, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mGroup:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/systemui/pluginlock/PluginLockManager;->getLockStarItemLocationInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWallpaperArea:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWallpaperArea:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mIsCallbackRegistered:Z

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/widget/SystemUITextView;->updateFontSizeInKeyguardBoundary(ZLandroid/content/res/Configuration;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mIsCallbackRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mIsCallbackRegistered:Z

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {v1, v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(ZLcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-boolean v0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mMovable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mLockStarCallback:Lcom/android/systemui/widget/SystemUITextView$1;

    invoke-interface {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->removeSystemUIViewCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object p0, p0, Lcom/android/systemui/widget/SystemUITextView;->mDefaultArea:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWallpaperArea:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public onFinishInflate()V
    .locals 7

    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mOriginalFontSizeDp:F

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mOriginalFontSizeDp "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mOriginalFontSizeDp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/TextView;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUITextView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/widget/SystemUITextView;->updateFontSizeInKeyguardBoundary(ZLandroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v1, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mOriginColorId:I

    iget v2, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mOriginShadowColorId:I

    iget v0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mOriginBackgroundId:I

    const/4 v3, 0x0

    if-lez v1, :cond_1

    iget-object v4, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    if-lez v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDx()F

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDy()F

    move-result v5

    iget-object v6, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {p0, v1, v4, v5, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_2
    if-lez v0, :cond_3

    iget-object v1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method public final refreshResIds$4()V
    .locals 4

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getInstance(Landroid/content/Context;)Lcom/android/systemui/widget/SystemUIWidgetRes;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mOriginColor:Ljava/lang/String;

    const-string v3, "color"

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mOriginColorId:I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgColor:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgColorId:I

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeColor:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeColorId:I

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeBlackColor:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeBlackColorId:I

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mOriginShadowColor:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mOriginShadowColorId:I

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgShadowColor:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgShadowColorId:I

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeShadowColor:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeShadowColorId:I

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeBlackShadowColor:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeBlackShadowColorId:I

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mOriginBackground:Ljava/lang/String;

    const-string v3, "drawable"

    if-eqz v2, :cond_8

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mOriginBackgroundId:I

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgBackground:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgBackgroundId:I

    :cond_9
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeBackground:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeBackgroundId:I

    :cond_a
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeBlackBackground:Ljava/lang/String;

    if-eqz v2, :cond_b

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeBlackBackgroundId:I

    :cond_b
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mCompoundDrawable:Ljava/lang/String;

    if-eqz v2, :cond_c

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mCompoundDrawableId:I

    :cond_c
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mCompoundScale:Ljava/lang/String;

    const-string v3, "dimen"

    if-eqz v2, :cond_d

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mCompoundScaleId:I

    :cond_d
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mCompoundPadding:Ljava/lang/String;

    if-eqz v1, :cond_e

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mCompoundPaddingId:I

    :cond_e
    return-void
.end method

.method public final setMaxFontScale(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const v0, 0x3f99999a    # 1.2f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mMaxFontScale:F

    :goto_0
    iput p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mMaxFontScale:F

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/widget/SystemUITextView;->updateFontSizeInKeyguardBoundary(ZLandroid/content/res/Configuration;)V

    return-void
.end method

.method public final setVisibility(I)V
    .locals 5

    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    if-nez p1, :cond_0

    iget-wide v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mPendingUpdateFlag:J

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

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/widget/SystemUITextView;->updateStyle(JLandroid/app/SemWallpaperColors;)V

    iput-wide v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mPendingUpdateFlag:J

    :cond_0
    return-void
.end method

.method public final updateCompoundDrawable(Z)V
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v1, p1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mCompoundDrawableId:I

    if-lez v1, :cond_7

    iget p1, p1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mCompoundScaleId:I

    if-gtz p1, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object p1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v1, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mCompoundDrawableId:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v3, v3, Lcom/android/systemui/widget/SystemUITextView$ResData;->mCompoundScaleId:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget v3, p0, Lcom/android/systemui/widget/SystemUITextView;->mFontScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v4, v3, v4

    add-float/2addr v4, v3

    int-to-float v1, v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0, v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    iget-wide v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mUpdateFlag:J

    const-wide/16 v3, 0x1

    and-long/2addr v0, v3

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    const-string v1, "SystemUITextView"

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isOpenThemeLook()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isOpenThemeLockWallpaper()Z

    move-result v0

    const-string v3, "filter: "

    const-string v4, "#%08X"

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWallpaperArea:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeBlackColorId:I

    if-lez v0, :cond_5

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v5, v5, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeBlackColorId:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v0, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeColorId:I

    if-lez v0, :cond_5

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v5, v5, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeColorId:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v0, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWallpaperArea:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v3, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgColor:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgShadowColor:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget v0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgColorId:I

    if-lez v0, :cond_5

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v3, v3, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgColorId:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v0, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_5
    move-object v3, v2

    :goto_0
    if-eqz p1, :cond_6

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_6
    :try_start_0
    invoke-virtual {p0, p1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget p1, p1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mCompoundPaddingId:I

    if-lez p1, :cond_7

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mCompoundPaddingId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "Exception adding mCompoundDrawable!"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    return-void
.end method

.method public final updateFontSizeInKeyguardBoundary(ZLandroid/content/res/Configuration;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mIsFixedFontSize:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p2, Landroid/content/res/Configuration;->fontScale:F

    iget v3, p0, Lcom/android/systemui/widget/SystemUITextView;->mMaxFontScale:F

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const v3, 0x3f99999a    # 1.2f

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :goto_0
    iget p2, p2, Landroid/content/res/Configuration;->densityDpi:I

    iget v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mDensityDpi:I

    const/4 v3, 0x0

    if-eq p2, v0, :cond_1

    iput p2, p0, Lcom/android/systemui/widget/SystemUITextView;->mDensityDpi:I

    move p2, v2

    goto :goto_1

    :cond_1
    move p2, v3

    :goto_1
    iget v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mFontScale:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_2

    iput v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mFontScale:F

    goto :goto_2

    :cond_2
    move v2, p2

    :goto_2
    if-nez v2, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    iget p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mOriginalFontSizeDp:F

    iget p2, p0, Lcom/android/systemui/widget/SystemUITextView;->mFontScale:F

    mul-float/2addr p1, p2

    iget-object p2, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p2

    invoke-virtual {p0, v3, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-boolean p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mCompoundVisible:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/widget/SystemUITextView;->updateCompoundDrawable(Z)V

    :cond_4
    return-void
.end method

.method public final updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result p3

    if-eqz p3, :cond_1

    iput-wide p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mPendingUpdateFlag:J

    :goto_0
    return-void

    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "updateStyle() flag="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mUpdateFlag:J

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

    invoke-virtual {p0}, Landroid/widget/TextView;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "SystemUITextView"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mUpdateFlag:J

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->refreshResIds$4()V

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->updateTextView()V

    iget-boolean p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mCompoundVisible:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/widget/SystemUITextView;->updateCompoundDrawable(Z)V

    return-void
.end method

.method public final updateTextView()V
    .locals 13

    invoke-virtual {p0}, Landroid/widget/TextView;->semClearAllTextEffect()V

    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v1, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWallpaperArea:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getHint(JZ)Landroid/app/SemWallpaperColors$Item;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v1, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWallpaperArea:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/SemWallpaperColors$Item;->getFontColorRgb(I)I

    move-result v2

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f060061

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f060af6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    :goto_0
    invoke-virtual {v0}, Landroid/app/SemWallpaperColors$Item;->getShadowOpacity()F

    move-result v5

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v4, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    invoke-virtual {v0}, Landroid/app/SemWallpaperColors$Item;->getShadowSize()F

    move-result v0

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    if-eqz v1, :cond_2

    iget v5, v5, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgBackgroundId:I

    goto :goto_1

    :cond_2
    iget v5, v5, Lcom/android/systemui/widget/SystemUITextView$ResData;->mOriginBackgroundId:I

    :goto_1
    iget-wide v6, p0, Lcom/android/systemui/widget/SystemUITextView;->mUpdateFlag:J

    const-wide/16 v8, 0x1

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    const/4 v7, -0x1

    const-string v8, "SystemUITextView"

    const/4 v9, 0x0

    if-eqz v6, :cond_9

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isOpenThemeLook()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v10, v10, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWallpaperArea:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    move-result-wide v10

    iget-object v12, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-boolean v12, v12, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemePolicyIgnorable:Z

    invoke-static {v6, v10, v11, v12}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->needsBlackComponent(Landroid/content/Context;JZ)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "apply style: theme : white"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v10, v6, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeBlackColorId:I

    if-lez v10, :cond_3

    goto :goto_2

    :cond_3
    move v10, v7

    :goto_2
    iget v11, v6, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeBlackShadowColorId:I

    if-lez v11, :cond_4

    move v7, v11

    :cond_4
    iget v6, v6, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeBlackBackgroundId:I

    if-lez v6, :cond_5

    :goto_3
    move v5, v6

    :cond_5
    move v6, v7

    move v7, v10

    goto :goto_7

    :cond_6
    const-string v6, "apply style: theme : black"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v10, v6, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeColorId:I

    if-lez v10, :cond_7

    goto :goto_4

    :cond_7
    move v10, v7

    :goto_4
    iget v11, v6, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeShadowColorId:I

    if-lez v11, :cond_8

    move v7, v11

    :cond_8
    iget v6, v6, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeBackgroundId:I

    if-lez v6, :cond_5

    goto :goto_3

    :cond_9
    iget-object v6, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-boolean v10, v6, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWallpaperColorIgnorable:Z

    if-eqz v10, :cond_d

    if-eqz v1, :cond_a

    iget v10, v6, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgColorId:I

    goto :goto_5

    :cond_a
    iget v10, v6, Lcom/android/systemui/widget/SystemUITextView$ResData;->mOriginColorId:I

    :goto_5
    if-eqz v1, :cond_b

    iget v6, v6, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgShadowColorId:I

    goto :goto_6

    :cond_b
    iget v6, v6, Lcom/android/systemui/widget/SystemUITextView$ResData;->mOriginShadowColorId:I

    :goto_6
    if-lez v10, :cond_c

    iget-object v2, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    :cond_c
    if-lez v6, :cond_d

    iget-object v4, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    :cond_d
    move v6, v7

    :goto_7
    iget-object v10, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-boolean v10, v10, Lcom/android/systemui/widget/SystemUITextView$ResData;->mReduceTransparency:Z

    if-eqz v10, :cond_f

    iget-object v10, p0, Lcom/android/systemui/widget/SystemUITextView;->mBlurSettings:Lcom/android/systemui/widget/SystemUITextView$BlurSettingsListener;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v11, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v10, v11}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v10}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    move-result v10

    if-eqz v10, :cond_f

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v1, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mOriginColorId:I

    goto :goto_8

    :cond_e
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v1, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgColorId:I

    :goto_8
    invoke-virtual {v0, v1, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDx()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDy()F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_9

    :cond_f
    if-lez v7, :cond_10

    iget-object v1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    :cond_10
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDx()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDy()F

    move-result v2

    if-lez v6, :cond_11

    iget-object v3, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    :cond_11
    invoke-virtual {p0, v0, v1, v2, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :goto_9
    if-lez v5, :cond_12

    const-string/jumbo v0, "set Background Drawable!!"

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_12
    return-void
.end method
