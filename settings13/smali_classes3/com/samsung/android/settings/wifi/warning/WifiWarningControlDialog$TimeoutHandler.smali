.class Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog$TimeoutHandler;
.super Landroid/os/Handler;
.source "WifiWarningControlDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeoutHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;Landroid/os/Looper;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog$TimeoutHandler;->this$0:Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;

    .line 372
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 385
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog$TimeoutHandler;->this$0:Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->dismissProgressDialog()V

    return-void
.end method

.method startTimer(J)V
    .locals 1

    const/4 v0, 0x0

    .line 376
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method stopTimer()V
    .locals 1

    const/4 v0, 0x0

    .line 380
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
