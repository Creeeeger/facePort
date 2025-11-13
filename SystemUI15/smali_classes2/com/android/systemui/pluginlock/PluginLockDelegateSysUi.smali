.class public Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager$Callback;


# static fields
.field public static final TAG:Ljava/lang/String; = "PluginLockDelegateSysUi"


# instance fields
.field private final mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

.field private mPluginLockInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;


# direct methods
.method public static synthetic $r8$lambda$4S51oY8BgCr9KUmYq4qmcVqAaWc(Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->lambda$setDynamicLockData$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q1WzPYIhaYrd0w9bzMG0CBAi0oA(Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->lambda$updateDynamicLockData$1(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/pluginlock/PluginLockMediator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    return-void
.end method

.method private getPrintableHints(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, p1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNextLine()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "</Version>"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "</Which>"

    const-string v4, "</FontColor>"

    if-nez v2, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setDynamicLockData$0(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->setDynamicLockDataInternal(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$updateDynamicLockData$1(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->updateDynamicLockData(Ljava/lang/String;)V

    return-void
.end method

.method private setDynamicLockDataInternal(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->setDynamicLockData(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mPluginLockInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-interface {p1, p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->setPluginLockItem(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    return-void
.end method


# virtual methods
.method public dispatchEvent(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dispatchEvent() event: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockDelegateSysUi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "action_data_clear"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->onDataCleared()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getDynamicLockData()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public goToLockedShade()V
    .locals 2

    const-string v0, "PluginLockDelegateSysUi"

    const-string v1, "goToLockedShade"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->goToLockedShade()V

    return-void
.end method

.method public isSecure()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->isSecure()Z

    move-result p0

    return p0
.end method

.method public makeExpandedInvisible()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->makeExpandedInvisible()V

    return-void
.end method

.method public onLaunchTransitionFadingEnded()V
    .locals 0

    return-void
.end method

.method public requestDismissKeyguard(Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requestDismissKeyguard() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockDelegateSysUi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->requestDismissKeyguard(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public setBiometricRecognition(Z)V
    .locals 2

    const-string v0, "PluginLockDelegateSysUi"

    const-string/jumbo v1, "setBiometricRecognition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->updateBiometricRecognition(Z)V

    :cond_0
    return-void
.end method

.method public setDynamicLockData(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "setDynamicLockData : "

    const-string v1, "PluginLockDelegateSysUi"

    invoke-static {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string/jumbo p0, "wrong request"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->setDynamicLockDataInternal(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public setLockscreenTimer(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setLockscreenTimer() sec: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockDelegateSysUi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/pluginlock/PluginLockMediator;->setLockscreenTimer(J)V

    return-void
.end method

.method public setPluginLockInstanceState(ILcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mPluginLockInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->setViewMode(I)V

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/pluginlock/PluginLockMediator;->setInstanceState(ILcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    :cond_0
    return-void
.end method

.method public setPluginLockWallpaper(IILjava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "setPluginLockWallpaper() wallpaperType:"

    const-string v1, "PluginLockDelegateSysUi"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/pluginlock/PluginLockMediator;->setPluginWallpaper(IILjava/lang/String;)V

    return-void
.end method

.method public setPluginWallpaper(IIILjava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "setPluginWallpaper() screen: "

    const-string v1, ", wallpaperType:"

    const-string v2, "PluginLockDelegateSysUi"

    invoke-static {p1, p2, v0, v1, v2}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/systemui/pluginlock/PluginLockMediator;->setPluginWallpaper(IIILjava/lang/String;)V

    return-void
.end method

.method public setPluginWallpaper(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string/jumbo v0, "setPluginWallpaper() screen: "

    const-string v1, ", wallpaperType:"

    const-string v2, ", iCrops = "

    invoke-static {p1, p2, v0, v1, v2}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PluginLockDelegateSysUi"

    invoke-static {v0, p5, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/systemui/pluginlock/PluginLockMediator;->setPluginWallpaper(IIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPluginWallpaperHints(ILjava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "setPluginWallpaperHints() screen: "

    const-string v1, ", hints: "

    invoke-static {p1, v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->getPrintableHints(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginLockDelegateSysUi"

    invoke-static {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/pluginlock/PluginLockMediator;->setPluginWallpaperHint(ILjava/lang/String;)V

    return-void
.end method

.method public setRotationAllowed(Z)V
    .locals 0

    return-void
.end method

.method public setScreenOrientation(ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/pluginlock/PluginLockMediator;->setScreenOrientation(ZZ)V

    :cond_0
    return-void
.end method

.method public setTimeOut(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->updateOverlayUserTimeout(Z)V

    return-void
.end method

.method public setViewMode(I)V
    .locals 2

    const-string/jumbo v0, "setViewMode : "

    const-string v1, "PluginLockDelegateSysUi"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->onViewModeChanged(I)V

    :cond_0
    return-void
.end method

.method public setWallpaperHints(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "setWallpaperHints() : "

    const-string v1, "PluginLockDelegateSysUi"

    invoke-static {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->setPluginWallpaperHint(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateDynamicLockData(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getCurrentScreenType()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateDynamicLockData() screenType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dynamicLockData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginLockDelegateSysUi"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string/jumbo p0, "updateDynamicLockData() wrong request"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string/jumbo p1, "updateDynamicLockData() skip"

    invoke-static {v2, p1, p0}, Lcom/android/systemui/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->updateDynamicLockData(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public updateWindowSecureState(Z)V
    .locals 2

    const-string/jumbo v0, "updateWindowSecureState : "

    const-string v1, "PluginLockDelegateSysUi"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->updateWindowSecureState(Z)V

    :cond_0
    return-void
.end method

.method public userActivity()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->onUserActivity()V

    return-void
.end method
