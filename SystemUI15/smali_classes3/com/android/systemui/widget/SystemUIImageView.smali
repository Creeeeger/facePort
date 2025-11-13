.class public Lcom/android/systemui/widget/SystemUIImageView;
.super Landroid/widget/ImageView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# instance fields
.field public mDefaultArea:Ljava/lang/String;

.field public mHasAttr:Z

.field public mIsCallbackRegistered:Z

.field public mIsLockStarEnabled:Z

.field public mIsPluginLockEnabled:Z

.field public final mLockStarCallback:Lcom/android/systemui/widget/SystemUIImageView$1;

.field public mPendingUpdateFlag:J

.field public final mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

.field public final mPluginLockStarCallback:Lcom/android/systemui/widget/SystemUIImageView$2;

.field public final mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

.field public final mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

.field public mUpdateFlag:J

.field public final mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/widget/SystemUIImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/widget/SystemUIImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/widget/SystemUIImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mUpdateFlag:J

    new-instance v2, Lcom/android/systemui/widget/SystemUIImageView$ResData;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/systemui/widget/SystemUIImageView$ResData;-><init>(I)V

    iput-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iput-boolean v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    iput-boolean v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mIsCallbackRegistered:Z

    iput-wide v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mPendingUpdateFlag:J

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockManager;

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    new-instance v0, Lcom/android/systemui/widget/SystemUIImageView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/widget/SystemUIImageView$1;-><init>(Lcom/android/systemui/widget/SystemUIImageView;)V

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mLockStarCallback:Lcom/android/systemui/widget/SystemUIImageView$1;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/lockstar/PluginLockStarManager;

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    new-instance v0, Lcom/android/systemui/widget/SystemUIImageView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/widget/SystemUIImageView$2;-><init>(Lcom/android/systemui/widget/SystemUIImageView;)V

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mPluginLockStarCallback:Lcom/android/systemui/widget/SystemUIImageView$2;

    invoke-static {p1}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getInstance(Landroid/content/Context;)Lcom/android/systemui/widget/SystemUIWidgetRes;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    iget-object p1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/systemui/res/R$styleable;->SysuiWidgetRes:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    :cond_0
    move p3, v3

    :goto_0
    if-ge p3, p2, :cond_14

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result p4

    const/16 v0, 0x17

    if-ne p4, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWallpaperArea:Ljava/lang/String;

    goto/16 :goto_1

    :cond_1
    if-nez p4, :cond_2

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_1

    :cond_2
    const/16 v0, 0x9

    if-ne p4, v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    const/16 v0, 0x1a

    if-ne p4, v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    const/16 v0, 0x12

    if-ne p4, v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    const/16 v0, 0xf

    if-ne p4, v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBlackColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    const/16 v0, 0xa

    if-ne p4, v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginImage:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    const/16 v0, 0x13

    if-ne p4, v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeImage:Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    const/16 v0, 0x10

    if-ne p4, v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBlackImage:Ljava/lang/String;

    goto/16 :goto_1

    :cond_9
    const/16 v0, 0x1b

    if-ne p4, v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgImage:Ljava/lang/String;

    goto/16 :goto_1

    :cond_a
    const/16 v0, 0x1d

    if-ne p4, v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgTintColor:Ljava/lang/String;

    goto :goto_1

    :cond_b
    const/16 v0, 0x8

    if-ne p4, v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginBackground:Ljava/lang/String;

    goto :goto_1

    :cond_c
    const/16 v0, 0x19

    if-ne p4, v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgBackground:Ljava/lang/String;

    goto :goto_1

    :cond_d
    const/16 v0, 0xd

    if-ne p4, v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBackground:Ljava/lang/String;

    goto :goto_1

    :cond_e
    const/16 v0, 0xe

    if-ne p4, v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBlackBackground:Ljava/lang/String;

    goto :goto_1

    :cond_f
    const/4 v0, 0x7

    if-ne p4, v0, :cond_10

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, p4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mMovable:Z

    goto :goto_1

    :cond_10
    const/4 v0, 0x6

    if-ne p4, v0, :cond_11

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, p4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mLockStar:Z

    goto :goto_1

    :cond_11
    const/4 v0, 0x5

    if-ne p4, v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mGroup:Ljava/lang/String;

    goto :goto_1

    :cond_12
    const/16 v0, 0x14

    if-ne p4, v0, :cond_13

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, p4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemePolicyIgnorable:Z

    :cond_13
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    :cond_14
    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIImageView;->refreshResIds$3()V

    :cond_15
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWallpaperArea:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mDefaultArea:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mMovable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mLockStarCallback:Lcom/android/systemui/widget/SystemUIImageView$1;

    invoke-interface {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->registerSystemUIViewCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mIsPluginLockEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    iget-object v2, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mGroup:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/systemui/pluginlock/PluginLockManager;->getLockStarItemLocationInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWallpaperArea:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-boolean v0, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mLockStar:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mPluginLockStarCallback:Lcom/android/systemui/widget/SystemUIImageView$2;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->registerCallback(Ljava/lang/String;Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v0, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWallpaperArea:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mIsCallbackRegistered:Z

    :cond_2
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mIsCallbackRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mIsCallbackRegistered:Z

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {v1, v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(ZLcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-boolean v0, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mMovable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mLockStarCallback:Lcom/android/systemui/widget/SystemUIImageView$1;

    invoke-interface {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->removeSystemUIViewCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mDefaultArea:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWallpaperArea:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-boolean v0, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mLockStar:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getId()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->unregisterCallback(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginImageId:I

    iget v0, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginBackgroundId:I

    const-string v2, "SystemUIImageView"

    if-lez v1, :cond_0

    const-string/jumbo v3, "set Image Drawable!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-lez v0, :cond_1

    const-string/jumbo v1, "set Background Drawable!!"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public final refreshResIds$3()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginColor:Ljava/lang/String;

    const-string v2, "color"

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgColor:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgColorId:I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeColor:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeColorId:I

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBlackColor:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBlackColorId:I

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginImage:Ljava/lang/String;

    const-string v3, "drawable"

    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-virtual {v4, v1, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginImageId:I

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgImage:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-virtual {v4, v1, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgImageId:I

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeImage:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-virtual {v4, v1, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeImageId:I

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBlackImage:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-virtual {v4, v1, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBlackImageId:I

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgTintColor:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-virtual {v4, v1, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginBackground:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginBackgroundId:I

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgBackground:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgBackgroundId:I

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBackground:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBackgroundId:I

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBlackBackground:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBlackBackgroundId:I

    :cond_c
    return-void
.end method

.method public final setOriginImage(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v0, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginImage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iput-object p1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginImage:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object p1, p1, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginImage:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, p0, v1, v2}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(ZLcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    iget-object v1, p1, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginImage:Ljava/lang/String;

    const-string v2, "drawable"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginImageId:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setOriginImage() this = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SystemUIImageView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public setVisibility(I)V
    .locals 5

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez p1, :cond_0

    iget-wide v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mPendingUpdateFlag:J

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

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/widget/SystemUIImageView;->updateStyle(JLandroid/app/SemWallpaperColors;)V

    iput-wide v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mPendingUpdateFlag:J

    :cond_0
    return-void
.end method

.method public final setWhiteBgImage(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v0, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgImage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iput-object p1, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgImage:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object p1, p1, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgImage:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, p0, v1, v2}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(ZLcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    iget-object v1, p1, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgImage:Ljava/lang/String;

    const-string v2, "drawable"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgImageId:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setWhiteBgImage() this = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SystemUIImageView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public final updateImage()V
    .locals 9

    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mIsLockStarEnabled:Z

    const-string v1, "SystemUIImageView"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-boolean v0, v0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mLockStar:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "return - set image from lock star : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v2, v2, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWallpaperArea:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    if-eqz v2, :cond_1

    iget v3, v3, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgImageId:I

    goto :goto_0

    :cond_1
    iget v3, v3, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginImageId:I

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    if-eqz v2, :cond_2

    iget v4, v4, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgBackgroundId:I

    goto :goto_1

    :cond_2
    iget v4, v4, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginBackgroundId:I

    :goto_1
    iget-wide v5, p0, Lcom/android/systemui/widget/SystemUIImageView;->mUpdateFlag:J

    const-wide/16 v7, 0x1

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_c

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isOpenThemeLook()Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v3, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v4, v4, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWallpaperArea:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v8, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-boolean v8, v8, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemePolicyIgnorable:Z

    invoke-static {v3, v4, v5, v8}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->needsBlackComponent(Landroid/content/Context;JZ)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "apply style: theme : white"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget v4, v3, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBlackImageId:I

    if-gtz v4, :cond_5

    iget v4, v3, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBlackColorId:I

    if-lez v4, :cond_3

    iget-object v2, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget v3, v3, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBlackColorId:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    iget v2, v3, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgColorId:I

    if-lez v2, :cond_4

    iget-object v2, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget v3, v3, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgColorId:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget v2, v2, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgImageId:I

    move v3, v2

    goto :goto_3

    :cond_5
    move v3, v4

    move v6, v7

    :goto_3
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget v4, v2, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBlackBackgroundId:I

    if-lez v4, :cond_6

    iget v2, v2, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBlackColorId:I

    if-lez v2, :cond_6

    iget-object v2, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget v5, v5, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBlackColorId:I

    invoke-virtual {v2, v5, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v2, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_4
    move v7, v6

    goto/16 :goto_9

    :cond_6
    move-object v5, v0

    goto :goto_4

    :cond_7
    const-string v3, "apply style: theme"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget v4, v3, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeImageId:I

    if-gtz v4, :cond_b

    iget v4, v3, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeColorId:I

    if-lez v4, :cond_8

    iget-object v3, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget v4, v4, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeColorId:I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_5

    :cond_8
    if-eqz v2, :cond_9

    iget v3, v3, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgColorId:I

    if-lez v3, :cond_9

    iget-object v3, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget v4, v4, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgColorId:I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_9
    :goto_5
    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget v2, v2, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgImageId:I

    goto :goto_6

    :cond_a
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget v2, v2, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginImageId:I

    :goto_6
    move v3, v2

    goto :goto_7

    :cond_b
    move v3, v4

    move v6, v7

    :goto_7
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget v4, v2, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBackgroundId:I

    if-lez v4, :cond_6

    iget v2, v2, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeColorId:I

    if-lez v2, :cond_6

    iget-object v2, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget v5, v5, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeColorId:I

    invoke-virtual {v2, v5, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v2, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_4

    :cond_c
    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v5, v2, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgImage:Ljava/lang/String;

    if-nez v5, :cond_d

    iget-object v2, v2, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgColor:Ljava/lang/String;

    if-eqz v2, :cond_10

    :cond_d
    const-string v2, "apply style: white-bg"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget v2, v2, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgImageId:I

    if-gtz v2, :cond_f

    const-string/jumbo v3, "white-bg res invalid = "

    invoke-static {v2, v3, v1}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget v2, v2, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgColorId:I

    if-lez v2, :cond_e

    iget-object v2, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget v3, v3, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgColorId:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_e
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget v2, v2, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginImageId:I

    move v3, v2

    goto :goto_8

    :cond_f
    move v3, v2

    move v6, v7

    :goto_8
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget v4, v2, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgBackgroundId:I

    if-lez v4, :cond_6

    iget v2, v2, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgColorId:I

    if-lez v2, :cond_6

    iget-object v2, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget v5, v5, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgColorId:I

    invoke-virtual {v2, v5, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v2, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_4

    :cond_10
    const-string v2, "apply style: default"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v0

    :goto_9
    if-lez v3, :cond_15

    const-string/jumbo v2, "set Image Drawable!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_11

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "drawable is null res = "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    if-eqz v7, :cond_12

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_12
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-nez v3, :cond_13

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_13
    if-eqz v2, :cond_14

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_14
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_15
    if-lez v4, :cond_17

    const-string/jumbo v0, "set Background Drawable!!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_16
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_17
    return-void
.end method

.method public updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result p3

    if-eqz p3, :cond_1

    iput-wide p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mPendingUpdateFlag:J

    :goto_0
    return-void

    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "updateStyle() flag="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mUpdateFlag:J

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

    invoke-virtual {p0}, Landroid/widget/ImageView;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "SystemUIImageView"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mUpdateFlag:J

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIImageView;->refreshResIds$3()V

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIImageView;->updateImage()V

    return-void
.end method
