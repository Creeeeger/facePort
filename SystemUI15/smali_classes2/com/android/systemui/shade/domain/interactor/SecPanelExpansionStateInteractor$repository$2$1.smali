.class final synthetic Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$repository$2$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-string v5, "notify(I)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;

    const-string v4, "notify"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateChangeEvent;

    invoke-direct {v0, p1}, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateChangeEvent;-><init>(I)V

    iget-object v1, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;->expansionStateListeners$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateListener;

    invoke-interface {v2, v0}, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateListener;->onPanelExpansionStateChanged(Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateChangeEvent;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;->uiOffloadThread$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$notify$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$notify$2;-><init>(Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->execute(Ljava/lang/Runnable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
