.class public final Lcom/android/systemui/volume/panel/component/spatial/domain/model/SpatialAudioEnabledModel$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $$INSTANCE:Lcom/android/systemui/volume/panel/component/spatial/domain/model/SpatialAudioEnabledModel$Companion;

.field public static final values:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/volume/panel/component/spatial/domain/model/SpatialAudioEnabledModel$Companion;

    invoke-direct {v0}, Lcom/android/systemui/volume/panel/component/spatial/domain/model/SpatialAudioEnabledModel$Companion;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/panel/component/spatial/domain/model/SpatialAudioEnabledModel$Companion;->$$INSTANCE:Lcom/android/systemui/volume/panel/component/spatial/domain/model/SpatialAudioEnabledModel$Companion;

    sget-object v0, Lcom/android/systemui/volume/panel/component/spatial/domain/model/SpatialAudioEnabledModel$Disabled;->INSTANCE:Lcom/android/systemui/volume/panel/component/spatial/domain/model/SpatialAudioEnabledModel$Disabled;

    sget-object v1, Lcom/android/systemui/volume/panel/component/spatial/domain/model/SpatialAudioEnabledModel$SpatialAudioEnabled;->Companion:Lcom/android/systemui/volume/panel/component/spatial/domain/model/SpatialAudioEnabledModel$SpatialAudioEnabled$Companion;

    sget-object v2, Lcom/android/systemui/volume/panel/component/spatial/domain/model/SpatialAudioEnabledModel$HeadTrackingEnabled;->INSTANCE:Lcom/android/systemui/volume/panel/component/spatial/domain/model/SpatialAudioEnabledModel$HeadTrackingEnabled;

    filled-new-array {v0, v1, v2}, [Lcom/android/systemui/volume/panel/component/spatial/domain/model/SpatialAudioEnabledModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/panel/component/spatial/domain/model/SpatialAudioEnabledModel$Companion;->values:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
