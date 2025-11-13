.class public final Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;

    invoke-direct {v0}, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;-><init>()V

    sput-object v0, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;->INSTANCE:Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDaggerViewModelFactory(Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;)Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 1

    instance-of v0, p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static get(Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;Ljava/lang/Class;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModel;
    .locals 7

    if-eqz p2, :cond_0

    new-instance v6, Landroidx/lifecycle/ViewModelProvider;

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;->viewModelStore:Lcom/android/systemui/audio/soundcraft/di/vm/SoundCraftViewModelStore;

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    move-object v0, v6

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_0
    new-instance v6, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v6, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    :goto_0
    invoke-virtual {v6, p1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    return-object p0
.end method
