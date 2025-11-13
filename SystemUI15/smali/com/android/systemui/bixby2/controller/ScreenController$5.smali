.class Lcom/android/systemui/bixby2/controller/ScreenController$5;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bixby2/controller/ScreenController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/bixby2/controller/ScreenController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/ScreenController$5;->this$0:Lcom/android/systemui/bixby2/controller/ScreenController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceive() : action : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "com.samsung.android.bixby.intent.action.CLIENT_VIEW_STATE_UPDATED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.samsung.android.systemui.screenshot.SCREENSHOT_URI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/ScreenController$5;->this$0:Lcom/android/systemui/bixby2/controller/ScreenController;

    const-string v0, "contentUri"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/systemui/bixby2/controller/ScreenController;->-$$Nest$fputmScreenshotUri(Lcom/android/systemui/bixby2/controller/ScreenController;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onReceive() : mScreenshotUri : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/bixby2/controller/ScreenController$5;->this$0:Lcom/android/systemui/bixby2/controller/ScreenController;

    invoke-static {p2}, Lcom/android/systemui/bixby2/controller/ScreenController;->-$$Nest$fgetmScreenshotUri(Lcom/android/systemui/bixby2/controller/ScreenController;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/ScreenController$5;->this$0:Lcom/android/systemui/bixby2/controller/ScreenController;

    invoke-static {p0}, Lcom/android/systemui/bixby2/controller/ScreenController;->-$$Nest$fputmIsScreenshotUriReceived(Lcom/android/systemui/bixby2/controller/ScreenController;)V

    goto :goto_0

    :cond_1
    const-string p1, "com.samsung.android.bixby.intent.extra.VIEW_STATE"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    const-string p1, "Bixby View Attached"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/ScreenController$5;->this$0:Lcom/android/systemui/bixby2/controller/ScreenController;

    invoke-static {p0, p2}, Lcom/android/systemui/bixby2/controller/ScreenController;->-$$Nest$fputmCurBixbyState(Lcom/android/systemui/bixby2/controller/ScreenController;I)V

    goto :goto_0

    :cond_2
    const-string p1, "Bixby View Detached"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/ScreenController$5;->this$0:Lcom/android/systemui/bixby2/controller/ScreenController;

    invoke-static {p0, v0}, Lcom/android/systemui/bixby2/controller/ScreenController;->-$$Nest$fputmCurBixbyState(Lcom/android/systemui/bixby2/controller/ScreenController;I)V

    :goto_0
    return-void
.end method
