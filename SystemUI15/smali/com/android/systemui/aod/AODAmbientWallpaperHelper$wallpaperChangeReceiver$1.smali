.class public final Lcom/android/systemui/aod/AODAmbientWallpaperHelper$wallpaperChangeReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/aod/AODAmbientWallpaperHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper$wallpaperChangeReceiver$1;->this$0:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "AODAmbientWallpaperHelper"

    const-string p2, "onReceive: action ACTION_WALLPAPER_CHANGED"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper$wallpaperChangeReceiver$1;->this$0:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    invoke-virtual {p1}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->updateWonderLandWallpaperState()V

    sget-boolean p1, Lcom/android/systemui/LsRune;->AOD_SUB_DISPLAY_LOCK:Z

    if-nez p1, :cond_0

    sget-boolean p1, Lcom/android/systemui/LsRune;->AOD_SUB_DISPLAY_COVER:Z

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper$wallpaperChangeReceiver$1;->this$0:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    iget-object p1, p1, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->keyguardViewMediatorLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p0, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper$wallpaperChangeReceiver$1;->this$0:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    invoke-virtual {p0}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isAODAmbientWallpaperMode()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setWallpaperSupportsAmbientModeForFold(Z)V

    :cond_1
    return-void
.end method
