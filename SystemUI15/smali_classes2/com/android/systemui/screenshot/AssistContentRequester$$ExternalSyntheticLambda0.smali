.class public final synthetic Lcom/android/systemui/screenshot/AssistContentRequester$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenshot/AssistContentRequester;

.field public final synthetic f$1:Lcom/android/systemui/screenshot/AssistContentRequester$Callback;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/AssistContentRequester;Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda10;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/AssistContentRequester$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenshot/AssistContentRequester;

    iput-object p2, p0, Lcom/android/systemui/screenshot/AssistContentRequester$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/screenshot/AssistContentRequester$Callback;

    iput p3, p0, Lcom/android/systemui/screenshot/AssistContentRequester$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/screenshot/AssistContentRequester$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenshot/AssistContentRequester;

    iget-object v1, p0, Lcom/android/systemui/screenshot/AssistContentRequester$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/screenshot/AssistContentRequester$Callback;

    iget p0, p0, Lcom/android/systemui/screenshot/AssistContentRequester$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/screenshot/AssistContentRequester;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    new-instance v3, Lcom/android/systemui/screenshot/AssistContentRequester$AssistDataReceiver;

    invoke-direct {v3, v1, v0}, Lcom/android/systemui/screenshot/AssistContentRequester$AssistDataReceiver;-><init>(Lcom/android/systemui/screenshot/AssistContentRequester$Callback;Lcom/android/systemui/screenshot/AssistContentRequester;)V

    iget-object v4, v0, Lcom/android/systemui/screenshot/AssistContentRequester;->mPackageName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/systemui/screenshot/AssistContentRequester;->mAttributionTag:Ljava/lang/String;

    invoke-interface {v2, v3, p0, v4, v0}, Landroid/app/IActivityTaskManager;->requestAssistDataForTask(Landroid/app/IAssistDataReceiver;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    check-cast v1, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda10;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda10;->onAssistContentAvailable(Landroid/app/assist/AssistContent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requesting assist content failed for task: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AssistContentRequester"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
