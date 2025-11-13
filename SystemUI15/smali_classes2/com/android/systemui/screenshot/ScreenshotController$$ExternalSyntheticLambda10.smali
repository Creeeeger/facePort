.class public final synthetic Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/screenshot/AssistContentRequester$Callback;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/CompletableFuture;

.field public final synthetic f$1:Lcom/android/systemui/screenshot/ScreenshotData;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CompletableFuture;Lcom/android/systemui/screenshot/ScreenshotData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda10;->f$0:Ljava/util/concurrent/CompletableFuture;

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda10;->f$1:Lcom/android/systemui/screenshot/ScreenshotData;

    return-void
.end method


# virtual methods
.method public final onAssistContentAvailable(Landroid/app/assist/AssistContent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda10;->f$0:Ljava/util/concurrent/CompletableFuture;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/assist/AssistContent;->getWebUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "Screenshot"

    const-string v2, "handleScreenshot: mWebData is extracted from AssistContent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/systemui/screenshot/sep/SmartClipDataExtractor$WebData;

    invoke-virtual {p1}, Landroid/app/assist/AssistContent;->getWebUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda10;->f$1:Lcom/android/systemui/screenshot/ScreenshotData;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotData;->getPackageNameString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/screenshot/sep/SmartClipDataExtractor$WebData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
