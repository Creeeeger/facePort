.class public Landroid/media/tv/ad/TvAdView;
.super Landroid/view/ViewGroup;
.source "TvAdView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ad/TvAdView$MySessionCallback;,
        Landroid/media/tv/ad/TvAdView$OnUnhandledInputEventListener;,
        Landroid/media/tv/ad/TvAdView$TvAdCallback;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field public static final blacklist ERROR_KEY_ERROR_CODE:Ljava/lang/String; = "error_code"

.field public static final blacklist ERROR_KEY_METHOD_NAME:Ljava/lang/String; = "method_name"

.field private static final blacklist TAG:Ljava/lang/String; = "TvAdView"


# instance fields
.field private final blacklist mAttrs:Landroid/util/AttributeSet;

.field private blacklist mCallback:Landroid/media/tv/ad/TvAdView$TvAdCallback;

.field private blacklist mCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mCallbackLock:Ljava/lang/Object;

.field private final blacklist mDefStyleAttr:I

.field private final blacklist mFinishedInputEventCallback:Landroid/media/tv/ad/TvAdManager$Session$FinishedInputEventCallback;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mMediaViewCreated:Z

.field private blacklist mMediaViewFrame:Landroid/graphics/Rect;

.field private blacklist mOnUnhandledInputEventListener:Landroid/media/tv/ad/TvAdView$OnUnhandledInputEventListener;

.field private final blacklist mParser:Landroid/content/res/XmlResourceParser;

.field private blacklist mSession:Landroid/media/tv/ad/TvAdManager$Session;

.field private blacklist mSessionCallback:Landroid/media/tv/ad/TvAdView$MySessionCallback;

.field private blacklist mSurface:Landroid/view/Surface;

.field private blacklist mSurfaceChanged:Z

.field private blacklist mSurfaceFormat:I

.field private blacklist mSurfaceHeight:I

.field private final blacklist mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

.field private blacklist mSurfaceView:Landroid/view/SurfaceView;

.field private blacklist mSurfaceViewBottom:I

.field private blacklist mSurfaceViewLeft:I

.field private blacklist mSurfaceViewRight:I

.field private blacklist mSurfaceViewTop:I

.field private blacklist mSurfaceWidth:I

.field private final blacklist mTvAdManager:Landroid/media/tv/ad/TvAdManager;

.field private blacklist mUseRequestedSurfaceLayout:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/media/tv/ad/TvAdView;)Landroid/media/tv/ad/TvAdView$TvAdCallback;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/ad/TvAdView;->mCallback:Landroid/media/tv/ad/TvAdView$TvAdCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallbackExecutor(Landroid/media/tv/ad/TvAdView;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/ad/TvAdView;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallbackLock(Landroid/media/tv/ad/TvAdView;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/ad/TvAdView;->mCallbackLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionCallback(Landroid/media/tv/ad/TvAdView;)Landroid/media/tv/ad/TvAdView$MySessionCallback;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/ad/TvAdView;->mSessionCallback:Landroid/media/tv/ad/TvAdView$MySessionCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurface(Landroid/media/tv/ad/TvAdView;)Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/ad/TvAdView;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurfaceChanged(Landroid/media/tv/ad/TvAdView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceChanged:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurfaceFormat(Landroid/media/tv/ad/TvAdView;)I
    .locals 0

    iget p0, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceFormat:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurfaceHeight(Landroid/media/tv/ad/TvAdView;)I
    .locals 0

    iget p0, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurfaceWidth(Landroid/media/tv/ad/TvAdView;)I
    .locals 0

    iget p0, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMediaViewCreated(Landroid/media/tv/ad/TvAdView;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/media/tv/ad/TvAdView;->mMediaViewCreated:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMediaViewFrame(Landroid/media/tv/ad/TvAdView;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Landroid/media/tv/ad/TvAdView;->mMediaViewFrame:Landroid/graphics/Rect;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSession(Landroid/media/tv/ad/TvAdView;Landroid/media/tv/ad/TvAdManager$Session;)V
    .locals 0

    iput-object p1, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSessionCallback(Landroid/media/tv/ad/TvAdView;Landroid/media/tv/ad/TvAdView$MySessionCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/media/tv/ad/TvAdView;->mSessionCallback:Landroid/media/tv/ad/TvAdView$MySessionCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurface(Landroid/media/tv/ad/TvAdView;Landroid/view/Surface;)V
    .locals 0

    iput-object p1, p0, Landroid/media/tv/ad/TvAdView;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceChanged(Landroid/media/tv/ad/TvAdView;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceChanged:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceFormat(Landroid/media/tv/ad/TvAdView;I)V
    .locals 0

    iput p1, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceFormat:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceHeight(Landroid/media/tv/ad/TvAdView;I)V
    .locals 0

    iput p1, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceHeight:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceViewBottom(Landroid/media/tv/ad/TvAdView;I)V
    .locals 0

    iput p1, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceViewBottom:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceViewLeft(Landroid/media/tv/ad/TvAdView;I)V
    .locals 0

    iput p1, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceViewLeft:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceViewRight(Landroid/media/tv/ad/TvAdView;I)V
    .locals 0

    iput p1, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceViewRight:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceViewTop(Landroid/media/tv/ad/TvAdView;I)V
    .locals 0

    iput p1, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceViewTop:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceWidth(Landroid/media/tv/ad/TvAdView;I)V
    .locals 0

    iput p1, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceWidth:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUseRequestedSurfaceLayout(Landroid/media/tv/ad/TvAdView;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/media/tv/ad/TvAdView;->mUseRequestedSurfaceLayout:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateSessionMediaView(Landroid/media/tv/ad/TvAdView;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/ad/TvAdView;->createSessionMediaView()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchSurfaceChanged(Landroid/media/tv/ad/TvAdView;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/media/tv/ad/TvAdView;->dispatchSurfaceChanged(III)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrelayoutSessionMediaView(Landroid/media/tv/ad/TvAdView;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/ad/TvAdView;->relayoutSessionMediaView()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetSessionSurface(Landroid/media/tv/ad/TvAdView;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/ad/TvAdView;->setSessionSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/media/tv/ad/TvAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/tv/ad/TvAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdView;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdView;->mCallbackLock:Ljava/lang/Object;

    new-instance v0, Landroid/media/tv/ad/TvAdView$1;

    invoke-direct {v0, p0}, Landroid/media/tv/ad/TvAdView$1;-><init>(Landroid/media/tv/ad/TvAdView;)V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    new-instance v0, Landroid/media/tv/ad/TvAdView$3;

    invoke-direct {v0, p0}, Landroid/media/tv/ad/TvAdView$3;-><init>(Landroid/media/tv/ad/TvAdView;)V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdView;->mFinishedInputEventCallback:Landroid/media/tv/ad/TvAdManager$Session$FinishedInputEventCallback;

    invoke-static {p2}, Landroid/content/res/Resources;->getAttributeSetSourceResId(Landroid/util/AttributeSet;)I

    move-result v0

    const-string v1, "TvAdView"

    if-eqz v0, :cond_0

    const-string v2, "Build local AttributeSet"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    iput-object v1, p0, Landroid/media/tv/ad/TvAdView;->mParser:Landroid/content/res/XmlResourceParser;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdView;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    iput-object v1, p0, Landroid/media/tv/ad/TvAdView;->mAttrs:Landroid/util/AttributeSet;

    goto :goto_0

    :cond_0
    const-string v2, "Use passed in AttributeSet"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/tv/ad/TvAdView;->mParser:Landroid/content/res/XmlResourceParser;

    iput-object p2, p0, Landroid/media/tv/ad/TvAdView;->mAttrs:Landroid/util/AttributeSet;

    :goto_0
    iput p3, p0, Landroid/media/tv/ad/TvAdView;->mDefStyleAttr:I

    invoke-direct {p0}, Landroid/media/tv/ad/TvAdView;->resetSurfaceView()V

    invoke-virtual {p0}, Landroid/media/tv/ad/TvAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "tv_ad"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/ad/TvAdManager;

    iput-object v1, p0, Landroid/media/tv/ad/TvAdView;->mTvAdManager:Landroid/media/tv/ad/TvAdManager;

    return-void
.end method

.method private blacklist createSessionMediaView()V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/media/tv/ad/TvAdView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/media/tv/ad/TvAdView;->mMediaViewCreated:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/media/tv/ad/TvAdView;->getViewFrameOnScreen()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/ad/TvAdView;->mMediaViewFrame:Landroid/graphics/Rect;

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdView;->mMediaViewFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, v1}, Landroid/media/tv/ad/TvAdManager$Session;->createMediaView(Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/tv/ad/TvAdView;->mMediaViewCreated:Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist dispatchSurfaceChanged(III)V
    .locals 1

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/tv/ad/TvAdManager$Session;->dispatchSurfaceChanged(III)V

    return-void
.end method

.method private blacklist getViewFrameOnScreen()Landroid/graphics/Rect;
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/media/tv/ad/TvAdView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/media/tv/ad/TvAdView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method private blacklist relayoutSessionMediaView()V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/media/tv/ad/TvAdView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/media/tv/ad/TvAdView;->mMediaViewCreated:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/media/tv/ad/TvAdView;->getViewFrameOnScreen()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/ad/TvAdView;->mMediaViewFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    invoke-virtual {v1, v0}, Landroid/media/tv/ad/TvAdManager$Session;->relayoutMediaView(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdView;->mMediaViewFrame:Landroid/graphics/Rect;

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist removeSessionMediaView()V
    .locals 1

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/media/tv/ad/TvAdView;->mMediaViewCreated:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    invoke-virtual {v0}, Landroid/media/tv/ad/TvAdManager$Session;->removeMediaView()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/ad/TvAdView;->mMediaViewCreated:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/ad/TvAdView;->mMediaViewFrame:Landroid/graphics/Rect;

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist resetInternal()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSessionCallback:Landroid/media/tv/ad/TvAdView$MySessionCallback;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Landroid/media/tv/ad/TvAdView;->setSessionSurface(Landroid/view/Surface;)V

    invoke-direct {p0}, Landroid/media/tv/ad/TvAdView;->removeSessionMediaView()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/tv/ad/TvAdView;->mUseRequestedSurfaceLayout:Z

    iget-object v1, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    invoke-virtual {v1}, Landroid/media/tv/ad/TvAdManager$Session;->release()V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    invoke-direct {p0}, Landroid/media/tv/ad/TvAdView;->resetSurfaceView()V

    :cond_0
    return-void
.end method

.method private blacklist resetSurfaceView()V
    .locals 4

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Landroid/media/tv/ad/TvAdView;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSurface:Landroid/view/Surface;

    new-instance v0, Landroid/media/tv/ad/TvAdView$2;

    invoke-virtual {p0}, Landroid/media/tv/ad/TvAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/ad/TvAdView;->mAttrs:Landroid/util/AttributeSet;

    iget v3, p0, Landroid/media/tv/ad/TvAdView;->mDefStyleAttr:I

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/media/tv/ad/TvAdView$2;-><init>(Landroid/media/tv/ad/TvAdView;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceView:Landroid/view/SurfaceView;

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setSecure(Z)V

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v2, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v2, -0x3

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Landroid/media/tv/ad/TvAdView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private blacklist setSessionSurface(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/ad/TvAdManager$Session;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method private blacklist unsetTvView()Z
    .locals 2

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    invoke-virtual {v0}, Landroid/media/tv/ad/TvAdManager$Session;->getInputSession()Landroid/media/tv/TvInputManager$Session;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    invoke-virtual {v0}, Landroid/media/tv/ad/TvAdManager$Session;->getInputSession()Landroid/media/tv/TvInputManager$Session;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputManager$Session;->setAdSession(Landroid/media/tv/ad/TvAdManager$Session;)V

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    invoke-virtual {v0, v1}, Landroid/media/tv/ad/TvAdManager$Session;->setInputSession(Landroid/media/tv/TvInputManager$Session;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist clearCallback()V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/media/tv/ad/TvAdView;->mCallback:Landroid/media/tv/ad/TvAdView$TvAdCallback;

    iput-object v1, p0, Landroid/media/tv/ad/TvAdView;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist clearOnUnhandledInputEventListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/ad/TvAdView;->mOnUnhandledInputEventListener:Landroid/media/tv/ad/TvAdView$OnUnhandledInputEventListener;

    return-void
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->copy()Landroid/view/KeyEvent;

    move-result-object v0

    iget-object v3, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    iget-object v4, p0, Landroid/media/tv/ad/TvAdView;->mFinishedInputEventCallback:Landroid/media/tv/ad/TvAdManager$Session$FinishedInputEventCallback;

    iget-object v5, p0, Landroid/media/tv/ad/TvAdView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0, v0, v4, v5}, Landroid/media/tv/ad/TvAdManager$Session;->dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/ad/TvAdManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)I

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1
.end method

.method public blacklist dispatchUnhandledInputEvent(Landroid/view/InputEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mOnUnhandledInputEventListener:Landroid/media/tv/ad/TvAdView$OnUnhandledInputEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mOnUnhandledInputEventListener:Landroid/media/tv/ad/TvAdView$OnUnhandledInputEventListener;

    invoke-interface {v0, p1}, Landroid/media/tv/ad/TvAdView$OnUnhandledInputEventListener;->onUnhandledInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/tv/ad/TvAdView;->onUnhandledInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public blacklist getAdSession()Landroid/media/tv/ad/TvAdManager$Session;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    return-object v0
.end method

.method public blacklist getOnUnhandledInputEventListener()Landroid/media/tv/ad/TvAdView$OnUnhandledInputEventListener;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mOnUnhandledInputEventListener:Landroid/media/tv/ad/TvAdView$OnUnhandledInputEventListener;

    return-object v0
.end method

.method public blacklist notifyError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    invoke-virtual {v0, p1, p2}, Landroid/media/tv/ad/TvAdManager$Session;->notifyError(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public blacklist notifyTvMessage(ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    invoke-virtual {v0, p1, p2}, Landroid/media/tv/ad/TvAdManager$Session;->notifyTvMessage(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public whitelist onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-direct {p0}, Landroid/media/tv/ad/TvAdView;->createSessionMediaView()V

    return-void
.end method

.method public whitelist onDetachedFromWindow()V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/ad/TvAdView;->removeSessionMediaView()V

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method public whitelist onLayout(ZIIII)V
    .locals 5

    iget-boolean v0, p0, Landroid/media/tv/ad/TvAdView;->mUseRequestedSurfaceLayout:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceView:Landroid/view/SurfaceView;

    iget v1, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceViewLeft:I

    iget v2, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceViewTop:I

    iget v3, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceViewRight:I

    iget v4, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceViewBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/SurfaceView;->layout(IIII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceView:Landroid/view/SurfaceView;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/SurfaceView;->layout(IIII)V

    :goto_0
    return-void
.end method

.method public whitelist onMeasure(II)V
    .locals 5

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceView;->measure(II)V

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getMeasuredState()I

    move-result v2

    invoke-static {v0, p1, v2}, Landroid/media/tv/ad/TvAdView;->resolveSizeAndState(III)I

    move-result v3

    shl-int/lit8 v4, v2, 0x10

    invoke-static {v1, p2, v4}, Landroid/media/tv/ad/TvAdView;->resolveSizeAndState(III)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/media/tv/ad/TvAdView;->setMeasuredDimension(II)V

    return-void
.end method

.method public blacklist onUnhandledInputEvent(Landroid/view/InputEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p2}, Landroid/view/SurfaceView;->setVisibility(I)V

    if-nez p2, :cond_0

    invoke-direct {p0}, Landroid/media/tv/ad/TvAdView;->createSessionMediaView()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/media/tv/ad/TvAdView;->removeSessionMediaView()V

    :goto_0
    return-void
.end method

.method public blacklist prepareAdService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/media/tv/ad/TvAdView$MySessionCallback;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/ad/TvAdView$MySessionCallback;-><init>(Landroid/media/tv/ad/TvAdView;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSessionCallback:Landroid/media/tv/ad/TvAdView$MySessionCallback;

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mTvAdManager:Landroid/media/tv/ad/TvAdManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mTvAdManager:Landroid/media/tv/ad/TvAdManager;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdView;->mSessionCallback:Landroid/media/tv/ad/TvAdView$MySessionCallback;

    iget-object v2, p0, Landroid/media/tv/ad/TvAdView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/media/tv/ad/TvAdManager;->createSession(Ljava/lang/String;Ljava/lang/String;Landroid/media/tv/ad/TvAdManager$SessionCallback;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public blacklist reset()V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/ad/TvAdView;->resetInternal()V

    return-void
.end method

.method public blacklist resetAdService()V
    .locals 1

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    invoke-virtual {v0}, Landroid/media/tv/ad/TvAdManager$Session;->resetAdService()V

    :cond_0
    return-void
.end method

.method public blacklist sendCurrentChannelUri(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/ad/TvAdManager$Session;->sendCurrentChannelUri(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public blacklist sendCurrentTvInputId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/ad/TvAdManager$Session;->sendCurrentTvInputId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public blacklist sendCurrentVideoBounds(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/ad/TvAdManager$Session;->sendCurrentVideoBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public blacklist sendSigningResult(Ljava/lang/String;[B)V
    .locals 1

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    invoke-virtual {v0, p1, p2}, Landroid/media/tv/ad/TvAdManager$Session;->sendSigningResult(Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method

.method public blacklist sendTrackInfoList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/ad/TvAdManager$Session;->sendTrackInfoList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public blacklist setCallback(Ljava/util/concurrent/Executor;Landroid/media/tv/ad/TvAdView$TvAdCallback;)V
    .locals 2

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroid/media/tv/ad/TvAdView;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/media/tv/ad/TvAdView;->mCallback:Landroid/media/tv/ad/TvAdView$TvAdCallback;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setOnUnhandledInputEventListener(Landroid/media/tv/ad/TvAdView$OnUnhandledInputEventListener;)V
    .locals 0

    iput-object p1, p0, Landroid/media/tv/ad/TvAdView;->mOnUnhandledInputEventListener:Landroid/media/tv/ad/TvAdView$OnUnhandledInputEventListener;

    return-void
.end method

.method public blacklist setTvView(Landroid/media/tv/TvView;)Z
    .locals 2

    if-nez p1, :cond_0

    invoke-direct {p0}, Landroid/media/tv/ad/TvAdView;->unsetTvView()Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/media/tv/TvView;->getInputSession()Landroid/media/tv/TvInputManager$Session;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    invoke-virtual {v1, v0}, Landroid/media/tv/ad/TvAdManager$Session;->setInputSession(Landroid/media/tv/TvInputManager$Session;)V

    iget-object v1, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputManager$Session;->setAdSession(Landroid/media/tv/ad/TvAdManager$Session;)V

    const/4 v1, 0x1

    return v1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist startAdService()V
    .locals 1

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    invoke-virtual {v0}, Landroid/media/tv/ad/TvAdManager$Session;->startAdService()V

    :cond_0
    return-void
.end method

.method public blacklist stopAdService()V
    .locals 1

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    invoke-virtual {v0}, Landroid/media/tv/ad/TvAdManager$Session;->stopAdService()V

    :cond_0
    return-void
.end method
