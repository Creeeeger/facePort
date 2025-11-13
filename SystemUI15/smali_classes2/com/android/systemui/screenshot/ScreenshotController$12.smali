.class public final Lcom/android/systemui/screenshot/ScreenshotController$12;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ScreenshotController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController$12;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController$12;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    iget-object v0, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$12;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
