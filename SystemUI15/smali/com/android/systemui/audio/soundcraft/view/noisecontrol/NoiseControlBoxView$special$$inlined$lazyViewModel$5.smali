.class public final Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$5;
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
.field final synthetic $this_lazyViewModel:Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$5;->$this_lazyViewModel:Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    sget-object p0, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;->INSTANCE:Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;

    sget-object v0, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftLocalViewModelStoreOwner;->INSTANCE:Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftLocalViewModelStoreOwner;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftLocalViewModelStoreOwner;->current:Landroidx/lifecycle/ViewModelStoreOwner;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;

    const-class v1, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/ActiveNoiseCancelingViewModel;

    invoke-static {p0, v0, v0, v1}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$2$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
