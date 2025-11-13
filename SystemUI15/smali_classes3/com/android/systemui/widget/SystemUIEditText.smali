.class public Lcom/android/systemui/widget/SystemUIEditText;
.super Landroid/widget/EditText;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# instance fields
.field public final mAttrCount:I

.field public mDefaultArea:Ljava/lang/String;

.field public final mDrawPaint:Landroid/graphics/Paint;

.field public mIsCallbackRegistered:Z

.field public mIsLockStarEnabled:Z

.field public final mLockStarCallback:Lcom/android/systemui/widget/SystemUIEditText$1;

.field public mPendingUpdateFlag:J

.field public final mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

.field public final mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

.field public mUpdateFlag:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/widget/SystemUIEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/widget/SystemUIEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/widget/SystemUIEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mDrawPaint:Landroid/graphics/Paint;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mUpdateFlag:J

    new-instance v2, Lcom/android/systemui/widget/SystemUIEditText$ResData;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/systemui/widget/SystemUIEditText$ResData;-><init>(I)V

    iput-object v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    iput v3, p0, Lcom/android/systemui/widget/SystemUIEditText;->mAttrCount:I

    iput-boolean v3, p0, Lcom/android/systemui/widget/SystemUIEditText;->mIsCallbackRegistered:Z

    iput-wide v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mPendingUpdateFlag:J

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockManager;

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    new-instance v0, Lcom/android/systemui/widget/SystemUIEditText$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/widget/SystemUIEditText$1;-><init>(Lcom/android/systemui/widget/SystemUIEditText;)V

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mLockStarCallback:Lcom/android/systemui/widget/SystemUIEditText$1;

    sget-object v0, Lcom/android/systemui/res/R$styleable;->SysuiWidgetRes:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mAttrCount:I

    move p2, v3

    :goto_0
    iget p3, p0, Lcom/android/systemui/widget/SystemUIEditText;->mAttrCount:I

    if-ge p2, p3, :cond_d

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result p3

    const/16 p4, 0x17

    if-ne p3, p4, :cond_0

    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mWallpaperArea:Ljava/lang/String;

    goto/16 :goto_1

    :cond_0
    if-nez p3, :cond_1

    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_1

    :cond_1
    const/16 p4, 0x9

    if-ne p3, p4, :cond_2

    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mOriginColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    const/16 p4, 0x1a

    if-ne p3, p4, :cond_3

    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mWhiteBgColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    const/16 p4, 0x12

    if-ne p3, p4, :cond_4

    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mThemeColor:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const/16 p4, 0xf

    if-ne p3, p4, :cond_5

    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mThemeBlackColor:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const/16 p4, 0xb

    if-ne p3, p4, :cond_6

    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mOriginShadowColor:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const/16 p4, 0x1c

    if-ne p3, p4, :cond_7

    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mWhiteBgShadowColor:Ljava/lang/String;

    goto :goto_1

    :cond_7
    const/16 p4, 0x15

    if-ne p3, p4, :cond_8

    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mThemeShadowColor:Ljava/lang/String;

    goto :goto_1

    :cond_8
    const/16 p4, 0x11

    if-ne p3, p4, :cond_9

    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mThemeBlackShadowColor:Ljava/lang/String;

    goto :goto_1

    :cond_9
    const/4 p4, 0x7

    if-ne p3, p4, :cond_a

    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, p3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p4, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mMovable:Z

    goto :goto_1

    :cond_a
    const/4 p4, 0x5

    if-ne p3, p4, :cond_b

    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mGroup:Ljava/lang/String;

    goto :goto_1

    :cond_b
    const/16 p4, 0x14

    if-ne p3, p4, :cond_c

    iget-object p4, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, p3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p4, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mThemePolicyIgnorable:Z

    :cond_c
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIEditText;->refreshResIds$1()V

    :cond_e
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/EditText;->onAttachedToWindow()V

    iget v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mAttrCount:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    iget-object v1, v0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mWallpaperArea:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mDefaultArea:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mMovable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mLockStarCallback:Lcom/android/systemui/widget/SystemUIEditText$1;

    invoke-interface {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->registerSystemUIViewCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mIsLockStarEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    iget-object v2, v0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mGroup:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/systemui/pluginlock/PluginLockManager;->getLockStarItemLocationInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mWallpaperArea:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    iget-object v0, v0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mWallpaperArea:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x400

    or-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mIsCallbackRegistered:Z

    :cond_1
    return-void
.end method

.method public final onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iget-object p0, p0, Landroid/widget/EditText;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->semOf(I)Landroid/os/UserHandle;

    move-result-object p0

    iput-object p0, p1, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mIsCallbackRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mIsCallbackRegistered:Z

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {v1, v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(ZLcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    iget-boolean v0, v0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mMovable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mLockStarCallback:Lcom/android/systemui/widget/SystemUIEditText$1;

    invoke-interface {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->removeSystemUIViewCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mDefaultArea:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mWallpaperArea:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/EditText;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    iget v1, v0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mOriginColorId:I

    iget v0, v0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mOriginShadowColorId:I

    const/4 v2, 0x0

    if-lez v1, :cond_0

    iget-object v3, p0, Landroid/widget/EditText;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIEditText;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    :cond_0
    if-lez v0, :cond_1

    iget-object v1, p0, Landroid/widget/EditText;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getShadowRadius()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getShadowDx()F

    move-result v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getShadowDy()F

    move-result v3

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/widget/EditText;->setShadowLayer(FFFI)V

    :cond_1
    return-void
.end method

.method public final refreshResIds$1()V
    .locals 4

    iget-object v0, p0, Landroid/widget/EditText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getInstance(Landroid/content/Context;)Lcom/android/systemui/widget/SystemUIWidgetRes;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mOriginColor:Ljava/lang/String;

    const-string v3, "color"

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mOriginColorId:I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mWhiteBgColor:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mWhiteBgColorId:I

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mThemeColor:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mThemeColorId:I

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mThemeBlackColor:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mThemeBlackColorId:I

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mOriginShadowColor:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mOriginShadowColorId:I

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mWhiteBgShadowColor:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mWhiteBgShadowColorId:I

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    iget-object v2, v1, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mThemeShadowColor:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mThemeShadowColorId:I

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mThemeBlackShadowColor:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mThemeBlackShadowColorId:I

    :cond_7
    return-void
.end method

.method public final setVisibility(I)V
    .locals 5

    invoke-super {p0, p1}, Landroid/widget/EditText;->setVisibility(I)V

    if-nez p1, :cond_0

    iget-wide v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mPendingUpdateFlag:J

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

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/widget/SystemUIEditText;->updateStyle(JLandroid/app/SemWallpaperColors;)V

    iput-wide v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mPendingUpdateFlag:J

    :cond_0
    return-void
.end method

.method public updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getVisibility()I

    move-result p3

    if-eqz p3, :cond_1

    iput-wide p1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mPendingUpdateFlag:J

    :goto_0
    return-void

    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateStyle() flag="

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mUpdateFlag:J

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

    invoke-virtual {p0}, Landroid/widget/EditText;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, "SystemUIEditText"

    invoke-static {v2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide p1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mUpdateFlag:J

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIEditText;->refreshResIds$1()V

    invoke-virtual {p0}, Landroid/widget/EditText;->semClearAllTextEffect()V

    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    iget-object p1, p1, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mWallpaperArea:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    if-eqz p1, :cond_2

    iget p2, p2, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mWhiteBgColorId:I

    goto :goto_1

    :cond_2
    iget p2, p2, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mOriginColorId:I

    :goto_1
    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    iget p1, p1, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mWhiteBgShadowColorId:I

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    iget p1, p1, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mOriginShadowColorId:I

    :goto_2
    iget-wide v3, p0, Lcom/android/systemui/widget/SystemUIEditText;->mUpdateFlag:J

    const-wide/16 v5, 0x1

    and-long/2addr v3, v5

    cmp-long p3, v3, v0

    if-eqz p3, :cond_7

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isOpenThemeLook()Z

    move-result p3

    if-eqz p3, :cond_7

    iget-object p3, p0, Landroid/widget/EditText;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    iget-object v0, v0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mWallpaperArea:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    iget-boolean v3, v3, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mThemePolicyIgnorable:Z

    invoke-static {p3, v0, v1, v3}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->needsBlackComponent(Landroid/content/Context;JZ)Z

    move-result p3

    if-eqz p3, :cond_5

    const-string p3, "apply style: theme : white"

    invoke-static {v2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    iget v0, p3, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mThemeBlackColorId:I

    if-lez v0, :cond_4

    move p2, v0

    :cond_4
    iget p3, p3, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mThemeBlackShadowColorId:I

    if-lez p3, :cond_7

    :goto_3
    move p1, p3

    goto :goto_4

    :cond_5
    const-string p3, "apply style: theme : black"

    invoke-static {v2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    iget v0, p3, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mThemeColorId:I

    if-lez v0, :cond_6

    move p2, v0

    :cond_6
    iget p3, p3, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mThemeShadowColorId:I

    if-lez p3, :cond_7

    goto :goto_3

    :cond_7
    :goto_4
    const-string p3, "#%08X"

    const/4 v0, 0x0

    if-lez p2, :cond_8

    iget-object v1, p0, Landroid/widget/EditText;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0, p2}, Landroid/widget/EditText;->setTextColor(I)V

    invoke-virtual {p0, p2}, Landroid/widget/EditText;->setHintTextColor(I)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "textColor="

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-lez p1, :cond_9

    iget-object p2, p0, Landroid/widget/EditText;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/EditText;->getShadowRadius()F

    move-result p2

    invoke-virtual {p0}, Landroid/widget/EditText;->getShadowDx()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getShadowDy()F

    move-result v1

    invoke-virtual {p0, p2, v0, v1, p1}, Landroid/widget/EditText;->setShadowLayer(FFFI)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p3, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "shadowColor="

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method
