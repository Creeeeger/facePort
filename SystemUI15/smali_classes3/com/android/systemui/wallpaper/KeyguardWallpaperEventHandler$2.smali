.class Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    const-string p2, "KeyguardWallpaperEventHandler"

    const-string v0, "onBiometricError()"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p3, p2, :cond_0

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    const/4 p1, -0x1

    const/16 p2, 0x2d8

    const/4 p3, 0x0

    invoke-static {p0, p2, p3, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->-$$Nest$msendMessage(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public final onDlsViewModeChanged(I)V
    .locals 2

    const-string v0, "onDlsViewModeChanged mode: "

    const-string v1, "KeyguardWallpaperEventHandler"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    const/16 v0, 0x2dc

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->-$$Nest$msendMessage(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;I)V

    return-void
.end method

.method public final onKeyguardBouncerFullyShowingChanged(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onKeyguardBouncerFullyShowingChanged(), bouncer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardWallpaperEventHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    const/16 v0, 0x2d4

    const/4 v1, -0x1

    invoke-static {p0, v0, p1, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->-$$Nest$msendMessage(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;I)V

    return-void
.end method

.method public final onPackageAdded(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_FESTIVAL_WALLPAPER:Z

    if-eqz v0, :cond_0

    const-string v0, "com.samsung.android.festivalwallpaper"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.intent.action.LAUNCH_FESTIVAL_WALLPAPER"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->-$$Nest$fgetmContext(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "com.samsung.android.permission.SET_FESTIVAL_WALLPAPER"

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onUserSwitchComplete(I)V
    .locals 2

    const-string v0, "onUserSwitchComplete(), userId: "

    const-string v1, "KeyguardWallpaperEventHandler"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    const/16 v0, 0x2d1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->-$$Nest$msendMessage(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;I)V

    return-void
.end method
