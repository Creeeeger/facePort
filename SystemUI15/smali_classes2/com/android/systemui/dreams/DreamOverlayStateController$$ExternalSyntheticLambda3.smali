.class public final synthetic Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/dreams/DreamOverlayStateController;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/dreams/DreamOverlayStateController;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/dreams/DreamOverlayStateController;

    iput-object p2, p0, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/dreams/DreamOverlayStateController;

    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/Consumer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/dreams/DreamOverlayStateController;->notifyCallbacksLocked(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/dreams/DreamOverlayStateController;

    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "Callback must not be null. b/128895449"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda4;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mCallbacks:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mWeakReferenceFactory:Lcom/android/systemui/util/reference/WeakReferenceFactory;

    invoke-interface {v2, p0}, Lcom/android/systemui/util/reference/WeakReferenceFactory;->create(Ljava/lang/Object;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mComplications:Ljava/util/Collection;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;->onComplicationsChanged()V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/dreams/DreamOverlayStateController;

    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "Callback must not be null. b/128895449"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;

    if-eqz v1, :cond_3

    if-ne v1, p0, :cond_2

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
