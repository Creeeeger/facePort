.class public final Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCallback:Lcom/android/systemui/charging/WirelessChargingAnimation$Callback;

.field public final mHandler:Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView$1;

.field public mNextView:Lcom/android/systemui/charging/WirelessChargingLayout;

.field public final mParams:Landroid/view/WindowManager$LayoutParams;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public mView:Lcom/android/systemui/charging/WirelessChargingLayout;

.field public mWM:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;IILcom/android/systemui/charging/WirelessChargingAnimation$Callback;ZLcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput-object p5, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mCallback:Lcom/android/systemui/charging/WirelessChargingAnimation$Callback;

    new-instance p5, Lcom/android/systemui/charging/WirelessChargingLayout;

    move-object v1, p5

    move-object v2, p1

    move v3, p3

    move v4, p4

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/charging/WirelessChargingLayout;-><init>(Landroid/content/Context;IIZLcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;)V

    iput-object p5, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mNextView:Lcom/android/systemui/charging/WirelessChargingLayout;

    iput-object p8, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    const/4 p1, -0x1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 p1, -0x3

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 p1, 0x7d9

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const-string p1, "Charging Animation"

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p1, 0x3

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/16 p1, 0x18

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    if-nez p2, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Can\'t display wireless animation on a thread that has not called Looper.prepare()"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance p1, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView$1;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p2, p3}, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView$1;-><init>(Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mHandler:Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView$1;

    return-void
.end method


# virtual methods
.method public final handleHide()V
    .locals 4

    sget-boolean v0, Lcom/android/systemui/charging/WirelessChargingAnimation;->DEBUG:Z

    const-string v1, "WirelessChargingView"

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HANDLE HIDE: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mView:Lcom/android/systemui/charging/WirelessChargingLayout;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mView:Lcom/android/systemui/charging/WirelessChargingLayout;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "REMOVE! "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mView:Lcom/android/systemui/charging/WirelessChargingLayout;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mCallback:Lcom/android/systemui/charging/WirelessChargingAnimation$Callback;

    if-eqz v0, :cond_2

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$7;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$7;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    const/4 v1, 0x0

    const-string v2, "CentralSurfaces"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->setRequestTopUi(Ljava/lang/String;Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mView:Lcom/android/systemui/charging/WirelessChargingLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mView:Lcom/android/systemui/charging/WirelessChargingLayout;

    :cond_4
    return-void
.end method

.method public final hide(J)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mHandler:Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView$1;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-boolean v2, Lcom/android/systemui/charging/WirelessChargingAnimation;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HIDE: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "WirelessChargingView"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
