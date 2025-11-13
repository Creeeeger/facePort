.class public final Lcom/android/systemui/audio/soundcraft/model/ModelProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public appSettingModel:Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;

.field public final batteryInfo:Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;

.field public budsModel:Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

.field public effectModel:Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

.field public effectOutDeviceType:Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;

.field public isFromCover:Z

.field public isFromNowBar:Z

.field public phoneModel:Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;

.field public volumeModel:Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;


# direct methods
.method public constructor <init>()V
    .locals 41

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;->PHONE:Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;

    iput-object v1, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectOutDeviceType:Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;

    new-instance v1, Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;

    invoke-direct {v1}, Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->appSettingModel:Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;

    new-instance v1, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;

    const/16 v9, 0x3f

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;-><init>(IIZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->phoneModel:Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;

    new-instance v1, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    move-object v11, v1

    const v29, 0x1ffff

    const/16 v30, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-direct/range {v11 .. v30}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;-><init>(Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Set;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->budsModel:Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    new-instance v1, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

    const/16 v39, 0x7f

    const/16 v40, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v31, v1

    invoke-direct/range {v31 .. v40}, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectModel:Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

    new-instance v1, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->batteryInfo:Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;

    new-instance v1, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;

    const/16 v21, 0xfff

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v22}, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;-><init>(IIIIZZZIZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->volumeModel:Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;

    return-void
.end method
