.class Lcom/android/systemui/wallpaper/CoverWallpaperController$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/CoverWallpaperController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/CoverWallpaperController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController$1;->this$0:Lcom/android/systemui/wallpaper/CoverWallpaperController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserSwitchComplete(I)V
    .locals 4

    const-string v0, "onUserSwitchComplete, userId: "

    const-string v1, "CoverWallpaperController"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController$1;->this$0:Lcom/android/systemui/wallpaper/CoverWallpaperController;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mSmartCardController:Lcom/android/systemui/wallpaper/accessory/SmartCardController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onUserSwitchCompleted, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SmartCardController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    const/4 p1, 0x0

    invoke-virtual {p0, v2, v3, p1}, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->sendUpdateState(JZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "onUserSwitchComplete, e: "

    invoke-static {p1, p0, v1}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final onUserSwitching(I)V
    .locals 2

    const-string v0, "onUserSwitching, userId: "

    const-string v1, "CoverWallpaperController"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController$1;->this$0:Lcom/android/systemui/wallpaper/CoverWallpaperController;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mSmartCardController:Lcom/android/systemui/wallpaper/accessory/SmartCardController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onUserSwitching, "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmartCardController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "onUserSwitching, e: "

    invoke-static {p1, p0, v1}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final onUserUnlocked()V
    .locals 3

    const-string v0, "CoverWallpaperController"

    const-string v1, "onUserUnlocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController$1;->this$0:Lcom/android/systemui/wallpaper/CoverWallpaperController;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mSmartCardController:Lcom/android/systemui/wallpaper/accessory/SmartCardController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "SmartCardController"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->mainHandler:Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;-><init>(Lcom/android/systemui/wallpaper/accessory/SmartCardController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->mainHandler:Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->mainHandler:Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const v1, 0x134b17e

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
