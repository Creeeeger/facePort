.class public final Lcom/android/systemui/doze/PluginAODManager$6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/aod/PluginAOD$UICallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/doze/PluginAODManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/PluginAODManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager$6;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKeyguardOrientation()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$6;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    check-cast p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->provider:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;->lpSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager$LayoutParams;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    :goto_0
    return v0
.end method

.method public final getLockStarData(Z)Landroid/os/Bundle;
    .locals 2

    const-string v0, "getLockStarData() "

    const-string v1, "PluginAODManager"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$6;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    iget-object p0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    const-string v0, "LStar|PluginLockStarManager"

    if-nez p0, :cond_0

    const-string p0, "getAODLockStarData: no plugin"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getAODData(Z)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "getAODLockStarData: no method"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    return-object p0
.end method

.method public final isCaptureEnabled()Z
    .locals 2

    const-string v0, "PluginAODManager"

    const-string v1, "isCaptureEnabled()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$6;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mEmm:Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;

    iget-boolean p0, p0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;->isCaptureEnabled:Z

    return p0
.end method

.method public final isWonderLandAmbientWallpaperEnabled()Z
    .locals 6

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$6;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    iget-boolean v0, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isFolded:Z

    iget-boolean v1, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isMainWonderLandWallpaper:Z

    iget-boolean v2, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isSubWonderLandWallpaper:Z

    const-string v3, "isWonderLandAmbientWallpaper: isFolded="

    const-string v4, ", isMainWonderLandWallpaper="

    const-string v5, ", isSubWonderLandWallpaper="

    invoke-static {v3, v4, v5, v0, v1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AODAmbientWallpaperHelper"

    invoke-static {v0, v2, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isFolded:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isSubWonderLandWallpaper:Z

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isMainWonderLandWallpaper:Z

    goto :goto_0

    :cond_1
    iget-boolean p0, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isMainWonderLandWallpaper:Z

    :goto_0
    return p0
.end method

.method public final registerAODDoubleTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 2

    const-string v0, "PluginAODManager"

    const-string v1, "registerAODDoubleTouchListener() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$6;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mNotificationPanelViewController:Lcom/android/systemui/shade/ShadeViewController;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/shade/ShadeViewController;->registerAODDoubleTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public final setBottomArea(Landroid/view/View;)V
    .locals 2

    const-string v0, "PluginAODManager"

    const-string/jumbo v1, "setBottomArea() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$6;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mPanelViewControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomAreaViewController:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;->getView()Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-result-object p0

    instance-of v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->bottomDozeArea$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->bottomDozeArea$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final unregisterAODDoubleTouchListener()V
    .locals 2

    const-string v0, "PluginAODManager"

    const-string/jumbo v1, "unregisterAODDoubleTouchListener() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$6;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mNotificationPanelViewController:Lcom/android/systemui/shade/ShadeViewController;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/shade/ShadeViewController;->unregisterAODDoubleTouchListener()V

    :cond_0
    return-void
.end method
