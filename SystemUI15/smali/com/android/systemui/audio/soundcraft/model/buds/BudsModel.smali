.class public final Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private ambientSoundVolume:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ambientSoundVolume"
    .end annotation
.end field

.field private connectionState:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "connectionState"
    .end annotation
.end field

.field private equalizerList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "equalizerList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/audio/soundcraft/model/common/Equalizer;",
            ">;"
        }
    .end annotation
.end field

.field private headTracking:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "headTracking"
    .end annotation
.end field

.field private hearingEnhancement:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hearingEnhancementsAmbientSound"
    .end annotation
.end field

.field private maxActiveNoiseCancelingLevel:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maxActiveNoiseCancelingLevel"
    .end annotation
.end field

.field private maxAmbientSoundVolume:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maxAmbientSoundVolume"
    .end annotation
.end field

.field private noiseCancelingLevel:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "activeNoiseCancelingLevel"
    .end annotation
.end field

.field private noiseControlsList:Ljava/util/Set;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noiseControlsList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;",
            ">;"
        }
    .end annotation
.end field

.field private oneEarbudNoiseControls:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "oneEarbudNoiseControls"
    .end annotation
.end field

.field private spatialAudio:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "spatialAudio"
    .end annotation
.end field

.field private touchControls:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "touchControls"
    .end annotation
.end field

.field private uhq:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ultraHighQualityAudio"
    .end annotation
.end field

.field private voiceBoost:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "voiceBoost"
    .end annotation
.end field

.field private volumeNormalization:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "volumeNormalization"
    .end annotation
.end field

.field private wearingL:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wearingL"
    .end annotation
.end field

.field private wearingR:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wearingR"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 20

    move-object/from16 v0, p0

    const v18, 0x1ffff

    const/16 v19, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v0 .. v19}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;-><init>(Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Set;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Set;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lcom/android/systemui/audio/soundcraft/model/common/Equalizer;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->connectionState:Ljava/lang/Boolean;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->equalizerList:Ljava/util/List;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->noiseControlsList:Ljava/util/Set;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->maxActiveNoiseCancelingLevel:Ljava/lang/Integer;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->noiseCancelingLevel:Ljava/lang/Integer;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->maxAmbientSoundVolume:Ljava/lang/Integer;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->ambientSoundVolume:Ljava/lang/Integer;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->hearingEnhancement:Ljava/lang/Boolean;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->touchControls:Ljava/lang/Boolean;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->wearingL:Ljava/lang/Boolean;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->wearingR:Ljava/lang/Boolean;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->oneEarbudNoiseControls:Ljava/lang/Boolean;

    move-object v1, p13

    iput-object v1, v0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->spatialAudio:Ljava/lang/Boolean;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->headTracking:Ljava/lang/Boolean;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->voiceBoost:Ljava/lang/Boolean;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->volumeNormalization:Ljava/lang/Boolean;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->uhq:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Set;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 18

    move/from16 v0, p18

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    const/4 v11, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    const/4 v12, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    const/4 v13, 0x0

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    const/4 v14, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_d

    const/4 v15, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    const/16 v16, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v16, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v0, v0, v17

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    goto :goto_10

    :cond_10
    move-object/from16 v0, p17

    :goto_10
    move-object/from16 p1, v1

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p14, v15

    move-object/from16 p15, v2

    move-object/from16 p16, v16

    move-object/from16 p17, v0

    invoke-direct/range {p0 .. p17}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;-><init>(Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Set;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->connectionState:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->connectionState:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->equalizerList:Ljava/util/List;

    iget-object v3, p1, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->equalizerList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->noiseControlsList:Ljava/util/Set;

    iget-object v3, p1, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->noiseControlsList:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->maxActiveNoiseCancelingLevel:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->maxActiveNoiseCancelingLevel:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->noiseCancelingLevel:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->noiseCancelingLevel:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->maxAmbientSoundVolume:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->maxAmbientSoundVolume:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->ambientSoundVolume:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->ambientSoundVolume:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->hearingEnhancement:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->hearingEnhancement:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->touchControls:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->touchControls:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->wearingL:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->wearingL:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->wearingR:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->wearingR:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->oneEarbudNoiseControls:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->oneEarbudNoiseControls:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->spatialAudio:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->spatialAudio:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->headTracking:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->headTracking:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->voiceBoost:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->voiceBoost:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->volumeNormalization:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->volumeNormalization:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->uhq:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->uhq:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    return v2

    :cond_12
    return v0
.end method

.method public final getAmbientSoundVolume()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->ambientSoundVolume:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getConnectionState()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->connectionState:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getEqualizerList()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->equalizerList:Ljava/util/List;

    return-object p0
.end method

.method public final getHeadTracking()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->headTracking:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getHearingEnhancement()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->hearingEnhancement:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getMaxActiveNoiseCancelingLevel()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->maxActiveNoiseCancelingLevel:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getMaxAmbientSoundVolume()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->maxAmbientSoundVolume:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getNoiseCancelingLevel()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->noiseCancelingLevel:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getNoiseControlsList()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->noiseControlsList:Ljava/util/Set;

    return-object p0
.end method

.method public final getOneEarbudNoiseControls()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->oneEarbudNoiseControls:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getSpatialAudio()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->spatialAudio:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getUhq()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->uhq:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getVoiceBoost()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->voiceBoost:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getVolumeNormalization()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->volumeNormalization:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getWearingL()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->wearingL:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getWearingR()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->wearingR:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->connectionState:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->equalizerList:Ljava/util/List;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->noiseControlsList:Ljava/util/Set;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->maxActiveNoiseCancelingLevel:Ljava/lang/Integer;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->noiseCancelingLevel:Ljava/lang/Integer;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->maxAmbientSoundVolume:Ljava/lang/Integer;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->ambientSoundVolume:Ljava/lang/Integer;

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->hearingEnhancement:Ljava/lang/Boolean;

    if-nez v2, :cond_7

    move v2, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->touchControls:Ljava/lang/Boolean;

    if-nez v2, :cond_8

    move v2, v1

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->wearingL:Ljava/lang/Boolean;

    if-nez v2, :cond_9

    move v2, v1

    goto :goto_9

    :cond_9
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->wearingR:Ljava/lang/Boolean;

    if-nez v2, :cond_a

    move v2, v1

    goto :goto_a

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->oneEarbudNoiseControls:Ljava/lang/Boolean;

    if-nez v2, :cond_b

    move v2, v1

    goto :goto_b

    :cond_b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->spatialAudio:Ljava/lang/Boolean;

    if-nez v2, :cond_c

    move v2, v1

    goto :goto_c

    :cond_c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->headTracking:Ljava/lang/Boolean;

    if-nez v2, :cond_d

    move v2, v1

    goto :goto_d

    :cond_d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->voiceBoost:Ljava/lang/Boolean;

    if-nez v2, :cond_e

    move v2, v1

    goto :goto_e

    :cond_e
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->volumeNormalization:Ljava/lang/Boolean;

    if-nez v2, :cond_f

    move v2, v1

    goto :goto_f

    :cond_f
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->uhq:Ljava/lang/Boolean;

    if-nez p0, :cond_10

    goto :goto_10

    :cond_10
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_10
    add-int/2addr v0, v1

    return v0
.end method

.method public final setAmbientSoundVolume(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->ambientSoundVolume:Ljava/lang/Integer;

    return-void
.end method

.method public final setConnectionState()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->connectionState:Ljava/lang/Boolean;

    return-void
.end method

.method public final setEqualizerList(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->equalizerList:Ljava/util/List;

    return-void
.end method

.method public final setHeadTracking(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->headTracking:Ljava/lang/Boolean;

    return-void
.end method

.method public final setNoiseCancelingLevel(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->noiseCancelingLevel:Ljava/lang/Integer;

    return-void
.end method

.method public final setNoiseControlsList(Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->noiseControlsList:Ljava/util/Set;

    return-void
.end method

.method public final setSpatialAudio(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->spatialAudio:Ljava/lang/Boolean;

    return-void
.end method

.method public final setVoiceBoost(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->voiceBoost:Ljava/lang/Boolean;

    return-void
.end method

.method public final setVolumeNormalization(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->volumeNormalization:Ljava/lang/Boolean;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->connectionState:Ljava/lang/Boolean;

    iget-object v2, v0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->equalizerList:Ljava/util/List;

    iget-object v3, v0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->noiseControlsList:Ljava/util/Set;

    iget-object v4, v0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->maxActiveNoiseCancelingLevel:Ljava/lang/Integer;

    iget-object v5, v0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->noiseCancelingLevel:Ljava/lang/Integer;

    iget-object v6, v0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->maxAmbientSoundVolume:Ljava/lang/Integer;

    iget-object v7, v0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->ambientSoundVolume:Ljava/lang/Integer;

    iget-object v8, v0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->hearingEnhancement:Ljava/lang/Boolean;

    iget-object v9, v0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->touchControls:Ljava/lang/Boolean;

    iget-object v10, v0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->wearingL:Ljava/lang/Boolean;

    iget-object v11, v0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->wearingR:Ljava/lang/Boolean;

    iget-object v12, v0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->oneEarbudNoiseControls:Ljava/lang/Boolean;

    iget-object v13, v0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->spatialAudio:Ljava/lang/Boolean;

    iget-object v14, v0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->headTracking:Ljava/lang/Boolean;

    iget-object v15, v0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->voiceBoost:Ljava/lang/Boolean;

    move-object/from16 v16, v15

    iget-object v15, v0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->volumeNormalization:Ljava/lang/Boolean;

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->uhq:Ljava/lang/Boolean;

    move-object/from16 p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v17, v15

    const-string v15, "BudsModel(connectionState="

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", equalizerList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", noiseControlsList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxActiveNoiseCancelingLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", noiseCancelingLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxAmbientSoundVolume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ambientSoundVolume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hearingEnhancement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", touchControls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wearingL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wearingR="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", oneEarbudNoiseControls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", spatialAudio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", headTracking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", voiceBoost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", volumeNormalization="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uhq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
