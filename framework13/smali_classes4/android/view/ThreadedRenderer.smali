.class public final Landroid/view/ThreadedRenderer;
.super Landroid/graphics/HardwareRenderer;
.source "ThreadedRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ThreadedRenderer$SimpleRenderer;,
        Landroid/view/ThreadedRenderer$DrawCallbacks;,
        Landroid/view/ThreadedRenderer$WebViewOverlayProvider;
    }
.end annotation


# static fields
.field public static final greylist-max-o DEBUG_DIRTY_REGIONS_PROPERTY:Ljava/lang/String; = "debug.hwui.show_dirty_regions"

.field public static final blacklist DEBUG_FORCE_DARK:Ljava/lang/String; = "debug.hwui.force_dark"

.field public static final greylist-max-o DEBUG_FPS_DIVISOR:Ljava/lang/String; = "debug.hwui.fps_divisor"

.field public static final greylist-max-o DEBUG_OVERDRAW_PROPERTY:Ljava/lang/String; = "debug.hwui.overdraw"

.field public static final greylist-max-o DEBUG_SHOW_LAYERS_UPDATES_PROPERTY:Ljava/lang/String; = "debug.hwui.show_layers_updates"

.field public static final greylist-max-o DEBUG_SHOW_NON_RECTANGULAR_CLIP_PROPERTY:Ljava/lang/String; = "debug.hwui.show_non_rect_clip"

.field public static greylist-max-o EGL_CONTEXT_PRIORITY_HIGH_IMG:I = 0x0

.field public static greylist-max-o EGL_CONTEXT_PRIORITY_LOW_IMG:I = 0x0

.field public static greylist-max-o EGL_CONTEXT_PRIORITY_MEDIUM_IMG:I = 0x0

.field public static blacklist EGL_CONTEXT_PRIORITY_REALTIME_NV:I = 0x0

.field public static final greylist-max-o OVERDRAW_PROPERTY_SHOW:Ljava/lang/String; = "show"

.field static final greylist-max-o PRINT_CONFIG_PROPERTY:Ljava/lang/String; = "debug.hwui.print_config"

.field static final greylist-max-o PROFILE_MAXFRAMES_PROPERTY:Ljava/lang/String; = "debug.hwui.profile.maxframes"

.field public static final greylist-max-o PROFILE_PROPERTY:Ljava/lang/String; = "debug.hwui.profile"

.field public static final greylist-max-o PROFILE_PROPERTY_VISUALIZE_BARS:Ljava/lang/String; = "visual_bars"

.field private static final greylist-max-o VISUALIZERS:[Ljava/lang/String;

.field public static blacklist sRendererEnabled:Z

.field public static greylist-max-o sTrimForeground:Z


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDefaultLightY:F

.field private blacklist mDesktopLightY:F

.field private greylist-max-o mEnabled:Z

.field private greylist-max-o mHeight:I

.field private greylist-max-o mInitialized:Z

.field private greylist-max-o mInsetLeft:I

.field private greylist-max-o mInsetTop:I

.field private final greylist-max-o mLightRadius:F

.field private greylist-max-o mLightY:F

.field private final greylist-max-o mLightZ:F

.field private blacklist mNextRtFrameCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/HardwareRenderer$FrameDrawingCallback;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mRequested:Z

.field private greylist-max-o mRootNodeNeedsUpdate:Z

.field private greylist-max-o mSurfaceHeight:I

.field private greylist-max-o mSurfaceWidth:I

.field private final blacklist mWebViewOverlayProvider:Landroid/view/ThreadedRenderer$WebViewOverlayProvider;

.field private blacklist mWebViewOverlaysEnabled:Z

.field private greylist-max-o mWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 206
    const/16 v0, 0x3357

    sput v0, Landroid/view/ThreadedRenderer;->EGL_CONTEXT_PRIORITY_REALTIME_NV:I

    .line 207
    const/16 v0, 0x3101

    sput v0, Landroid/view/ThreadedRenderer;->EGL_CONTEXT_PRIORITY_HIGH_IMG:I

    .line 208
    const/16 v0, 0x3102

    sput v0, Landroid/view/ThreadedRenderer;->EGL_CONTEXT_PRIORITY_MEDIUM_IMG:I

    .line 209
    const/16 v0, 0x3103

    sput v0, Landroid/view/ThreadedRenderer;->EGL_CONTEXT_PRIORITY_LOW_IMG:I

    .line 216
    const/4 v0, 0x1

    sput-boolean v0, Landroid/view/ThreadedRenderer;->sRendererEnabled:Z

    .line 218
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/ThreadedRenderer;->sTrimForeground:Z

    .line 281
    const-string/jumbo v0, "visual_bars"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/ThreadedRenderer;->VISUALIZERS:[Ljava/lang/String;

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "translucent"    # Z
    .param p3, "name"    # Ljava/lang/String;

    .line 385
    invoke-direct {p0}, Landroid/graphics/HardwareRenderer;-><init>()V

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    .line 304
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ThreadedRenderer;->mRequested:Z

    .line 373
    new-instance v2, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;-><init>(Landroid/view/ThreadedRenderer$WebViewOverlayProvider-IA;)V

    iput-object v2, p0, Landroid/view/ThreadedRenderer;->mWebViewOverlayProvider:Landroid/view/ThreadedRenderer$WebViewOverlayProvider;

    .line 374
    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mWebViewOverlaysEnabled:Z

    .line 387
    iput-object p1, p0, Landroid/view/ThreadedRenderer;->mContext:Landroid/content/Context;

    .line 389
    invoke-virtual {p0, p3}, Landroid/view/ThreadedRenderer;->setName(Ljava/lang/String;)V

    .line 390
    xor-int/lit8 v2, p2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/ThreadedRenderer;->setOpaque(Z)V

    .line 392
    sget-object v2, Lcom/android/internal/R$styleable;->Lighting:[I

    invoke-virtual {p1, v3, v2, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 394
    .local v2, "a":Landroid/content/res/TypedArray;
    invoke-static {}, Lcom/samsung/android/util/SemViewUtils;->isFoldDevice()Z

    move-result v3

    const v4, 0x1050401

    const/4 v5, 0x0

    if-nez v3, :cond_1

    invoke-static {}, Lcom/samsung/android/util/SemViewUtils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 397
    :cond_0
    const/4 v3, 0x3

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Landroid/view/ThreadedRenderer;->mLightY:F

    goto :goto_1

    .line 395
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Landroid/view/ThreadedRenderer;->mLightY:F

    .line 400
    :goto_1
    iget v3, p0, Landroid/view/ThreadedRenderer;->mLightY:F

    iput v3, p0, Landroid/view/ThreadedRenderer;->mDefaultLightY:F

    .line 401
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Landroid/view/ThreadedRenderer;->mDesktopLightY:F

    .line 404
    const/4 v3, 0x4

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Landroid/view/ThreadedRenderer;->mLightZ:F

    .line 405
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Landroid/view/ThreadedRenderer;->mLightRadius:F

    .line 406
    invoke-virtual {v2, v0, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 407
    .local v0, "ambientShadowAlpha":F
    invoke-virtual {v2, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 408
    .local v1, "spotShadowAlpha":F
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 409
    invoke-virtual {p0, v0, v1}, Landroid/view/ThreadedRenderer;->setLightSourceAlpha(FF)V

    .line 410
    return-void
.end method

.method static synthetic blacklist access$000()Z
    .locals 1

    .line 82
    invoke-static {}, Landroid/view/ThreadedRenderer;->isWebViewOverlaysEnabled()Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o create(Landroid/content/Context;ZLjava/lang/String;)Landroid/view/ThreadedRenderer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "translucent"    # Z
    .param p2, "name"    # Ljava/lang/String;

    .line 274
    invoke-static {}, Landroid/view/ThreadedRenderer;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    const/4 v0, 0x0

    return-object v0

    .line 278
    :cond_0
    new-instance v0, Landroid/view/ThreadedRenderer;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/ThreadedRenderer;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    return-object v0
.end method

.method private static greylist-max-o destroyResources(Landroid/view/View;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;

    .line 568
    invoke-virtual {p0}, Landroid/view/View;->destroyHardwareResources()V

    .line 569
    return-void
.end method

.method private static blacklist dumpArgsToFlags([Ljava/lang/String;)I
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;

    .line 725
    const/4 v0, 0x1

    if-eqz p0, :cond_3

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_3

    .line 728
    :cond_0
    const/4 v1, 0x0

    .line 729
    .local v1, "flags":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 730
    aget-object v3, p0, v2

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    const-string/jumbo v5, "reset"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v4, v0

    goto :goto_1

    :sswitch_1
    const-string v5, "-a"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_2
    const-string v5, "framestats"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    :goto_1
    packed-switch v4, :pswitch_data_0

    goto :goto_2

    .line 738
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_2

    .line 735
    :pswitch_1
    or-int/lit8 v1, v1, 0x2

    .line 736
    goto :goto_2

    .line 732
    :pswitch_2
    or-int/lit8 v1, v1, 0x1

    .line 733
    nop

    .line 729
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 742
    .end local v2    # "i":I
    :cond_2
    return v1

    .line 726
    .end local v1    # "flags":I
    :cond_3
    :goto_3
    return v0

    :sswitch_data_0
    .sparse-switch
        -0xf0608ae -> :sswitch_2
        0x5d4 -> :sswitch_1
        0x6761d4f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist-max-o enableForegroundTrimming()V
    .locals 1

    .line 227
    const/4 v0, 0x1

    sput-boolean v0, Landroid/view/ThreadedRenderer;->sTrimForeground:Z

    .line 228
    return-void
.end method

.method public static blacklist handleDumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "args"    # [Ljava/lang/String;

    .line 747
    invoke-static {p1}, Landroid/view/ThreadedRenderer;->dumpArgsToFlags([Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Landroid/view/ThreadedRenderer;->dumpGlobalProfileInfo(Ljava/io/FileDescriptor;I)V

    .line 748
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/view/WindowManagerGlobal;->dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 749
    return-void
.end method

.method public static blacklist initForSystemProcess()V
    .locals 1

    .line 257
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/ThreadedRenderer;->sRendererEnabled:Z

    goto :goto_0

    .line 260
    :cond_0
    invoke-static {}, Landroid/view/ThreadedRenderer;->enableForegroundTrimming()V

    .line 262
    :goto_0
    return-void
.end method

.method public static greylist-max-o isAvailable()Z
    .locals 2

    .line 240
    const-string v0, "debug.skia.force_sw_gles"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 241
    .local v0, "force_sw_gles":I
    if-nez v0, :cond_0

    .line 242
    const/4 v1, 0x1

    return v1

    .line 244
    :cond_0
    return v1
.end method

.method private blacklist setLightCenterWithMaxBounds(Landroid/view/View$AttachInfo;)Z
    .locals 7
    .param p1, "attachInfo"    # Landroid/view/View$AttachInfo;

    .line 683
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 684
    .local v0, "thread":Landroid/app/ActivityThread;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/app/ActivityThread;->isDexCompatMode()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 689
    :cond_0
    iget v1, p0, Landroid/view/ThreadedRenderer;->mDesktopLightY:F

    iput v1, p0, Landroid/view/ThreadedRenderer;->mLightY:F

    .line 692
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 693
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 694
    .local v2, "maxBounds":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p1, Landroid/view/View$AttachInfo;->mWindowLeft:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 695
    .local v3, "lightX":F
    iget v4, p0, Landroid/view/ThreadedRenderer;->mLightY:F

    iget v5, p1, Landroid/view/View$AttachInfo;->mWindowTop:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 696
    .local v4, "lightY":F
    iget v5, p0, Landroid/view/ThreadedRenderer;->mLightZ:F

    iget v6, p0, Landroid/view/ThreadedRenderer;->mLightRadius:F

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/view/ThreadedRenderer;->setLightSourceGeometry(FFFF)V

    .line 697
    const/4 v5, 0x1

    return v5

    .line 685
    .end local v1    # "wm":Landroid/view/WindowManager;
    .end local v2    # "maxBounds":Landroid/graphics/Rect;
    .end local v3    # "lightX":F
    .end local v4    # "lightY":F
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o updateEnabledState(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .line 456
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 459
    :cond_0
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    invoke-virtual {p0, v0}, Landroid/view/ThreadedRenderer;->setEnabled(Z)V

    goto :goto_1

    .line 457
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ThreadedRenderer;->setEnabled(Z)V

    .line 461
    :goto_1
    return-void
.end method

.method private greylist-max-o updateRootDisplayList(Landroid/view/View;Landroid/view/ThreadedRenderer$DrawCallbacks;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callbacks"    # Landroid/view/ThreadedRenderer$DrawCallbacks;

    .line 782
    const-wide/16 v0, 0x8

    const-string v2, "Record View#draw()"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 783
    invoke-direct {p0, p1}, Landroid/view/ThreadedRenderer;->updateViewTreeDisplayList(Landroid/view/View;)V

    .line 788
    iget-object v2, p0, Landroid/view/ThreadedRenderer;->mNextRtFrameCallbacks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 789
    iget-object v2, p0, Landroid/view/ThreadedRenderer;->mNextRtFrameCallbacks:Ljava/util/ArrayList;

    .line 790
    .local v2, "frameCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/HardwareRenderer$FrameDrawingCallback;>;"
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/view/ThreadedRenderer;->mNextRtFrameCallbacks:Ljava/util/ArrayList;

    .line 791
    new-instance v3, Landroid/view/ThreadedRenderer$1;

    invoke-direct {v3, p0, v2}, Landroid/view/ThreadedRenderer$1;-><init>(Landroid/view/ThreadedRenderer;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v3}, Landroid/view/ThreadedRenderer;->setFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    .line 820
    .end local v2    # "frameCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/HardwareRenderer$FrameDrawingCallback;>;"
    :cond_0
    iget-boolean v2, p0, Landroid/view/ThreadedRenderer;->mRootNodeNeedsUpdate:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/graphics/RenderNode;

    invoke-virtual {v2}, Landroid/graphics/RenderNode;->hasDisplayList()Z

    move-result v2

    if-nez v2, :cond_2

    .line 821
    :cond_1
    iget-object v2, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/graphics/RenderNode;

    iget v3, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    iget v4, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v2

    .line 823
    .local v2, "canvas":Landroid/graphics/RecordingCanvas;
    :try_start_0
    invoke-virtual {v2}, Landroid/graphics/RecordingCanvas;->save()I

    move-result v3

    .line 824
    .local v3, "saveCount":I
    iget v4, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    int-to-float v4, v4

    iget v5, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/RecordingCanvas;->translate(FF)V

    .line 825
    invoke-interface {p2, v2}, Landroid/view/ThreadedRenderer$DrawCallbacks;->onPreDraw(Landroid/graphics/RecordingCanvas;)V

    .line 827
    invoke-virtual {v2}, Landroid/graphics/RecordingCanvas;->enableZ()V

    .line 828
    invoke-virtual {p1}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/graphics/RenderNode;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/RecordingCanvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 829
    invoke-virtual {v2}, Landroid/graphics/RecordingCanvas;->disableZ()V

    .line 831
    invoke-interface {p2, v2}, Landroid/view/ThreadedRenderer$DrawCallbacks;->onPostDraw(Landroid/graphics/RecordingCanvas;)V

    .line 832
    invoke-virtual {v2, v3}, Landroid/graphics/RecordingCanvas;->restoreToCount(I)V

    .line 833
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/view/ThreadedRenderer;->mRootNodeNeedsUpdate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 835
    .end local v3    # "saveCount":I
    iget-object v3, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/graphics/RenderNode;

    invoke-virtual {v3}, Landroid/graphics/RenderNode;->endRecording()V

    .line 836
    nop

    .line 838
    .end local v2    # "canvas":Landroid/graphics/RecordingCanvas;
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 839
    return-void

    .line 835
    .restart local v2    # "canvas":Landroid/graphics/RecordingCanvas;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/graphics/RenderNode;

    invoke-virtual {v1}, Landroid/graphics/RenderNode;->endRecording()V

    .line 836
    throw v0
.end method

.method private greylist-max-o updateViewTreeDisplayList(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 773
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 774
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p1, Landroid/view/View;->mRecreateDisplayList:Z

    .line 776
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 777
    invoke-virtual {p1}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/graphics/RenderNode;

    .line 778
    iput-boolean v2, p1, Landroid/view/View;->mRecreateDisplayList:Z

    .line 779
    return-void
.end method

.method private blacklist updateWebViewOverlayCallbacks()V
    .locals 2

    .line 625
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mWebViewOverlayProvider:Landroid/view/ThreadedRenderer$WebViewOverlayProvider;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->shouldEnableOverlaySupport()Z

    move-result v0

    .line 626
    .local v0, "shouldEnable":Z
    iget-boolean v1, p0, Landroid/view/ThreadedRenderer;->mWebViewOverlaysEnabled:Z

    if-eq v0, v1, :cond_1

    .line 627
    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mWebViewOverlaysEnabled:Z

    .line 628
    if-eqz v0, :cond_0

    .line 629
    iget-object v1, p0, Landroid/view/ThreadedRenderer;->mWebViewOverlayProvider:Landroid/view/ThreadedRenderer$WebViewOverlayProvider;

    invoke-virtual {p0, v1}, Landroid/view/ThreadedRenderer;->setASurfaceTransactionCallback(Landroid/graphics/HardwareRenderer$ASurfaceTransactionCallback;)V

    .line 630
    iget-object v1, p0, Landroid/view/ThreadedRenderer;->mWebViewOverlayProvider:Landroid/view/ThreadedRenderer$WebViewOverlayProvider;

    invoke-virtual {p0, v1}, Landroid/view/ThreadedRenderer;->setPrepareSurfaceControlForWebviewCallback(Landroid/graphics/HardwareRenderer$PrepareSurfaceControlForWebviewCallback;)V

    goto :goto_0

    .line 632
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ThreadedRenderer;->setASurfaceTransactionCallback(Landroid/graphics/HardwareRenderer$ASurfaceTransactionCallback;)V

    .line 633
    invoke-virtual {p0, v1}, Landroid/view/ThreadedRenderer;->setPrepareSurfaceControlForWebviewCallback(Landroid/graphics/HardwareRenderer$PrepareSurfaceControlForWebviewCallback;)V

    .line 636
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method blacklist captureRenderingCommands()Landroid/graphics/Picture;
    .locals 1

    .line 760
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist destroy()V
    .locals 1

    .line 414
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    .line 415
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/ThreadedRenderer;->updateEnabledState(Landroid/view/Surface;)V

    .line 416
    invoke-super {p0}, Landroid/graphics/HardwareRenderer;->destroy()V

    .line 417
    return-void
.end method

.method greylist-max-o destroyHardwareResources(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 563
    invoke-static {p1}, Landroid/view/ThreadedRenderer;->destroyResources(Landroid/view/View;)V

    .line 564
    invoke-virtual {p0}, Landroid/view/ThreadedRenderer;->clearContent()V

    .line 565
    return-void
.end method

.method blacklist draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/ThreadedRenderer$DrawCallbacks;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p3, "callbacks"    # Landroid/view/ThreadedRenderer$DrawCallbacks;

    .line 879
    iget-object v0, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mViewFrameInfo:Landroid/view/ViewFrameInfo;

    invoke-virtual {v0}, Landroid/view/ViewFrameInfo;->markDrawStart()V

    .line 881
    invoke-direct {p0, p1, p3}, Landroid/view/ThreadedRenderer;->updateRootDisplayList(Landroid/view/View;Landroid/view/ThreadedRenderer$DrawCallbacks;)V

    .line 885
    iget-object v0, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 886
    iget-object v0, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 887
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 888
    iget-object v2, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    .line 889
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RenderNode;

    .line 888
    invoke-virtual {p0, v2}, Landroid/view/ThreadedRenderer;->registerAnimatingRenderNode(Landroid/graphics/RenderNode;)V

    .line 887
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 891
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 894
    const/4 v1, 0x0

    iput-object v1, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    .line 897
    .end local v0    # "count":I
    :cond_1
    iget-object v0, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getUpdatedFrameInfo()Landroid/graphics/FrameInfo;

    move-result-object v0

    .line 899
    .local v0, "frameInfo":Landroid/graphics/FrameInfo;
    invoke-virtual {p0, v0}, Landroid/view/ThreadedRenderer;->syncAndDrawFrame(Landroid/graphics/FrameInfo;)I

    move-result v1

    .line 900
    .local v1, "syncResult":I
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_2

    .line 901
    const-string v2, "OpenGLRenderer"

    const-string v3, "Surface lost, forcing relayout"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    iget-object v2, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    .line 905
    iget-object v2, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 907
    :cond_2
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_3

    .line 908
    iget-object v2, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 910
    :cond_3
    return-void
.end method

.method greylist-max-o dumpGfxInfo(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "args"    # [Ljava/lang/String;

    .line 755
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 756
    invoke-static {p3}, Landroid/view/ThreadedRenderer;->dumpArgsToFlags([Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Landroid/view/ThreadedRenderer;->dumpProfileInfo(Ljava/io/FileDescriptor;I)V

    .line 757
    return-void
.end method

.method greylist-max-o getHeight()I
    .locals 1

    .line 718
    iget v0, p0, Landroid/view/ThreadedRenderer;->mHeight:I

    return v0
.end method

.method public blacklist getRootNode()Landroid/graphics/RenderNode;
    .locals 1

    .line 914
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/graphics/RenderNode;

    return-object v0
.end method

.method greylist-max-o getWidth()I
    .locals 1

    .line 708
    iget v0, p0, Landroid/view/ThreadedRenderer;->mWidth:I

    return v0
.end method

.method greylist-max-o initialize(Landroid/view/Surface;)Z
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .line 471
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 472
    .local v0, "status":Z
    iput-boolean v1, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    .line 473
    invoke-direct {p0, p1}, Landroid/view/ThreadedRenderer;->updateEnabledState(Landroid/view/Surface;)V

    .line 474
    invoke-virtual {p0, p1}, Landroid/view/ThreadedRenderer;->setSurface(Landroid/view/Surface;)V

    .line 475
    return v0
.end method

.method greylist-max-o initializeIfNeeded(IILandroid/view/View$AttachInfo;Landroid/view/Surface;Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p4, "surface"    # Landroid/view/Surface;
    .param p5, "surfaceInsets"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .line 496
    invoke-virtual {p0}, Landroid/view/ThreadedRenderer;->isRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {p0}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 499
    invoke-virtual {p0, p4}, Landroid/view/ThreadedRenderer;->initialize(Landroid/view/Surface;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    invoke-virtual {p0, p1, p2, p3, p5}, Landroid/view/ThreadedRenderer;->setup(IILandroid/view/View$AttachInfo;Landroid/graphics/Rect;)V

    .line 501
    const/4 v0, 0x1

    return v0

    .line 505
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o invalidateRoot()V
    .locals 1

    .line 869
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mRootNodeNeedsUpdate:Z

    .line 870
    return-void
.end method

.method greylist-max-o isEnabled()Z
    .locals 1

    .line 425
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mEnabled:Z

    return v0
.end method

.method greylist-max-o isRequested()Z
    .locals 1

    .line 444
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mRequested:Z

    return v0
.end method

.method public greylist-max-o loadSystemProperties()Z
    .locals 1

    .line 765
    invoke-super {p0}, Landroid/graphics/HardwareRenderer;->loadSystemProperties()Z

    move-result v0

    .line 766
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 767
    invoke-virtual {p0}, Landroid/view/ThreadedRenderer;->invalidateRoot()V

    .line 769
    :cond_0
    return v0
.end method

.method blacklist registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/graphics/HardwareRenderer$FrameDrawingCallback;

    .line 537
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mNextRtFrameCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 538
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ThreadedRenderer;->mNextRtFrameCallbacks:Ljava/util/ArrayList;

    .line 540
    :cond_0
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mNextRtFrameCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    return-void
.end method

.method public blacklist rendererOwnsSurfaceControlOpacity()Z
    .locals 1

    .line 609
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mWebViewOverlayProvider:Landroid/view/ThreadedRenderer$WebViewOverlayProvider;

    invoke-static {v0}, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->-$$Nest$fgetmSurfaceControl(Landroid/view/ThreadedRenderer$WebViewOverlayProvider;)Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist setBlastBufferQueue(Landroid/graphics/BLASTBufferQueue;)V
    .locals 1
    .param p1, "blastBufferQueue"    # Landroid/graphics/BLASTBufferQueue;

    .line 650
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mWebViewOverlayProvider:Landroid/view/ThreadedRenderer$WebViewOverlayProvider;

    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->setBLASTBufferQueue(Landroid/graphics/BLASTBufferQueue;)V

    .line 651
    invoke-direct {p0}, Landroid/view/ThreadedRenderer;->updateWebViewOverlayCallbacks()V

    .line 652
    return-void
.end method

.method greylist-max-o setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 434
    iput-boolean p1, p0, Landroid/view/ThreadedRenderer;->mEnabled:Z

    .line 435
    return-void
.end method

.method greylist-max-o setLightCenter(Landroid/view/View$AttachInfo;)V
    .locals 5
    .param p1, "attachInfo"    # Landroid/view/View$AttachInfo;

    .line 661
    invoke-direct {p0, p1}, Landroid/view/ThreadedRenderer;->setLightCenterWithMaxBounds(Landroid/view/View$AttachInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    return-void

    .line 667
    :cond_0
    nop

    .line 669
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mContext:Landroid/content/Context;

    .line 667
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mContext:Landroid/content/Context;

    .line 669
    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 670
    iget v0, p0, Landroid/view/ThreadedRenderer;->mDesktopLightY:F

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/view/ThreadedRenderer;->mDefaultLightY:F

    :goto_0
    iput v0, p0, Landroid/view/ThreadedRenderer;->mLightY:F

    .line 674
    iget-object v0, p1, Landroid/view/View$AttachInfo;->mPoint:Landroid/graphics/Point;

    .line 675
    .local v0, "displaySize":Landroid/graphics/Point;
    iget-object v1, p1, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 676
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p1, Landroid/view/View$AttachInfo;->mWindowLeft:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 677
    .local v1, "lightX":F
    iget v2, p0, Landroid/view/ThreadedRenderer;->mLightY:F

    iget v3, p1, Landroid/view/View$AttachInfo;->mWindowTop:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 678
    .local v2, "lightY":F
    iget v3, p0, Landroid/view/ThreadedRenderer;->mLightZ:F

    iget v4, p0, Landroid/view/ThreadedRenderer;->mLightRadius:F

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/ThreadedRenderer;->setLightSourceGeometry(FFFF)V

    .line 679
    return-void
.end method

.method greylist-max-o setRequested(Z)V
    .locals 0
    .param p1, "requested"    # Z

    .line 452
    iput-boolean p1, p0, Landroid/view/ThreadedRenderer;->mRequested:Z

    .line 453
    return-void
.end method

.method public whitelist setSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .line 522
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    invoke-super {p0, p1}, Landroid/graphics/HardwareRenderer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 525
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/graphics/HardwareRenderer;->setSurface(Landroid/view/Surface;)V

    .line 527
    :goto_0
    return-void
.end method

.method public blacklist setSurfaceControl(Landroid/view/SurfaceControl;)V
    .locals 1
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;

    .line 640
    invoke-super {p0, p1}, Landroid/graphics/HardwareRenderer;->setSurfaceControl(Landroid/view/SurfaceControl;)V

    .line 641
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mWebViewOverlayProvider:Landroid/view/ThreadedRenderer$WebViewOverlayProvider;

    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->setSurfaceControl(Landroid/view/SurfaceControl;)V

    .line 642
    invoke-direct {p0}, Landroid/view/ThreadedRenderer;->updateWebViewOverlayCallbacks()V

    .line 643
    return-void
.end method

.method public blacklist setSurfaceControlOpaque(Z)Z
    .locals 1
    .param p1, "opaque"    # Z

    .line 621
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mWebViewOverlayProvider:Landroid/view/ThreadedRenderer$WebViewOverlayProvider;

    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->setSurfaceControlOpaque(Z)Z

    move-result v0

    return v0
.end method

.method greylist-max-o setup(IILandroid/view/View$AttachInfo;Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p4, "surfaceInsets"    # Landroid/graphics/Rect;

    .line 580
    iput p1, p0, Landroid/view/ThreadedRenderer;->mWidth:I

    .line 581
    iput p2, p0, Landroid/view/ThreadedRenderer;->mHeight:I

    .line 583
    const/4 v0, 0x0

    if-eqz p4, :cond_1

    iget v1, p4, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_0

    iget v1, p4, Landroid/graphics/Rect;->right:I

    if-nez v1, :cond_0

    iget v1, p4, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_0

    iget v1, p4, Landroid/graphics/Rect;->bottom:I

    if-eqz v1, :cond_1

    .line 585
    :cond_0
    iget v1, p4, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    .line 586
    iget v1, p4, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    .line 587
    iget v1, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    add-int/2addr v1, p1

    iget v2, p4, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    .line 588
    iget v1, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    add-int/2addr v1, p2

    iget v2, p4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    .line 591
    invoke-virtual {p0, v0}, Landroid/view/ThreadedRenderer;->setOpaque(Z)V

    goto :goto_0

    .line 593
    :cond_1
    iput v0, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    .line 594
    iput v0, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    .line 595
    iput p1, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    .line 596
    iput p2, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    .line 599
    :goto_0
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/graphics/RenderNode;

    iget v1, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    neg-int v1, v1

    iget v2, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    neg-int v2, v2

    iget v3, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    iget v4, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 601
    invoke-virtual {p0, p3}, Landroid/view/ThreadedRenderer;->setLightCenter(Landroid/view/View$AttachInfo;)V

    .line 602
    return-void
.end method

.method blacklist unregisterRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/graphics/HardwareRenderer$FrameDrawingCallback;

    .line 550
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mNextRtFrameCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 551
    return-void

    .line 553
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 554
    return-void
.end method

.method greylist-max-o updateSurface(Landroid/view/Surface;)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .line 514
    invoke-direct {p0, p1}, Landroid/view/ThreadedRenderer;->updateEnabledState(Landroid/view/Surface;)V

    .line 515
    invoke-virtual {p0, p1}, Landroid/view/ThreadedRenderer;->setSurface(Landroid/view/Surface;)V

    .line 516
    return-void
.end method
