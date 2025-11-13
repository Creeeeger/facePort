.class public final Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy$addPredictiveBackListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic $onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

.field public final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;Landroid/window/OnBackInvokedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy$addPredictiveBackListener$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy$addPredictiveBackListener$1;->$onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    sget p1, Lcom/android/systemui/log/DebugLogger;->$r8$clinit:I

    const-class p1, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy$addPredictiveBackListener$1;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy$addPredictiveBackListener$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;

    iget-object p1, p1, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;->view:Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->findOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy$addPredictiveBackListener$1;->$onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    invoke-interface {p1, v0, p0}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    :cond_0
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/android/systemui/log/DebugLogger;->$r8$clinit:I

    const-class v0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy$addPredictiveBackListener$1;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/View;->findOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy$addPredictiveBackListener$1;->$onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    invoke-interface {p1, p0}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    :cond_0
    return-void
.end method
