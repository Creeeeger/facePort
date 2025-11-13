.class public final Lcom/android/systemui/statusbar/NotificationShelfManager$updateRunnable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic $runnable:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/NotificationShelfManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/NotificationShelfManager;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager$updateRunnable$1;->this$0:Lcom/android/systemui/statusbar/NotificationShelfManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelfManager$updateRunnable$1;->$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager$updateRunnable$1;->this$0:Lcom/android/systemui/statusbar/NotificationShelfManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationShelfManager;->shelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager$updateRunnable$1;->$runnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
