.class final Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$ActionPendingIntentCancellationHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# static fields
.field public static sUiOffloadThread:Lcom/android/systemui/UiOffloadThread;


# instance fields
.field public final mCancelListener:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$ActionPendingIntentCancellationHandler$1;

.field public final mOnCancelledCallback:Ljava/util/function/Consumer;

.field public final mPendingIntent:Landroid/app/PendingIntent;

.field public final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;Landroid/view/View;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PendingIntent;",
            "Landroid/view/View;",
            "Ljava/util/function/Consumer<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$ActionPendingIntentCancellationHandler$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$ActionPendingIntentCancellationHandler$1;-><init>(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$ActionPendingIntentCancellationHandler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$ActionPendingIntentCancellationHandler;->mCancelListener:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$ActionPendingIntentCancellationHandler$1;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$ActionPendingIntentCancellationHandler;->mPendingIntent:Landroid/app/PendingIntent;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$ActionPendingIntentCancellationHandler;->mView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$ActionPendingIntentCancellationHandler;->mOnCancelledCallback:Ljava/util/function/Consumer;

    return-void
.end method

.method public static getUiOffloadThread()Lcom/android/systemui/UiOffloadThread;
    .locals 2

    sget-object v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$ActionPendingIntentCancellationHandler;->sUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/UiOffloadThread;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/UiOffloadThread;

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$ActionPendingIntentCancellationHandler;->sUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$ActionPendingIntentCancellationHandler;->sUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    return-object v0
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$ActionPendingIntentCancellationHandler;->getUiOffloadThread()Lcom/android/systemui/UiOffloadThread;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$ActionPendingIntentCancellationHandler$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$ActionPendingIntentCancellationHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$ActionPendingIntentCancellationHandler;I)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/UiOffloadThread;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$ActionPendingIntentCancellationHandler;->getUiOffloadThread()Lcom/android/systemui/UiOffloadThread;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$ActionPendingIntentCancellationHandler$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$ActionPendingIntentCancellationHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$ActionPendingIntentCancellationHandler;I)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/UiOffloadThread;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$ActionPendingIntentCancellationHandler;->mView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$ActionPendingIntentCancellationHandler;->mView:Landroid/view/View;

    const v1, 0x7f0a08d6

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$ActionPendingIntentCancellationHandler;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$ActionPendingIntentCancellationHandler;->getUiOffloadThread()Lcom/android/systemui/UiOffloadThread;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$ActionPendingIntentCancellationHandler$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$ActionPendingIntentCancellationHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$ActionPendingIntentCancellationHandler;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
