.class public final Lcom/android/systemui/screenshot/AssistContentRequester$AssistDataReceiver;
.super Landroid/app/IAssistDataReceiver$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCallbackKey:Ljava/lang/Object;

.field public final mParentRef:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/AssistContentRequester$Callback;Lcom/android/systemui/screenshot/AssistContentRequester;)V
    .locals 2

    invoke-direct {p0}, Landroid/app/IAssistDataReceiver$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/AssistContentRequester$AssistDataReceiver;->mCallbackKey:Ljava/lang/Object;

    iget-object v1, p2, Lcom/android/systemui/screenshot/AssistContentRequester;->mPendingCallbacks:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/screenshot/AssistContentRequester$AssistDataReceiver;->mParentRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final onHandleAssistData(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "content"

    const-class v1, Landroid/app/assist/AssistContent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/assist/AssistContent;

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/AssistContentRequester$AssistDataReceiver;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/screenshot/AssistContentRequester;

    const-string v1, "AssistContentRequester"

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/systemui/screenshot/AssistContentRequester;->mPendingCallbacks:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/systemui/screenshot/AssistContentRequester$AssistDataReceiver;->mCallbackKey:Ljava/lang/Object;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/screenshot/AssistContentRequester$Callback;

    if-eqz p0, :cond_1

    new-instance v1, Lcom/android/systemui/screenshot/AssistContentRequester$AssistDataReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/screenshot/AssistContentRequester$AssistDataReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenshot/AssistContentRequester$Callback;Landroid/app/assist/AssistContent;)V

    iget-object p0, v0, Lcom/android/systemui/screenshot/AssistContentRequester;->mSystemInteractionExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    const-string p0, "Callback received after calling UI was disposed of"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string p0, "Callback received after Requester was collected"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public final onHandleAssistScreenshot(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method
