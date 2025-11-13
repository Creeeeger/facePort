.class public final synthetic Lcom/android/systemui/screenshot/AssistContentRequester$AssistDataReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenshot/AssistContentRequester$Callback;

.field public final synthetic f$1:Landroid/app/assist/AssistContent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/AssistContentRequester$Callback;Landroid/app/assist/AssistContent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/AssistContentRequester$AssistDataReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenshot/AssistContentRequester$Callback;

    iput-object p2, p0, Lcom/android/systemui/screenshot/AssistContentRequester$AssistDataReceiver$$ExternalSyntheticLambda0;->f$1:Landroid/app/assist/AssistContent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/AssistContentRequester$AssistDataReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenshot/AssistContentRequester$Callback;

    iget-object p0, p0, Lcom/android/systemui/screenshot/AssistContentRequester$AssistDataReceiver$$ExternalSyntheticLambda0;->f$1:Landroid/app/assist/AssistContent;

    check-cast v0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda10;

    invoke-virtual {v0, p0}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda10;->onAssistContentAvailable(Landroid/app/assist/AssistContent;)V

    return-void
.end method
