.class final synthetic Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor$repository$2$1;
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

    const-string v5, "notify(Z)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;

    const-string v4, "notify"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateChangeEvent;

    invoke-direct {v0, p1}, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateChangeEvent;-><init>(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "notify: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, v0, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateChangeEvent;->expanded:Z

    const-string v1, "SecQSExpansionStateInteractor"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;->expansionStateListeners$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateListener;

    check-cast p1, Lcom/android/systemui/qs/bar/VolumeSeekBar;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean v0, p1, Lcom/android/systemui/qs/bar/VolumeSeekBar;->isShowing:Z

    const-string v1, "[QP volume] onQSExpansionStateChanged isShowing = "

    const-string v2, "VolumeSeekBar"

    invoke-static {v1, v2, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p1, Lcom/android/systemui/qs/bar/VolumeSeekBar;->volumeManager:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->updateCurrentVolume()V

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
