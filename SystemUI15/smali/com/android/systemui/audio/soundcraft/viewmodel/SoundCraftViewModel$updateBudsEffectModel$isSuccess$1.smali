.class final Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel$updateBudsEffectModel$isSuccess$1;
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

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel$updateBudsEffectModel$isSuccess$1;->this$0:Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    check-cast p1, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->getConnectionState()Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_b

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->getConnectionState()Ljava/lang/Boolean;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel$updateBudsEffectModel$isSuccess$1;->this$0:Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->budsModel:Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    invoke-virtual {v1}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->getNoiseControlsList()Ljava/util/Set;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel$updateBudsEffectModel$isSuccess$1;->this$0:Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    iget-object v4, v3, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iput-object p1, v4, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->budsModel:Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    sget-object v4, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettingConstants;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettingConstants;

    iget-object v3, v3, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->getConnectionState()Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_1

    :cond_2
    move v5, v2

    :goto_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v5}, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettingConstants;->isBudsPluginConnected(Landroid/content/Context;Z)V

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->getNoiseControlsList()Ljava/util/Set;

    move-result-object v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel$updateBudsEffectModel$isSuccess$1;->this$0:Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    iget-object v3, v3, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object v3, v3, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->budsModel:Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    invoke-virtual {v3, v1}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->setNoiseControlsList(Ljava/util/Set;)V

    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->getEqualizerList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel$updateBudsEffectModel$isSuccess$1;->this$0:Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectModel:Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

    iput-object p1, v1, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->equalizerList:Ljava/util/List;

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel$updateBudsEffectModel$isSuccess$1;->this$0:Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->getAppRoutineModel()Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel$updateBudsEffectModel$isSuccess$1;->this$0:Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iput-object p1, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectModel:Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_5
    if-nez v0, :cond_6

    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel$updateBudsEffectModel$isSuccess$1;->this$0:Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    iget-object v0, p1, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    new-instance v1, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

    iget-object v3, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->budsModel:Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    invoke-virtual {v3}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->getEqualizerList()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object v3, p1, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->budsModel:Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    invoke-virtual {v3}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->getSpatialAudio()Ljava/lang/Boolean;

    move-result-object v7

    iget-object v3, p1, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->budsModel:Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    invoke-virtual {v3}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->getHeadTracking()Ljava/lang/Boolean;

    move-result-object v8

    iget-object v3, p1, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->budsModel:Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    invoke-virtual {v3}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->getVoiceBoost()Ljava/lang/Boolean;

    move-result-object v9

    iget-object p1, p1, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->budsModel:Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->getVolumeNormalization()Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v12}, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectModel:Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

    :cond_6
    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel$updateBudsEffectModel$isSuccess$1;->this$0:Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    iget-object p1, p1, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object p1, p1, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->budsModel:Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->getNoiseControlsList()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_8

    new-instance v0, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel$updateBudsEffectModel$isSuccess$1;->this$0:Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->budsModel:Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    invoke-virtual {v1}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->getWearingL()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_2

    :cond_7
    move v1, v2

    :goto_2
    const-string/jumbo v3, "wearing_l"

    invoke-direct {v0, v3, v1}, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;-><init>(Ljava/lang/String;Z)V

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel$updateBudsEffectModel$isSuccess$1;->this$0:Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    iget-object p1, p1, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object p1, p1, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->budsModel:Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->getNoiseControlsList()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_a

    new-instance v0, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel$updateBudsEffectModel$isSuccess$1;->this$0:Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->budsModel:Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    invoke-virtual {v1}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->getWearingR()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_9
    const-string/jumbo v1, "wearing_r"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;-><init>(Ljava/lang/String;Z)V

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel$updateBudsEffectModel$isSuccess$1;->this$0:Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->notifyChange()V

    goto :goto_4

    :cond_b
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel$updateBudsEffectModel$isSuccess$1;->this$0:Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    iget-object p1, p1, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object p1, p1, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->budsModel:Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->setConnectionState()V

    sget-object p1, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettingConstants;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettingConstants;

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel$updateBudsEffectModel$isSuccess$1;->this$0:Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2}, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettingConstants;->isBudsPluginConnected(Landroid/content/Context;Z)V

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel$updateBudsEffectModel$isSuccess$1;->this$0:Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->notifyChange()V

    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
