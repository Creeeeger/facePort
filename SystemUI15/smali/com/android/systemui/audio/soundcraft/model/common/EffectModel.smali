.class public final Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final dolbyList:Ljava/util/List;

.field public dolbyOldList:Ljava/util/List;

.field public equalizerList:Ljava/util/List;

.field public headTracking:Ljava/lang/Boolean;

.field public spatialAudio:Ljava/lang/Boolean;

.field public voiceBoost:Ljava/lang/Boolean;

.field public volumeNormalization:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 10

    const/16 v8, 0x7f

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/audio/soundcraft/model/phone/Dolby;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/systemui/audio/soundcraft/model/phone/Dolby;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/systemui/audio/soundcraft/model/common/Equalizer;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->dolbyList:Ljava/util/List;

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->dolbyOldList:Ljava/util/List;

    iput-object p3, p0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->equalizerList:Ljava/util/List;

    iput-object p4, p0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->spatialAudio:Ljava/lang/Boolean;

    iput-object p5, p0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->headTracking:Ljava/lang/Boolean;

    iput-object p6, p0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->voiceBoost:Ljava/lang/Boolean;

    iput-object p7, p0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->volumeNormalization:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p9, p8, 0x1

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p9, p8, 0x2

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-eqz p9, :cond_3

    sget-object p2, Lcom/android/systemui/audio/soundcraft/model/phone/DolbyEnum;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance p9, Ljava/util/ArrayList;

    invoke-static {p2, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {p9, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/audio/soundcraft/model/phone/DolbyEnum;

    invoke-virtual {v3}, Lcom/android/systemui/audio/soundcraft/model/phone/DolbyEnum;->getRealIndex()I

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Lcom/android/systemui/audio/soundcraft/model/phone/Dolby;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Lcom/android/systemui/audio/soundcraft/model/phone/Dolby;-><init>(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    new-instance v4, Lcom/android/systemui/audio/soundcraft/model/phone/Dolby;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3, v1}, Lcom/android/systemui/audio/soundcraft/model/phone/Dolby;-><init>(Ljava/lang/String;Z)V

    :goto_1
    invoke-interface {p9, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object p2, p9

    :cond_3
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_5

    sget-object p3, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance p9, Ljava/util/ArrayList;

    invoke-static {p3, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {p9, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;

    new-instance v3, Lcom/android/systemui/audio/soundcraft/model/common/Equalizer;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v1}, Lcom/android/systemui/audio/soundcraft/model/common/Equalizer;-><init>(Ljava/lang/String;Z)V

    invoke-interface {p9, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move-object p3, p9

    :cond_5
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_6

    move-object p4, v0

    :cond_6
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_7

    move-object p5, v0

    :cond_7
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_8

    move-object p6, v0

    :cond_8
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_9

    move-object p7, v0

    :cond_9
    invoke-direct/range {p0 .. p7}, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->dolbyList:Ljava/util/List;

    iget-object v3, p1, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->dolbyList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->dolbyOldList:Ljava/util/List;

    iget-object v3, p1, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->dolbyOldList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->equalizerList:Ljava/util/List;

    iget-object v3, p1, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->equalizerList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->spatialAudio:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->spatialAudio:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->headTracking:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->headTracking:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->voiceBoost:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->voiceBoost:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->volumeNormalization:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->volumeNormalization:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->dolbyList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->dolbyOldList:Ljava/util/List;

    invoke-static {v3, v0, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(Ljava/util/List;II)I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->equalizerList:Ljava/util/List;

    invoke-static {v3, v0, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(Ljava/util/List;II)I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->spatialAudio:Ljava/lang/Boolean;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->headTracking:Ljava/lang/Boolean;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->voiceBoost:Ljava/lang/Boolean;

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->volumeNormalization:Ljava/lang/Boolean;

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->dolbyList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->dolbyOldList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->equalizerList:Ljava/util/List;

    iget-object v3, p0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->spatialAudio:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->headTracking:Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->voiceBoost:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->volumeNormalization:Ljava/lang/Boolean;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "EffectModel(dolbyList="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", dolbyOldList="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", equalizerList="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", spatialAudio="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", headTracking="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", voiceBoost="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", volumeNormalization="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
