.class public final Lcom/android/systemui/screenshot/ScreenshotController$11;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ScreenshotController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController$11;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x6f

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$11;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    invoke-interface {p1, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return p3

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
