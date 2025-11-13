.class public final Lcom/android/systemui/subscreen/SubScreenQSEventHandler$6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/window/OnBackAnimationCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$6;->this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$6;->this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    invoke-static {p0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->-$$Nest$fgetmSubScreenQsWindowViewSupplier(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)Ljava/util/function/Supplier;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method
