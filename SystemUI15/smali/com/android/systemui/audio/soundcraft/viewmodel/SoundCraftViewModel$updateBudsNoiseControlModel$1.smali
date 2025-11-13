.class final Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel$updateBudsNoiseControlModel$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel$updateBudsNoiseControlModel$1;->this$0:Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/util/Set;

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel$updateBudsNoiseControlModel$1;->this$0:Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->budsModel:Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->setNoiseControlsList(Ljava/util/Set;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "noiseControl state changed newList="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SoundCraft.SoundCraftViewModel"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel$updateBudsNoiseControlModel$1;->this$0:Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->updateNoiseControlBox:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->hasNoiseControl()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
