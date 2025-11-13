.class Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog$TimeoutHandler;
.super Landroid/os/Handler;
.source "ProfileShareCasterDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimeoutHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog$TimeoutHandler;->this$0:Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 217
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "ProfileShareCasterDialog"

    const-string v0, "Time out! 20000"

    .line 219
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog$TimeoutHandler;->this$0:Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->-$$Nest$mdestroyDialog(Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;)V

    :goto_0
    return-void
.end method

.method start()V
    .locals 3

    const/4 v0, 0x0

    .line 209
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ProfileShareCasterDialog"

    const-string v2, "timer start"

    .line 210
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x4e20

    .line 211
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
