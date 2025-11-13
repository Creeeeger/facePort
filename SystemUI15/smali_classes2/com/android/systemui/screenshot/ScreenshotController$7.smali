.class public final Lcom/android/systemui/screenshot/ScreenshotController$7;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ScreenshotController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController$7;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hideSharedElements()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$7;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->finishDismiss()V

    return-void
.end method

.method public final isReturnTransitionAllowed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onFinish()V
    .locals 0

    return-void
.end method
