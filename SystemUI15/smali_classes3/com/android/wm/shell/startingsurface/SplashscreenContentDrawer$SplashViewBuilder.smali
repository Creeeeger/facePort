.class public final Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mActivityInfo:Landroid/content/pm/ActivityInfo;

.field public mAllowHandleSolidColor:Z

.field public final mContext:Landroid/content/Context;

.field public mDisplayId:I

.field public mFinalIconDrawables:[Landroid/graphics/drawable/Drawable;

.field public mFinalIconSize:I

.field public mOverlayDrawable:Landroid/graphics/drawable/Drawable;

.field public mSuggestType:I

.field public mThemeColor:I

.field public mUiThreadInitTask:Ljava/util/function/Consumer;

.field public final synthetic this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget p1, p1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mIconSize:I

    iput p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mFinalIconSize:I

    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    return-void
.end method


# virtual methods
.method public final build(Z)Landroid/window/SplashScreenView;
    .locals 25

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mSuggestType:I

    const/4 v2, 0x3

    const-string v3, "ShellStartingWindow"

    const-wide/16 v4, 0x20

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v8, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    move v4, v6

    goto/16 :goto_6

    :cond_1
    if-nez p1, :cond_2

    iget v1, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mDisplayId:I

    if-nez v1, :cond_2

    iget-object v1, v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mPreloadIcon:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreloadIconData;

    iget-object v2, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getThemeResId()I

    move-result v2

    iget-boolean v9, v1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreloadIconData;->mIsPreloaded:Z

    if-eqz v9, :cond_2

    if-eqz v2, :cond_2

    iget-object v1, v1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreloadIconData;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getThemeResId()I

    move-result v1

    if-ne v2, v1, :cond_2

    const-string/jumbo v1, "use preloaded icon"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mPreloadIcon:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreloadIconData;

    iget v2, v1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreloadIconData;->mPreloadIconSize:I

    iput v2, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mFinalIconSize:I

    iget-object v1, v1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreloadIconData;->mPreloadIconDrawable:[Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mFinalIconDrawables:[Landroid/graphics/drawable/Drawable;

    goto/16 :goto_7

    :cond_2
    iget-object v1, v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mTmpAttrs:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    iget-object v2, v1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mSplashScreenIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    iget v1, v1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mIconBgColor:I

    if-eqz v1, :cond_3

    iget v9, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mThemeColor:I

    if-ne v1, v9, :cond_4

    :cond_3
    iget v1, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mFinalIconSize:I

    int-to-float v1, v1

    iget v9, v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mNoBackgroundScale:F

    mul-float/2addr v1, v9

    float-to-int v1, v1

    iput v1, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mFinalIconSize:I

    :cond_4
    invoke-virtual {v0, v2, v6, v6}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->createIconDrawable(Landroid/graphics/drawable/Drawable;ZZ)V

    goto/16 :goto_7

    :cond_5
    iget v1, v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mIconSize:I

    int-to-float v1, v1

    iget v2, v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mDefaultIconSize:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v9, v2

    mul-float/2addr v1, v9

    iget v9, v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mNoBackgroundScale:F

    mul-float/2addr v1, v9

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v1, v9

    float-to-int v1, v1

    const-string v10, "getIcon"

    invoke-static {v4, v5, v10}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v10, v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mThemeIconPackageName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    iget-object v11, v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mHighResIconProvider:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;

    const/4 v12, 0x2

    if-nez v10, :cond_6

    iget-object v10, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getUserId()I

    move-result v10

    if-nez v10, :cond_6

    iget-object v2, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_6
    iget v10, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mDisplayId:I

    if-ne v10, v12, :cond_7

    iget-object v13, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v11, v13, v2, v1, v10}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;->getIcon(Landroid/content/pm/ActivityInfo;III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_7
    sget-boolean v13, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    if-eqz v13, :cond_8

    iget-object v13, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mContext:Landroid/content/Context;

    invoke-static {v10, v13}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->-$$Nest$smisCarLifeDisplay(ILandroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v13, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mDisplayId:I

    invoke-virtual {v11, v10, v2, v1, v13}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;->getIcon(Landroid/content/pm/ActivityInfo;III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_8
    iget-object v10, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v13, -0x1

    invoke-virtual {v11, v10, v2, v1, v13}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;->getIcon(Landroid/content/pm/ActivityInfo;III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_0
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    instance-of v10, v2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-nez v10, :cond_a

    sget-object v9, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_STARTING_WINDOW_enabled:[Z

    aget-boolean v9, v9, v7

    if-eqz v9, :cond_9

    sget-object v12, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v13, 0xd16aea4a8a03505L

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    const-string v9, "legacy_icon_factory"

    invoke-static {v4, v5, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v9, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder$ShapeIconFactory;

    iget-object v10, v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContext:Landroid/content/Context;

    iget v12, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mFinalIconSize:I

    invoke-direct {v9, v0, v10, v1, v12}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder$ShapeIconFactory;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;Landroid/content/Context;II)V

    invoke-virtual {v9, v2, v6}, Lcom/android/launcher3/icons/BaseIconFactory;->createScaledBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-boolean v1, v11, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;->mLoadInDetail:Z

    invoke-virtual {v0, v2, v7, v1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->createIconDrawable(Landroid/graphics/drawable/Drawable;ZZ)V

    goto/16 :goto_7

    :cond_a
    const-string/jumbo v1, "processAdaptiveIcon"

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object v1, v2

    check-cast v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iget-object v13, v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mColorCache:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache;

    iget-object v14, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v14

    iget v4, v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mLastPackageContextConfigHash:I

    iget-object v5, v13, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache;->mColorMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$Colors;

    mul-int/lit8 v14, v14, 0x1f

    add-int/2addr v4, v14

    filled-new-array {v6}, [I

    move-result-object v14

    if-eqz v5, :cond_b

    iget-object v13, v5, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$Colors;->mIconColors:[Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$IconColor;

    invoke-static {v13, v4, v14}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache;->getCache([Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$Cache;I[I)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$Cache;

    move-result-object v13

    check-cast v13, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$IconColor;

    if-eqz v13, :cond_c

    goto :goto_1

    :cond_b
    new-instance v5, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$Colors;

    invoke-direct {v5, v6}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$Colors;-><init>(I)V

    iget-object v13, v13, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache;->mColorMap:Landroid/util/ArrayMap;

    invoke-virtual {v13, v15, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    new-instance v13, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;

    invoke-direct {v13, v10, v12}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;-><init>(Landroid/graphics/drawable/Drawable;I)V

    new-instance v12, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;

    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v12, v1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;-><init>(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$IconColor;

    iget-object v13, v13, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;->mColorChecker:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ColorTester;

    invoke-interface {v13}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ColorTester;->getDominantColor()I

    move-result v20

    iget-object v12, v12, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;->mColorChecker:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ColorTester;

    invoke-interface {v12}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ColorTester;->getDominantColor()I

    move-result v21

    invoke-interface {v12}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ColorTester;->isComplexColor()Z

    move-result v22

    invoke-interface {v12}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ColorTester;->isGrayscale()Z

    move-result v23

    invoke-interface {v13}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ColorTester;->passFilterRatio()F

    move-result v24

    move-object/from16 v18, v1

    move/from16 v19, v4

    invoke-direct/range {v18 .. v24}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$IconColor;-><init>(IIIZZF)V

    iget-object v4, v5, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$Colors;->mIconColors:[Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$IconColor;

    aget v5, v14, v6

    aput-object v1, v4, v5

    move-object v13, v1

    :goto_1
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_STARTING_WINDOW_enabled:[Z

    aget-boolean v1, v1, v7

    iget-boolean v4, v13, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$IconColor;->mIsBgComplex:Z

    iget v5, v13, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$IconColor;->mBgColor:I

    iget v12, v13, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$IconColor;->mFgColor:I

    if-eqz v1, :cond_e

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    iget v15, v13, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$Cache;->mReuseCount:I

    if-lez v15, :cond_d

    move v15, v7

    goto :goto_2

    :cond_d
    move v15, v6

    :goto_2
    iget v6, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mThemeColor:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v19, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    filled-new-array {v1, v14, v9, v15, v6}, [Ljava/lang/Object;

    move-result-object v24

    const/16 v23, 0x0

    const-wide v20, -0x10dde859e2ac5bdL

    const/16 v22, 0xf0

    invoke-static/range {v19 .. v24}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    if-nez v4, :cond_12

    iget-object v1, v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mTmpAttrs:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    iget v1, v1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mIconBgColor:I

    if-nez v1, :cond_12

    iget v1, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mThemeColor:I

    invoke-static {v1, v5}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->-$$Nest$smisRgbSimilarInHsv(II)Z

    move-result v1

    if-nez v1, :cond_f

    iget-boolean v1, v13, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$IconColor;->mIsBgGrayscale:Z

    if-eqz v1, :cond_12

    iget v1, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mThemeColor:I

    invoke-static {v1, v12}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->-$$Nest$smisRgbSimilarInHsv(II)Z

    move-result v1

    if-nez v1, :cond_12

    :cond_f
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_STARTING_WINDOW_enabled:[Z

    aget-boolean v1, v1, v7

    if-eqz v1, :cond_10

    sget-object v19, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-wide v20, -0x90ad0fbec86c353L

    const/16 v22, 0x0

    invoke-static/range {v19 .. v24}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    iget v1, v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mEnlargeForegroundIconThreshold:F

    iget v2, v13, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$IconColor;->mFgNonTranslucentRatio:F

    cmpg-float v1, v2, v1

    if-gez v1, :cond_11

    iget v1, v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mNoBackgroundScale:F

    goto :goto_3

    :cond_11
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_3
    iget v2, v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mIconSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mFinalIconSize:I

    iget-boolean v1, v11, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;->mLoadInDetail:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v10, v2, v1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->createIconDrawable(Landroid/graphics/drawable/Drawable;ZZ)V

    move v4, v2

    :goto_4
    const-wide/16 v1, 0x20

    goto :goto_5

    :cond_12
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_STARTING_WINDOW_enabled:[Z

    aget-boolean v1, v1, v7

    if-eqz v1, :cond_13

    sget-object v19, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-wide v20, 0x4c029736b613383cL

    const/16 v22, 0x0

    invoke-static/range {v19 .. v24}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    iget-boolean v1, v11, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;->mLoadInDetail:Z

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->createIconDrawable(Landroid/graphics/drawable/Drawable;ZZ)V

    goto :goto_4

    :goto_5
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_7

    :goto_6
    iput v4, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mFinalIconSize:I

    :goto_7
    iget-object v1, v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mHandler:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreLoadIconDataHandler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    iget-object v2, v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mPreloadIcon:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreloadIconData;

    if-eqz p1, :cond_14

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "preload Icon "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mContext:Landroid/content/Context;

    iget v4, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mFinalIconSize:I

    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mFinalIconDrawables:[Landroid/graphics/drawable/Drawable;

    iput-object v3, v2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreloadIconData;->mContext:Landroid/content/Context;

    iput v4, v2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreloadIconData;->mPreloadIconSize:I

    iput-object v0, v2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreloadIconData;->mPreloadIconDrawable:[Landroid/graphics/drawable/Drawable;

    iput-boolean v7, v2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreloadIconData;->mIsPreloaded:Z

    iget-object v0, v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mHandler:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreLoadIconDataHandler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    sget v3, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->CLEAR_PREALOD_ICON_TIMEOUT_MILLIS:I

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-object v1

    :cond_14
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreloadIconData;->mIsPreloaded:Z

    iput-object v1, v2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreloadIconData;->mContext:Landroid/content/Context;

    iput-object v1, v2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreloadIconData;->mPreloadIconDrawable:[Landroid/graphics/drawable/Drawable;

    iget v2, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mFinalIconSize:I

    iget-object v4, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mFinalIconDrawables:[Landroid/graphics/drawable/Drawable;

    iget-object v5, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mUiThreadInitTask:Ljava/util/function/Consumer;

    if-eqz v4, :cond_16

    array-length v6, v4

    if-lez v6, :cond_15

    aget-object v3, v4, v3

    goto :goto_8

    :cond_15
    move-object v3, v1

    :goto_8
    array-length v6, v4

    if-le v6, v7, :cond_17

    aget-object v1, v4, v7

    goto :goto_9

    :cond_16
    move-object v3, v1

    :cond_17
    :goto_9
    const-string v4, "fillViewWithIcon"

    const-wide/16 v9, 0x20

    invoke-static {v9, v10, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v4, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/view/ContextThemeWrapper;

    iget-object v9, v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-direct {v6, v4, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    new-instance v4, Landroid/window/SplashScreenView$Builder;

    invoke-direct {v4, v6}, Landroid/window/SplashScreenView$Builder;-><init>(Landroid/content/Context;)V

    iget v6, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mThemeColor:I

    invoke-virtual {v4, v6}, Landroid/window/SplashScreenView$Builder;->setBackgroundColor(I)Landroid/window/SplashScreenView$Builder;

    move-result-object v4

    iget-object v6, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v6}, Landroid/window/SplashScreenView$Builder;->setOverlayDrawable(Landroid/graphics/drawable/Drawable;)Landroid/window/SplashScreenView$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/window/SplashScreenView$Builder;->setIconSize(I)Landroid/window/SplashScreenView$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/window/SplashScreenView$Builder;->setIconBackground(Landroid/graphics/drawable/Drawable;)Landroid/window/SplashScreenView$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/window/SplashScreenView$Builder;->setCenterViewDrawable(Landroid/graphics/drawable/Drawable;)Landroid/window/SplashScreenView$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/window/SplashScreenView$Builder;->setUiThreadInitConsumer(Ljava/util/function/Consumer;)Landroid/window/SplashScreenView$Builder;

    move-result-object v1

    iget-boolean v2, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mAllowHandleSolidColor:Z

    invoke-virtual {v1, v2}, Landroid/window/SplashScreenView$Builder;->setAllowHandleSolidColor(Z)Landroid/window/SplashScreenView$Builder;

    move-result-object v1

    iget v0, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mSuggestType:I

    if-ne v0, v7, :cond_18

    iget-object v0, v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mTmpAttrs:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mBrandingImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_18

    iget v2, v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mBrandingImageWidth:I

    iget v3, v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mBrandingImageHeight:I

    invoke-virtual {v1, v0, v2, v3}, Landroid/window/SplashScreenView$Builder;->setBrandingDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/window/SplashScreenView$Builder;

    :cond_18
    invoke-virtual {v1}, Landroid/window/SplashScreenView$Builder;->build()Landroid/window/SplashScreenView;

    move-result-object v0

    const-wide/16 v1, 0x20

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0
.end method

.method public final createIconDrawable(Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    if-eqz p2, :cond_0

    iget v5, v2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mDefaultIconSize:I

    iget v6, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mFinalIconSize:I

    new-array p2, v1, [Landroid/graphics/drawable/Drawable;

    new-instance v1, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;

    iget-object v8, v2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mSplashscreenWorkerHandler:Landroid/os/Handler;

    move-object v3, v1

    move-object v4, p1

    move v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIZLandroid/os/Handler;)V

    aput-object v1, p2, v0

    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mFinalIconDrawables:[Landroid/graphics/drawable/Drawable;

    goto :goto_4

    :cond_0
    iget-object p2, v2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mTmpAttrs:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    iget p2, p2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mIconBgColor:I

    iget v3, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mThemeColor:I

    iget v6, v2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mDefaultIconSize:I

    iget v7, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mFinalIconSize:I

    if-eqz p2, :cond_1

    if-eq p2, v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    instance-of v4, p1, Landroid/graphics/drawable/Animatable;

    if-eqz v4, :cond_2

    new-instance p3, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconAnimateListener;

    invoke-direct {p3, p1}, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconAnimateListener;-><init>(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_2
    instance-of v4, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    iget-object v9, v2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mSplashscreenWorkerHandler:Landroid/os/Handler;

    if-eqz v4, :cond_3

    new-instance v2, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;

    move-object v4, v2

    move-object v5, p1

    move v8, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIZLandroid/os/Handler;)V

    move v3, v0

    :goto_1
    move-object p3, v2

    goto :goto_2

    :cond_3
    new-instance v2, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;

    new-instance v5, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AdaptiveForegroundDrawable;

    invoke-direct {v5, p1}, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AdaptiveForegroundDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object v4, v2

    move v8, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIZLandroid/os/Handler;)V

    goto :goto_1

    :goto_2
    if-eqz v3, :cond_4

    new-instance p1, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$MaskBackgroundDrawable;

    invoke-direct {p1, p2}, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$MaskBackgroundDrawable;-><init>(I)V

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    const/4 p2, 0x2

    new-array p2, p2, [Landroid/graphics/drawable/Drawable;

    aput-object p3, p2, v0

    aput-object p1, p2, v1

    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mFinalIconDrawables:[Landroid/graphics/drawable/Drawable;

    :goto_4
    return-void
.end method
