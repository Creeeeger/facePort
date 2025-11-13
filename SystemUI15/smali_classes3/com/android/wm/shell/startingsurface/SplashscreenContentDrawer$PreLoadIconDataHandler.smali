.class public final Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreLoadIconDataHandler;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreLoadIconDataHandler;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreLoadIconDataHandler;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreLoadIconDataHandler;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    iget-object p1, p1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
