.class public final Lcom/android/systemui/volume/store/StoreInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public disposable:Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;

.field public final mainThreadHandler$delegate:Lkotlin/Lazy;

.field public final stateObserver:Lcom/samsung/systemui/splugins/volume/VolumeObserver;

.field public store:Lcom/android/systemui/volume/store/VolumePanelStore;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/android/systemui/volume/store/StoreInteractor;-><init>(Lcom/samsung/systemui/splugins/volume/VolumeObserver;Lcom/android/systemui/volume/store/VolumePanelStore;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/systemui/splugins/volume/VolumeObserver;Lcom/android/systemui/volume/store/VolumePanelStore;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelState;",
            ">;",
            "Lcom/android/systemui/volume/store/VolumePanelStore;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/store/StoreInteractor;->stateObserver:Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    iput-object p2, p0, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    sget-object p1, Lcom/android/systemui/volume/store/StoreInteractor$mainThreadHandler$2;->INSTANCE:Lcom/android/systemui/volume/store/StoreInteractor$mainThreadHandler$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/store/StoreInteractor;->mainThreadHandler$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/systemui/splugins/volume/VolumeObserver;Lcom/android/systemui/volume/store/VolumePanelStore;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/store/StoreInteractor;-><init>(Lcom/samsung/systemui/splugins/volume/VolumeObserver;Lcom/android/systemui/volume/store/VolumePanelStore;)V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/store/StoreInteractor;->disposable:Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/volume/VolumeDisposable;->dispose()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/volume/store/StoreInteractor;->disposable:Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;

    return-void
.end method

.method public final observeStore()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/store/StoreInteractor;->stateObserver:Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/systemui/volume/store/VolumePanelStore;->subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;

    iput-object v0, p0, Lcom/android/systemui/volume/store/StoreInteractor;->disposable:Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;

    :cond_1
    return-void
.end method

.method public final sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/android/systemui/volume/store/StoreInteractor;->mainThreadHandler$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/volume/store/StoreInteractor$sendAction$1;

    invoke-direct {p2, v0, p1}, Lcom/android/systemui/volume/store/StoreInteractor$sendAction$1;-><init>(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/store/VolumePanelStore;->onChanged(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    :goto_0
    return-void
.end method
