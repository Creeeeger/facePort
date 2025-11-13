.class public final Lcom/android/systemui/screenshot/ui/ScreenshotShelfView$onFinishInflate$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView$onFinishInflate$1;->this$0:Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView$onFinishInflate$1;->this$0:Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;->userInteractionCallback:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
