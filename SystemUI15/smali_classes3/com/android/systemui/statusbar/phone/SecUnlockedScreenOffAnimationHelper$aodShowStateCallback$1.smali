.class public final Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$aodShowStateCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$aodShowStateCallback$1;->this$0:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 6

    if-eqz p1, :cond_4

    const-string v0, "aod_show_state"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$aodShowStateCallback$1;->this$0:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->access$getSettingsHelper$p(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isAODShown()Z

    move-result p1

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->access$getSettingsHelper$p(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isAODShown()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->needUpdateSetLockScreenShown:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->deviceInteractive:Z

    const-string v3, "aodShowStateCallback.isAODShown="

    const-string v4, ", settingsHelper.isAODShown="

    const-string v5, ", needUpdateSetLockScreenShown="

    invoke-static {v3, v4, v5, p1, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " deviceInteractive="

    const-string v3, "UnlockedScreenOffAnimation"

    invoke-static {p1, v1, v0, v2, v3}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->deviceInteractive:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->aodAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    invoke-virtual {p1}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isAODFullScreenAndShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x3dcccccd    # 0.1f

    goto :goto_0

    :cond_1
    const v1, 0x3f19999a    # 0.6f

    :goto_0
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/LightRevealScrim;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, p1

    :goto_1
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setBehindScrimAlpha: mBehindAlpha="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " alpha=0.0"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ScrimController"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_3

    iput v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    iget-object p1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->needUpdateSetLockScreenShown:Z

    if-nez p1, :cond_4

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->needUpdateSetLockScreenShown:Z

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->access$getSettingsHelper$p(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isAODShown()Z

    move-result v0

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->updateSetLockScreenShown(Z)V

    :cond_4
    return-void
.end method
