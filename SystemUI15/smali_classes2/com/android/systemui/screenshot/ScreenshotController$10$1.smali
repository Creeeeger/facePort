.class public final Lcom/android/systemui/screenshot/ScreenshotController$10$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/screenshot/ScreenshotController$10;

.field public final synthetic val$rect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ScreenshotController$10;Landroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController$10$1;->this$1:Lcom/android/systemui/screenshot/ScreenshotController$10;

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotController$10$1;->val$rect:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController$10$1;->this$1:Lcom/android/systemui/screenshot/ScreenshotController$10;

    iget-object v0, v0, Lcom/android/systemui/screenshot/ScreenshotController$10;->val$bundle:Landroid/os/Bundle;

    const-string v1, "rect"

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotController$10$1;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$10$1;->this$1:Lcom/android/systemui/screenshot/ScreenshotController$10;

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController$10;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotController$10;->val$screenshotData:Lcom/android/systemui/screenshot/ScreenshotData;

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotController$10;->val$finisher:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$10;->val$requestCallback:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/screenshot/ScreenshotController;->handleScreenshot(Lcom/android/systemui/screenshot/ScreenshotData;Ljava/util/function/Consumer;Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;)V

    return-void
.end method
