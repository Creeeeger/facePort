.class public final Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;
.super Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public TAG:Ljava/lang/String;

.field public final mKeyguardWallpaperEventListener:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$1;

.field public mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

.field public mSurfaceHolder:Landroid/view/SurfaceHolder;

.field public final mWakefulnessObserver:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$3;

.field public final mWallpaperEngineCallback:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;

.field public mWallpaperManager:Landroid/app/WallpaperManager;

.field public final mWallpaperType:I

.field public final synthetic this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpapers/ImageWallpaper;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper;I)V

    new-instance p1, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$1;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;)V

    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->mKeyguardWallpaperEventListener:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$1;

    new-instance p1, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;)V

    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->mWallpaperEngineCallback:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;

    new-instance p1, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$3;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;)V

    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->mWakefulnessObserver:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$3;

    iput p3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->mWallpaperType:I

    return-void
.end method

.method public static synthetic access$100(Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;ZZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->semSetFixedOrientation(ZZ)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->semIsFixedOrientationRequested()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final createImageEngine(I)Lcom/android/systemui/wallpaper/engines/image/ImageEngine;
    .locals 9

    new-instance v7, Lcom/android/systemui/wallpaper/engines/image/ImageSource;

    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object v2, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    iget-object v3, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPluginWallpaper:Lcom/android/systemui/wallpaper/PluginWallpaper;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getCurrentUserId()I

    move-result v5

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    move-result v6

    move-object v0, v7

    move v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/wallpaper/engines/image/ImageSource;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/CoverWallpaper;Lcom/android/systemui/wallpaper/PluginWallpaper;III)V

    new-instance p1, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;

    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->mWallpaperEngineCallback:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpapers/ImageWallpaper;->-$$Nest$fgetmSettingsHelper(Lcom/android/systemui/wallpapers/ImageWallpaper;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v3

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object v4, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mSystemWallpaperColors:Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

    iget-object v5, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLongExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v6, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    iget-object v8, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-object v0, p1

    move-object v1, v7

    move-object v7, v8

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;-><init>(Lcom/android/systemui/wallpaper/engines/image/ImageSource;Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/wallpaper/KeyguardWallpaper;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/DozeParameters;)V

    return-object p1
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 8

    const-string/jumbo v0, "samsung.android.wallpaper.blocktoucharea"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final onCreate(Landroid/view/SurfaceHolder;)V
    .locals 14

    invoke-super {p0, p1}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onCreate(Landroid/view/SurfaceHolder;)V

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->semGetWallpaperFlags()I

    move-result v2

    const-string v0, "ImageWallpaper_"

    const-string v1, "[Integrated]"

    invoke-static {v2, v0, v1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isSystemAndLock(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-static {v2, v0}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    iget v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->mWhich:I

    iget-object v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->mKeyguardWallpaperEventListener:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$1;

    check-cast v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    const/16 v4, 0x10

    invoke-static {v1, v4}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result v1

    iget-object v0, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mEventListeners:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->setShowForAllUsers(Z)V

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->setFixedSizeAllowed(Z)V

    iget v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->mWallpaperType:I

    if-eqz v1, :cond_7

    if-eq v1, v0, :cond_6

    const/4 v0, 0x3

    if-eq v1, v0, :cond_5

    const/4 v0, 0x4

    if-eq v1, v0, :cond_4

    const/4 v0, 0x5

    if-eq v1, v0, :cond_3

    const/16 v0, 0x8

    if-eq v1, v0, :cond_2

    const/16 v0, 0x3e8

    if-eq v1, v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "createEngine: Unknown wallpaper type = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->mWallpaperType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->createImageEngine(I)Lcom/android/systemui/wallpaper/engines/image/ImageEngine;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    new-instance v7, Lcom/android/systemui/wallpaper/engines/video/VideoSource;

    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getCurrentUserId()I

    move-result v4

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object v5, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    iget-object v6, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPluginWallpaper:Lcom/android/systemui/wallpaper/PluginWallpaper;

    const/4 v3, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/wallpaper/engines/video/VideoSource;-><init>(Landroid/content/Context;IIILcom/android/systemui/wallpaper/CoverWallpaper;Lcom/android/systemui/wallpaper/PluginWallpaper;)V

    new-instance v0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;

    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->mWallpaperEngineCallback:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;

    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object v2, v2, Lcom/android/systemui/wallpapers/ImageWallpaper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {v0, v7, v1, v2}, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;-><init>(Lcom/android/systemui/wallpaper/engines/video/VideoSource;Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/android/systemui/wallpaper/engines/gif/GifSource;

    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object v3, v3, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/wallpaper/engines/gif/GifSource;-><init>(Landroid/content/Context;ILcom/android/systemui/wallpaper/CoverWallpaper;)V

    new-instance v1, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;

    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->mWallpaperEngineCallback:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/wallpaper/engines/gif/GifEngine;-><init>(Lcom/android/systemui/wallpaper/engines/gif/GifSource;Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;)V

    move-object v0, v1

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;

    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->mWallpaperEngineCallback:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;)V

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;

    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->mWallpaperEngineCallback:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;

    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object v6, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    iget-object v7, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPluginWallpaper:Lcom/android/systemui/wallpaper/PluginWallpaper;

    invoke-static {v1}, Lcom/android/systemui/wallpapers/ImageWallpaper;->-$$Nest$fgetmSettingsHelper(Lcom/android/systemui/wallpapers/ImageWallpaper;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v8

    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object v9, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mSystemWallpaperColors:Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

    iget-object v10, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLongExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v11, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object v12, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    iget-object v13, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object v3, v0

    invoke-direct/range {v3 .. v13}, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;Lcom/android/systemui/wallpaper/CoverWallpaper;Lcom/android/systemui/wallpaper/PluginWallpaper;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/wallpaper/KeyguardWallpaper;Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto :goto_0

    :cond_6
    new-instance v0, Lcom/android/systemui/wallpaper/engines/theme/MotionEngine;

    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->mWallpaperEngineCallback:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/wallpaper/engines/theme/MotionEngine;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0, v2}, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->createImageEngine(I)Lcom/android/systemui/wallpaper/engines/image/ImageEngine;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    invoke-virtual {v0, p1}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->onCreate(Landroid/view/SurfaceHolder;)V

    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->mWakefulnessObserver:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$3;

    iget-object v0, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/wallpapers/ImageWallpaper$1;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$1;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper;Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8
    return-void
.end method

.method public final onDestroy()V
    .locals 7

    invoke-super {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onDestroy()V

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    iget v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->mWhich:I

    check-cast v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result v1

    iget-object v0, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mEventListeners:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCanvasEngineList:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->onDestroy()V

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->semGetWallpaperFlags()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isWatchFace(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isVirtualDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPluginWallpaper:Lcom/android/systemui/wallpaper/PluginWallpaper;

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPluginWallpaper:Lcom/android/systemui/wallpaper/PluginWallpaper;

    check-cast v1, Lcom/android/systemui/wallpaper/PluginWallpaperController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onWallpaperDestroyed: which = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PluginWallpaperController"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v2, v0, 0x1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    invoke-static {v0, v2}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/android/systemui/wallpaper/PluginWallpaperController;->getScreen(I)I

    move-result v2

    iget-object v4, v1, Lcom/android/systemui/wallpaper/PluginWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->getSourceWhich(I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/app/WallpaperManager;->getWallpaperId(I)I

    move-result v0

    const-string v4, "onWallpaperDestroyed: wallpaperId = "

    const-string v5, ", mWallpaperId["

    const-string v6, "] = "

    invoke-static {v0, v2, v4, v5, v6}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/systemui/wallpaper/PluginWallpaperController;->mWallpaperId:[I

    aget v6, v5, v2

    invoke-static {v6, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    aget v3, v5, v2

    if-eq v0, v3, :cond_4

    iget-object v1, v1, Lcom/android/systemui/wallpaper/PluginWallpaperController;->mWallpaperConsumers:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    aput v0, v5, v2

    :cond_4
    :goto_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->mWakefulnessObserver:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$3;

    iget-object v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/wallpapers/ImageWallpaper$2;

    invoke-direct {v2, v0, p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$2;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper;Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void
.end method

.method public final onDisplayStateChanged(Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->onDisplayStateChanged(Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;)V

    return-void
.end method

.method public final onGetScreenshot(Lcom/samsung/android/wallpaper/live/sdk/data/ScreenshotOptions;)Lcom/samsung/android/wallpaper/live/sdk/data/ScreenshotResults;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->onGetScreenshot(Lcom/samsung/android/wallpaper/live/sdk/data/ScreenshotOptions;)Lcom/samsung/android/wallpaper/live/sdk/data/ScreenshotResults;

    move-result-object p0

    return-object p0
.end method

.method public final onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    return-void
.end method

.method public final onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public final onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public final onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public final onSwitchDisplayChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->onSwitchDisplayChanged(Z)V

    return-void
.end method

.method public final onVisibilityChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->onVisibilityChanged(Z)V

    return-void
.end method

.method public final onWallpaperFlagsChanged(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->onWallpaperFlagsChanged(I)V

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->semGetWallpaperFlags()I

    move-result p1

    const-string v0, "ImageWallpaper_"

    const-string v1, "[Integrated]"

    invoke-static {p1, v0, v1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    invoke-virtual {v0, p1}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->onWhichChanged(I)V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result v0

    const/16 v1, 0x10

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    check-cast p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p1, v1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mEventListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->mKeyguardWallpaperEventListener:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$1;

    check-cast v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p1, v1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result p1

    iget-object v0, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mEventListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final shouldWaitForEngineShown()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->shouldWaitForEngineShown()Z

    move-result p0

    return p0
.end method

.method public final shouldZoomOutWallpaper()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
