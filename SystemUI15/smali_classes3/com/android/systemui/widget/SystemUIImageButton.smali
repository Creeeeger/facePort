.class public Lcom/android/systemui/widget/SystemUIImageButton;
.super Landroid/widget/ImageButton;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# instance fields
.field public final mAttrCount:I

.field public mDefaultArea:Ljava/lang/String;

.field public mIsCallbackRegistered:Z

.field public mIsLockStarEnabled:Z

.field public final mLockStarCallback:Lcom/android/systemui/widget/SystemUIImageButton$1;

.field public mPendingUpdateFlag:J

.field public final mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

.field public final mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

.field public mUpdateFlag:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/widget/SystemUIImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/widget/SystemUIImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/widget/SystemUIImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mUpdateFlag:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mAttrCount:I

    iput-boolean p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mIsCallbackRegistered:Z

    iput-wide v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mPendingUpdateFlag:J

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockManager;

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    new-instance v0, Lcom/android/systemui/widget/SystemUIImageButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/widget/SystemUIImageButton$1;-><init>(Lcom/android/systemui/widget/SystemUIImageButton;)V

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mLockStarCallback:Lcom/android/systemui/widget/SystemUIImageButton$1;

    iget-object v0, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/res/R$styleable;->SysuiWidgetRes:[I

    invoke-virtual {v0, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    new-instance p3, Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-direct {p3, p1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;-><init>(I)V

    iput-object p3, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    if-eqz p2, :cond_13

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p3

    iput p3, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mAttrCount:I

    move p3, p1

    :goto_0
    iget p4, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mAttrCount:I

    if-ge p3, p4, :cond_12

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result p4

    const/16 v0, 0x17

    if-ne p4, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWallpaperArea:Ljava/lang/String;

    goto/16 :goto_1

    :cond_0
    if-nez p4, :cond_1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_1

    :cond_1
    const/16 v0, 0x9

    if-ne p4, v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mOriginColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    const/16 v0, 0x1a

    if-ne p4, v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWhiteBgColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    const/16 v0, 0x12

    if-ne p4, v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    const/16 v0, 0xf

    if-ne p4, v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeBlackColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    const/16 v0, 0xa

    if-ne p4, v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mOriginImage:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    const/16 v0, 0x13

    if-ne p4, v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeImage:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    const/16 v0, 0x10

    if-ne p4, v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeBlackImage:Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    const/16 v0, 0x1b

    if-ne p4, v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWhiteBgImage:Ljava/lang/String;

    goto :goto_1

    :cond_9
    const/16 v0, 0x1d

    if-ne p4, v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWhiteBgTintColor:Ljava/lang/String;

    goto :goto_1

    :cond_a
    const/16 v0, 0x8

    if-ne p4, v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mOriginBackground:Ljava/lang/String;

    goto :goto_1

    :cond_b
    const/16 v0, 0x19

    if-ne p4, v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWhiteBgBackground:Ljava/lang/String;

    goto :goto_1

    :cond_c
    const/16 v0, 0xd

    if-ne p4, v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeBackground:Ljava/lang/String;

    goto :goto_1

    :cond_d
    const/16 v0, 0xe

    if-ne p4, v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeBlackBackground:Ljava/lang/String;

    goto :goto_1

    :cond_e
    const/4 v0, 0x7

    if-ne p4, v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p2, p4, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mMovable:Z

    goto :goto_1

    :cond_f
    const/4 v0, 0x5

    if-ne p4, v0, :cond_10

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mGroup:Ljava/lang/String;

    goto :goto_1

    :cond_10
    const/16 v0, 0x14

    if-ne p4, v0, :cond_11

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p2, p4, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemePolicyIgnorable:Z

    :cond_11
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIImageButton;->refreshResIds$2()V

    :cond_13
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/ImageButton;->onAttachedToWindow()V

    iget v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mAttrCount:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget-object v1, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWallpaperArea:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mDefaultArea:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mMovable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mLockStarCallback:Lcom/android/systemui/widget/SystemUIImageButton$1;

    invoke-interface {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->registerSystemUIViewCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mIsLockStarEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    iget-object v2, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mGroup:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/systemui/pluginlock/PluginLockManager;->getLockStarItemLocationInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWallpaperArea:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget-object v0, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWallpaperArea:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mIsCallbackRegistered:Z

    :cond_1
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/ImageButton;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mIsCallbackRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mIsCallbackRegistered:Z

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {v1, v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(ZLcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget-boolean v0, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mMovable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mLockStarCallback:Lcom/android/systemui/widget/SystemUIImageButton$1;

    invoke-interface {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->removeSystemUIViewCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mDefaultArea:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWallpaperArea:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public final onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/ImageButton;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget v1, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mOriginImageId:I

    iget v0, v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mOriginBackgroundId:I

    if-lez v1, :cond_0

    iget-object v2, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-lez v0, :cond_1

    iget-object v1, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public final refreshResIds$2()V
    .locals 5

    iget-object v0, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getInstance(Landroid/content/Context;)Lcom/android/systemui/widget/SystemUIWidgetRes;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mOriginColor:Ljava/lang/String;

    const-string v3, "color"

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWhiteBgColor:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWhiteBgColorId:I

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeColor:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeColorId:I

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeBlackColor:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeBlackColorId:I

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mOriginImage:Ljava/lang/String;

    const-string v4, "drawable"

    if-eqz v2, :cond_4

    invoke-virtual {v0, v2, v4}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mOriginImageId:I

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWhiteBgImage:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v0, v2, v4}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWhiteBgImageId:I

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeImage:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v0, v2, v4}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeImageId:I

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeBlackImage:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v0, v2, v4}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeBlackImageId:I

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWhiteBgTintColor:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mOriginBackground:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v0, v2, v4}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mOriginBackgroundId:I

    :cond_9
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWhiteBgBackground:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-virtual {v0, v2, v4}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWhiteBgBackgroundId:I

    :cond_a
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeBackground:Ljava/lang/String;

    if-eqz v2, :cond_b

    invoke-virtual {v0, v2, v4}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeBackgroundId:I

    :cond_b
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeBlackBackground:Ljava/lang/String;

    if-eqz v1, :cond_c

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeBlackBackgroundId:I

    :cond_c
    return-void
.end method

.method public final setVisibility(I)V
    .locals 5

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    if-nez p1, :cond_0

    iget-wide v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mPendingUpdateFlag:J

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

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/widget/SystemUIImageButton;->updateStyle(JLandroid/app/SemWallpaperColors;)V

    iput-wide v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mPendingUpdateFlag:J

    :cond_0
    return-void
.end method

.method public final updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result p3

    if-eqz p3, :cond_1

    iput-wide p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mPendingUpdateFlag:J

    :goto_0
    return-void

    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateStyle() flag="

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mUpdateFlag:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, "SystemUIImageButton"

    invoke-static {v2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mUpdateFlag:J

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIImageButton;->refreshResIds$2()V

    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget-object p1, p1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWallpaperArea:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    if-eqz p1, :cond_2

    iget p2, p2, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWhiteBgImageId:I

    goto :goto_1

    :cond_2
    iget p2, p2, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mOriginImageId:I

    :goto_1
    iget-object p3, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    if-eqz p1, :cond_3

    iget p3, p3, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWhiteBgBackgroundId:I

    goto :goto_2

    :cond_3
    iget p3, p3, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mOriginBackgroundId:I

    :goto_2
    iget-wide v3, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mUpdateFlag:J

    const-wide/16 v5, 0x1

    and-long/2addr v3, v5

    cmp-long v0, v3, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isOpenThemeLook()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p2, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget-object p3, p3, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWallpaperArea:Ljava/lang/String;

    invoke-static {p3}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    move-result-wide v3

    iget-object p3, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget-boolean p3, p3, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemePolicyIgnorable:Z

    invoke-static {p2, v3, v4, p3}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->needsBlackComponent(Landroid/content/Context;JZ)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p1, "apply style: theme : white"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget p2, p1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeBlackImageId:I

    if-gtz p2, :cond_5

    iget p1, p1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeBlackColorId:I

    if-lez p1, :cond_4

    iget-object p1, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget p2, p2, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeBlackColorId:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget p1, p1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWhiteBgImageId:I

    move p2, p1

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget p3, p1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeBlackBackgroundId:I

    :cond_6
    :goto_3
    move-object p1, v1

    goto/16 :goto_7

    :cond_7
    const-string p2, "apply style: theme"

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget p3, p2, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeImageId:I

    if-gtz p3, :cond_a

    iget p2, p2, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeColorId:I

    if-lez p2, :cond_8

    iget-object p2, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget p3, p3, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeColorId:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_8
    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget p1, p1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWhiteBgImageId:I

    goto :goto_4

    :cond_9
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget p1, p1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mOriginImageId:I

    :goto_4
    move p2, p1

    goto :goto_5

    :cond_a
    move p2, p3

    :goto_5
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget p3, p1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mThemeBackgroundId:I

    goto :goto_3

    :cond_b
    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget-object v0, p1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWhiteBgImage:Ljava/lang/String;

    if-nez v0, :cond_c

    iget-object p1, p1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWhiteBgColor:Ljava/lang/String;

    if-eqz p1, :cond_6

    :cond_c
    const-string p1, "apply style: white-bg"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget p2, p1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWhiteBgImageId:I

    if-gtz p2, :cond_6

    iget p1, p1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWhiteBgColorId:I

    if-lez p1, :cond_d

    iget-object p1, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget p2, p2, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mWhiteBgColorId:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p1, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "#%08X"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "filter: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_d
    move-object p2, v1

    :goto_6
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget p1, p1, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->mOriginImageId:I

    move-object v7, p2

    move p2, p1

    move-object p1, v7

    :goto_7
    if-lez p2, :cond_f

    iget-object v0, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_f

    if-eqz p1, :cond_e

    const-string v0, "filter is not null!!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_e
    invoke-virtual {p0, p2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_f
    if-lez p3, :cond_10

    const-string/jumbo p1, "resBgId is not null!!"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_10
    return-void
.end method
