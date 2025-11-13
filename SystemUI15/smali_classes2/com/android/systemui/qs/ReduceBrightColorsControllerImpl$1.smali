.class public final Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl$1;->this$0:Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object p2, p0, Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl$1;->this$0:Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl;

    iget-object p2, p2, Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter p2

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl$1;->this$0:Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "reduce_bright_colors_activated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl$1;->this$0:Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl;

    iget-object p1, p0, Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl;->mManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1}, Landroid/hardware/display/ColorDisplayManager;->isReduceBrightColorsActivated()Z

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/ReduceBrightColorsController$Listener;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/ReduceBrightColorsController$Listener;->onActivated(Z)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    monitor-exit p2

    return-void

    :goto_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
