.class final Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel$updateBatteryInfoModel$1;
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

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel$updateBatteryInfoModel$1;->this$0:Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel$updateBatteryInfoModel$1;->this$0:Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->batteryInfo:Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;->getBatteryLeft()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;->setBatteryLeft(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel$updateBatteryInfoModel$1;->this$0:Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->batteryInfo:Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;->getBatteryRight()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;->setBatteryRight(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel$updateBatteryInfoModel$1;->this$0:Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->batteryInfo:Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;->getBatteryCradle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;->setBatteryCradle(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel$updateBatteryInfoModel$1;->this$0:Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->updateBatteryInfoBox:Landroidx/lifecycle/MutableLiveData;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
