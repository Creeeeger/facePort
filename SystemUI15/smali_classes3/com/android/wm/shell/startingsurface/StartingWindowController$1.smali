.class public final Lcom/android/wm/shell/startingsurface/StartingWindowController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/sysui/ConfigurationChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/startingsurface/StartingWindowController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/startingsurface/StartingWindowController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$1;->this$0:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$1;->this$0:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingSurfaceDrawer:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mSplashscreenContentDrawer:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result p1

    sget-boolean v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mIsNightMode:Z

    if-eq v0, p1, :cond_0

    sget v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mSettingObserver:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;->updateSettings(Z)V

    :cond_0
    sput-boolean p1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mIsNightMode:Z

    return-void
.end method
