.class public final Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineActionBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineActionBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineActionBuilder;

    invoke-direct {v0}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineActionBuilder;-><init>()V

    sput-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineActionBuilder;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineActionBuilder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildBudsActions(Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->spatialAudio:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    sget-object v2, Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/ActionParamCreator;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/ActionParamCreator;

    sget-object v3, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;->SPATIAL_AUDIO:Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;

    sget-object v4, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionUtil;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionUtil;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v5, p0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->headTracking:Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_1

    if-nez v5, :cond_1

    sget-object v1, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/SpatialAudioItem;->OFF:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/SpatialAudioItem;

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    if-nez v5, :cond_2

    sget-object v1, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/SpatialAudioItem;->SPATIAL_ONLY:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/SpatialAudioItem;

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    if-eqz v5, :cond_3

    sget-object v1, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/SpatialAudioItem;->SPATIAL_AND_HEAD_TRACKING:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/SpatialAudioItem;

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/SpatialAudioItem;->OFF:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/SpatialAudioItem;

    :goto_1
    invoke-virtual {v1}, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/SpatialAudioItem;->getPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1, v3, v1}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/ActionParamCreator;->putActionValue(Ljava/util/HashMap;Ljava/lang/String;Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->equalizerList:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/audio/soundcraft/model/common/Equalizer;

    invoke-virtual {v2}, Lcom/android/systemui/audio/soundcraft/model/common/Equalizer;->getState()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v1, Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/ActionParamCreator;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/ActionParamCreator;

    sget-object v3, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;->EQUALIZER:Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;

    iget-object v4, p0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->equalizerList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1, v3, v2}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/ActionParamCreator;->putActionValue(Ljava/util/HashMap;Ljava/lang/String;Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->voiceBoost:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget-object v2, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;->VOICE_BOOST:Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v2, v1}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/ActionParamCreator;->putActionValue(Ljava/util/HashMap;Ljava/lang/String;Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;Ljava/lang/String;)V

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->volumeNormalization:Ljava/lang/Boolean;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-object v1, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;->VOLUME_NORMALIZATION:Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, v1, p0}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/ActionParamCreator;->putActionValue(Ljava/util/HashMap;Ljava/lang/String;Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;Ljava/lang/String;)V

    :cond_7
    return-object v0

    :cond_8
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Collection contains no element matching the predicate."

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static buildPhoneActions(Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;)Ljava/util/HashMap;
    .locals 12

    const/4 v0, 0x1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->dolbyList:Ljava/util/List;

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v5, v4

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/audio/soundcraft/model/phone/Dolby;

    iget-boolean v6, v6, Lcom/android/systemui/audio/soundcraft/model/phone/Dolby;->state:Z

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v5, v0

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->dolbyOldList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v6, v4

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/audio/soundcraft/model/phone/Dolby;

    iget-boolean v7, v7, Lcom/android/systemui/audio/soundcraft/model/phone/Dolby;->state:Z

    if-eqz v7, :cond_2

    goto :goto_3

    :cond_2
    add-int/2addr v6, v0

    goto :goto_2

    :cond_3
    move v6, v3

    :goto_3
    sget-object v2, Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/ActionParamCreator;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/ActionParamCreator;

    sget-object v7, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;->DOLBY:Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;

    sget-object v8, Lcom/android/systemui/audio/soundcraft/model/phone/DolbyEnum;->$ENTRIES:Lkotlin/enums/EnumEntries;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/audio/soundcraft/model/phone/DolbyEnum;

    invoke-virtual {v5}, Lcom/android/systemui/audio/soundcraft/model/phone/DolbyEnum;->getRoutineActionValue()Ljava/lang/String;

    move-result-object v5

    sget-object v9, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;->DOLBY_OLD:Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/audio/soundcraft/model/phone/DolbyEnum;

    invoke-virtual {v6}, Lcom/android/systemui/audio/soundcraft/model/phone/DolbyEnum;->getRoutineActionValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;->Companion:Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo$Companion;

    invoke-virtual {v7}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;->getActionTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;

    const/4 v10, 0x0

    const-string v11, "com.sec.android.app.soundalive"

    invoke-direct {v2, v11, v8, v10}, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v8, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;->Companion:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;

    invoke-direct {v8}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;-><init>()V

    invoke-virtual {v7}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;->getParamTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7, v5}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;->getParamTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5, v6}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->equalizerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/audio/soundcraft/model/common/Equalizer;

    invoke-virtual {v5}, Lcom/android/systemui/audio/soundcraft/model/common/Equalizer;->getState()Z

    move-result v5

    if-eqz v5, :cond_5

    move v3, v4

    goto :goto_5

    :cond_5
    add-int/2addr v4, v0

    goto :goto_4

    :cond_6
    :goto_5
    sget-object v2, Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/ActionParamCreator;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/ActionParamCreator;

    sget-object v4, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;->EQUALIZER:Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;

    sget-object v5, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;->$ENTRIES:Lkotlin/enums/EnumEntries;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;

    invoke-virtual {v3}, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;->getRoutineActionValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v4, v3}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/ActionParamCreator;->putActionValue(Ljava/util/HashMap;Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->voiceBoost:Ljava/lang/Boolean;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sget-object v3, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;->VOICE_BOOST:Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;

    sget-object v4, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;->Companion:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v2, v0, :cond_7

    sget-object v2, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;->ON:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;

    goto :goto_6

    :cond_7
    if-nez v2, :cond_8

    sget-object v2, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;->OFF:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;

    :goto_6
    invoke-virtual {v2}, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;->getRoutineActionValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/ActionParamCreator;->putActionValue(Ljava/util/HashMap;Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;Ljava/lang/String;)V

    goto :goto_7

    :cond_8
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_9
    :goto_7
    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->volumeNormalization:Ljava/lang/Boolean;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-object v2, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;->VOLUME_NORMALIZATION:Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;

    sget-object v3, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;->Companion:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne p0, v0, :cond_a

    sget-object p0, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;->ON:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;

    goto :goto_8

    :cond_a
    if-nez p0, :cond_b

    sget-object p0, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;->OFF:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;

    :goto_8
    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;->getRoutineActionValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/ActionParamCreator;->putActionValue(Ljava/util/HashMap;Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;Ljava/lang/String;)V

    goto :goto_9

    :cond_b
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_c
    :goto_9
    return-object v1
.end method
