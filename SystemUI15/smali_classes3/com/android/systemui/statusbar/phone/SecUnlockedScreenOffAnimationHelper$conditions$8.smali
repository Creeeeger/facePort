.class final Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$8;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$8;->this$0:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$8;->this$0:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->access$getRotation(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$8;->this$0:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->access$getSettingsHelper$p(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isLockScreenRotationAllowed()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$8;->this$0:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->access$getSettingsHelper$p(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isRotationLocked()Z

    move-result v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    if-nez v0, :cond_4

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$8;->this$0:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isVideoWallpaper(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$8;->this$0:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->pluginLockMediatorLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->isRotateMenuHide()Z

    move-result p0

    if-nez p0, :cond_4

    :cond_2
    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    const/4 p0, 0x2

    if-ne v0, p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
