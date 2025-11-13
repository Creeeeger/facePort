.class public abstract synthetic Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$2$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static m(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;->createDaggerViewModelFactory(Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object p0

    invoke-static {p2, p3, p0}, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;->get(Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;Ljava/lang/Class;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    return-object p0
.end method
