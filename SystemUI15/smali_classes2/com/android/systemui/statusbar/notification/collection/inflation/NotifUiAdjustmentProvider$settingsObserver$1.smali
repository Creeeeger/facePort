.class public final Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider$settingsObserver$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider$settingsObserver$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider$settingsObserver$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;->updateSnoozeEnabled()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider$settingsObserver$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;->dirtyListeners:Lcom/android/systemui/util/ListenerSet;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method
