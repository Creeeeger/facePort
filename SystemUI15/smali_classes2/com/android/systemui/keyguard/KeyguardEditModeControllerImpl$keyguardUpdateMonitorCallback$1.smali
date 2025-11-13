.class public final Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$keyguardUpdateMonitorCallback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyguardBouncerFullyShowingChanged(Z)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isShowEditorRequested:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onKeyguardBouncerFullyShowingChanged editorRequested="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " bouncerIsFullyShowing="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardEditModeController"

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isShowEditorRequested:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->wallpaperCardView:Landroidx/cardview/widget/CardView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    const-string/jumbo v0, "samsung.android.wallpaper.resume"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Landroid/app/WallpaperManager;->semSendWallpaperCommand(ILjava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isShowEditorRequested:Z

    :cond_1
    return-void
.end method
