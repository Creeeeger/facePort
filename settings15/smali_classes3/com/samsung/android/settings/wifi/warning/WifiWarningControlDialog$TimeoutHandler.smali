.class public final Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog$TimeoutHandler;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog$TimeoutHandler;->this$0:Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog$TimeoutHandler;->this$0:Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->dismissProgressDialog()V

    return-void
.end method
