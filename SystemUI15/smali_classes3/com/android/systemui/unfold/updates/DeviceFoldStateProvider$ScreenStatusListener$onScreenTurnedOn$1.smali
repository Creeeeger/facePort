.class final Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener$onScreenTurnedOn$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener$onScreenTurnedOn$1;->this$0:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener$onScreenTurnedOn$1;->this$0:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    iget-boolean v1, v0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->isFolded:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->isUnfoldHandled:Z

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->outputListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/unfold/updates/FoldStateProvider$FoldUpdatesListener;

    invoke-interface {v1}, Lcom/android/systemui/unfold/updates/FoldStateProvider$FoldUpdatesListener;->onUnfoldedScreenAvailable()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener$onScreenTurnedOn$1;->this$0:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->isUnfoldHandled:Z

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
