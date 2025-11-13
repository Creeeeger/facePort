.class public final Lcom/android/systemui/media/mediaoutput/entity/MediaAction;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/media/mediaoutput/entity/EntityString;


# static fields
.field public static final Companion:Lcom/android/systemui/media/mediaoutput/entity/MediaAction$Companion;

.field public static final buffering:Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

.field public static final forward:Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

.field public static final next:Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

.field public static final pause:Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

.field public static final play:Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

.field public static final previous:Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

.field public static final rewind:Lcom/android/systemui/media/mediaoutput/entity/MediaAction;


# instance fields
.field public final description:Ljava/lang/CharSequence;

.field public final enabled:Z

.field public final icon:Landroidx/compose/ui/graphics/painter/Painter;

.field public final id:J

.field public final scale:F


# direct methods
.method static constructor <clinit>()V
    .locals 30

    new-instance v0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/mediaoutput/entity/MediaAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->Companion:Lcom/android/systemui/media/mediaoutput/entity/MediaAction$Companion;

    new-instance v0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    sget-object v2, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;->Companion:Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;

    sget-object v3, Lcom/android/systemui/media/mediaoutput/icons/Icons$Action;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Action;

    sget-object v3, Lcom/android/systemui/media/mediaoutput/icons/action/FastRewindKt;->FastRewind$delegate:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;->toConverter(Landroidx/compose/ui/graphics/vector/ImageVector;)Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/media/mediaoutput/ext/ResourceString;

    const v2, 0x7f1307de

    const/4 v11, 0x2

    invoke-direct {v6, v2, v1, v11, v1}, Lcom/android/systemui/media/mediaoutput/ext/ResourceString;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v3, 0x8

    const/16 v9, 0x18

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;-><init>(JLandroidx/compose/ui/graphics/painter/Painter;Ljava/lang/CharSequence;ZFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->rewind:Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    new-instance v0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    sget-object v2, Lcom/android/systemui/media/mediaoutput/icons/action/SkipPreviousKt;->SkipPrevious$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v2}, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;->toConverter(Landroidx/compose/ui/graphics/vector/ImageVector;)Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;

    move-result-object v15

    new-instance v2, Lcom/android/systemui/media/mediaoutput/ext/ResourceString;

    const v3, 0x7f1307dd

    invoke-direct {v2, v3, v1, v11, v1}, Lcom/android/systemui/media/mediaoutput/ext/ResourceString;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v13, 0x10

    const/16 v19, 0x18

    const/16 v20, 0x0

    move-object v12, v0

    move-object/from16 v16, v2

    invoke-direct/range {v12 .. v20}, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;-><init>(JLandroidx/compose/ui/graphics/painter/Painter;Ljava/lang/CharSequence;ZFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->previous:Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    new-instance v0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    sget-object v2, Lcom/android/systemui/media/mediaoutput/icons/action/PlayKt;->Play$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v2}, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;->toConverter(Landroidx/compose/ui/graphics/vector/ImageVector;)Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;

    move-result-object v24

    new-instance v2, Lcom/android/systemui/media/mediaoutput/ext/ResourceString;

    const v3, 0x7f13044a

    invoke-direct {v2, v3, v1, v11, v1}, Lcom/android/systemui/media/mediaoutput/ext/ResourceString;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-wide/16 v22, 0x4

    const/16 v28, 0x18

    const/16 v29, 0x0

    move-object/from16 v21, v0

    move-object/from16 v25, v2

    invoke-direct/range {v21 .. v29}, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;-><init>(JLandroidx/compose/ui/graphics/painter/Painter;Ljava/lang/CharSequence;ZFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->play:Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    new-instance v0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    sget-object v2, Lcom/android/systemui/media/mediaoutput/icons/action/PauseKt;->Pause$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v2}, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;->toConverter(Landroidx/compose/ui/graphics/vector/ImageVector;)Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;

    move-result-object v15

    new-instance v2, Lcom/android/systemui/media/mediaoutput/ext/ResourceString;

    const v3, 0x7f130449

    invoke-direct {v2, v3, v1, v11, v1}, Lcom/android/systemui/media/mediaoutput/ext/ResourceString;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v13, 0x2

    const/16 v19, 0x18

    const/16 v20, 0x0

    move-object v12, v0

    move-object/from16 v16, v2

    invoke-direct/range {v12 .. v20}, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;-><init>(JLandroidx/compose/ui/graphics/painter/Painter;Ljava/lang/CharSequence;ZFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->pause:Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    new-instance v0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    sget-object v2, Lcom/android/systemui/media/mediaoutput/icons/action/SkipNextKt;->SkipNext$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v2}, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;->toConverter(Landroidx/compose/ui/graphics/vector/ImageVector;)Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;

    move-result-object v24

    new-instance v2, Lcom/android/systemui/media/mediaoutput/ext/ResourceString;

    const v3, 0x7f1307db

    invoke-direct {v2, v3, v1, v11, v1}, Lcom/android/systemui/media/mediaoutput/ext/ResourceString;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-wide/16 v22, 0x20

    const/16 v28, 0x18

    const/16 v29, 0x0

    move-object/from16 v21, v0

    move-object/from16 v25, v2

    invoke-direct/range {v21 .. v29}, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;-><init>(JLandroidx/compose/ui/graphics/painter/Painter;Ljava/lang/CharSequence;ZFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->next:Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    new-instance v0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    sget-object v2, Lcom/android/systemui/media/mediaoutput/icons/action/FastForwardKt;->FastForward$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v2}, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;->toConverter(Landroidx/compose/ui/graphics/vector/ImageVector;)Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;

    move-result-object v15

    new-instance v2, Lcom/android/systemui/media/mediaoutput/ext/ResourceString;

    const v3, 0x7f1307da

    invoke-direct {v2, v3, v1, v11, v1}, Lcom/android/systemui/media/mediaoutput/ext/ResourceString;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v13, 0x40

    const/16 v19, 0x18

    const/16 v20, 0x0

    move-object v12, v0

    move-object/from16 v16, v2

    invoke-direct/range {v12 .. v20}, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;-><init>(JLandroidx/compose/ui/graphics/painter/Painter;Ljava/lang/CharSequence;ZFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->forward:Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    new-instance v0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    sget-object v2, Lcom/android/systemui/media/mediaoutput/compose/ext/DrawableResourceConverterPainter;->Companion:Lcom/android/systemui/media/mediaoutput/compose/ext/DrawableResourceConverterPainter$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/android/systemui/media/mediaoutput/compose/ext/DrawableResourceConverterPainter;

    const/4 v2, 0x0

    invoke-direct {v6, v2, v1}, Lcom/android/systemui/media/mediaoutput/compose/ext/DrawableResourceConverterPainter;-><init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v4, -0x1

    const/4 v7, 0x0

    const/16 v10, 0x1c

    const/4 v11, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;-><init>(JLandroidx/compose/ui/graphics/painter/Painter;Ljava/lang/CharSequence;ZFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->buffering:Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    return-void
.end method

.method public constructor <init>(JLandroidx/compose/ui/graphics/painter/Painter;Ljava/lang/CharSequence;ZF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->id:J

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->icon:Landroidx/compose/ui/graphics/painter/Painter;

    iput-object p4, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->description:Ljava/lang/CharSequence;

    iput-boolean p5, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->enabled:Z

    iput p6, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->scale:F

    return-void
.end method

.method public synthetic constructor <init>(JLandroidx/compose/ui/graphics/painter/Painter;Ljava/lang/CharSequence;ZFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_0

    const-string p4, ""

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p7, 0x8

    if-eqz p4, :cond_1

    const/4 p5, 0x1

    :cond_1
    move v5, p5

    and-int/lit8 p4, p7, 0x10

    if-eqz p4, :cond_2

    const/high16 p6, 0x3f800000    # 1.0f

    :cond_2
    move v6, p6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;-><init>(JLandroidx/compose/ui/graphics/painter/Painter;Ljava/lang/CharSequence;ZF)V

    return-void
.end method

.method public static copy$default(Lcom/android/systemui/media/mediaoutput/entity/MediaAction;JZFI)Lcom/android/systemui/media/mediaoutput/entity/MediaAction;
    .locals 7

    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_0

    iget-wide p1, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->id:J

    :cond_0
    move-wide v1, p1

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->icon:Landroidx/compose/ui/graphics/painter/Painter;

    iget-object v4, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->description:Ljava/lang/CharSequence;

    and-int/lit8 p1, p5, 0x8

    if-eqz p1, :cond_1

    iget-boolean p3, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->enabled:Z

    :cond_1
    move v5, p3

    and-int/lit8 p1, p5, 0x10

    if-eqz p1, :cond_2

    iget p4, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->scale:F

    :cond_2
    move v6, p4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;-><init>(JLandroidx/compose/ui/graphics/painter/Painter;Ljava/lang/CharSequence;ZF)V

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    iget-wide v3, p1, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->id:J

    iget-wide v5, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->id:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->icon:Landroidx/compose/ui/graphics/painter/Painter;

    iget-object v3, p1, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->icon:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->description:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->description:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->enabled:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->enabled:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget p0, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->scale:F

    iget p1, p1, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->scale:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getAttributes()Ljava/util/List;
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    new-instance v0, Lkotlin/Pair;

    const-string v1, "id"

    invoke-direct {v0, v1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->icon:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->description:Ljava/lang/CharSequence;

    invoke-static {v2, v1, v0}, Lcom/android/systemui/controls/controller/ControlInfo$$ExternalSyntheticOutline0;->m(IILjava/lang/CharSequence;)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->enabled:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget p0, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->scale:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Lcom/android/systemui/media/mediaoutput/entity/EntityString;->toLogText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
