.class public final Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;


# instance fields
.field public final actions$delegate:Lkotlin/Lazy;

.field public final appColorScheme:Lcom/android/systemui/monet/ColorScheme;

.field public final appIcon:Landroidx/compose/ui/graphics/painter/Painter;

.field public final duration$delegate:Lkotlin/Lazy;

.field public final id:Ljava/lang/String;

.field public final mediaActions:Ljava/util/List;

.field public final packageName:Ljava/lang/String;

.field public final playbackState$delegate:Lkotlin/Lazy;

.field public final position$delegate:Lkotlin/Lazy;

.field public final thumbColorScheme:Lcom/android/systemui/monet/ColorScheme;

.field public final title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/List;Landroidx/compose/ui/graphics/painter/Painter;Lcom/android/systemui/monet/ColorScheme;Lcom/android/systemui/monet/ColorScheme;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Lcom/android/systemui/media/mediaoutput/entity/MediaAction;",
            ">;",
            "Landroidx/compose/ui/graphics/painter/Painter;",
            "Lcom/android/systemui/monet/ColorScheme;",
            "Lcom/android/systemui/monet/ColorScheme;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->title:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->mediaActions:Ljava/util/List;

    iput-object p5, p0, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->appIcon:Landroidx/compose/ui/graphics/painter/Painter;

    iput-object p6, p0, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->appColorScheme:Lcom/android/systemui/monet/ColorScheme;

    iput-object p7, p0, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->thumbColorScheme:Lcom/android/systemui/monet/ColorScheme;

    sget-object p1, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo$duration$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo$duration$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->duration$delegate:Lkotlin/Lazy;

    sget-object p1, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo$position$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo$position$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->position$delegate:Lkotlin/Lazy;

    sget-object p1, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo$playbackState$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo$playbackState$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->playbackState$delegate:Lkotlin/Lazy;

    sget-object p1, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo$actions$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo$actions$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->actions$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/List;Landroidx/compose/ui/graphics/painter/Painter;Lcom/android/systemui/monet/ColorScheme;Lcom/android/systemui/monet/ColorScheme;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    and-int/lit8 v1, p8, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/systemui/media/mediaoutput/ext/ResourceString;

    const v3, 0x7f130cf2

    const/4 v4, 0x2

    invoke-direct {v1, v3, v2, v4, v2}, Lcom/android/systemui/media/mediaoutput/ext/ResourceString;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :cond_1
    move-object v1, p3

    :goto_1
    and-int/lit8 v3, p8, 0x8

    if-eqz v3, :cond_2

    sget-object v3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto :goto_2

    :cond_2
    move-object v3, p4

    :goto_2
    and-int/lit8 v4, p8, 0x10

    if-eqz v4, :cond_3

    move-object v4, v2

    goto :goto_3

    :cond_3
    move-object v4, p5

    :goto_3
    and-int/lit8 v5, p8, 0x20

    if-eqz v5, :cond_4

    move-object v5, v2

    goto :goto_4

    :cond_4
    move-object v5, p6

    :goto_4
    and-int/lit8 v6, p8, 0x40

    if-eqz v6, :cond_5

    goto :goto_5

    :cond_5
    move-object v2, p7

    :goto_5
    move-object p2, p0

    move-object p3, p1

    move-object p4, v0

    move-object p5, v1

    move-object p6, v3

    move-object p7, v4

    move-object p8, v5

    move-object/from16 p9, v2

    invoke-direct/range {p2 .. p9}, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/List;Landroidx/compose/ui/graphics/painter/Painter;Lcom/android/systemui/monet/ColorScheme;Lcom/android/systemui/monet/ColorScheme;)V

    return-void
.end method

.method public static copy$default(Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/List;Landroidx/compose/ui/graphics/painter/Painter;Lcom/android/systemui/monet/ColorScheme;I)Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;
    .locals 8

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->id:Ljava/lang/String;

    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->packageName:Ljava/lang/String;

    :cond_0
    move-object v2, p1

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->title:Ljava/lang/CharSequence;

    :cond_1
    move-object v3, p2

    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_2

    iget-object p3, p0, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->mediaActions:Ljava/util/List;

    :cond_2
    move-object v4, p3

    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_3

    iget-object p4, p0, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->appIcon:Landroidx/compose/ui/graphics/painter/Painter;

    :cond_3
    move-object v5, p4

    and-int/lit8 p1, p6, 0x20

    if-eqz p1, :cond_4

    iget-object p5, p0, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->appColorScheme:Lcom/android/systemui/monet/ColorScheme;

    :cond_4
    move-object v6, p5

    iget-object v7, p0, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->thumbColorScheme:Lcom/android/systemui/monet/ColorScheme;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/List;Landroidx/compose/ui/graphics/painter/Painter;Lcom/android/systemui/monet/ColorScheme;Lcom/android/systemui/monet/ColorScheme;)V

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;

    iget-object v1, p1, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->id:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->title:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->mediaActions:Ljava/util/List;

    iget-object v3, p1, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->mediaActions:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->appIcon:Landroidx/compose/ui/graphics/painter/Painter;

    iget-object v3, p1, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->appIcon:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->appColorScheme:Lcom/android/systemui/monet/ColorScheme;

    iget-object v3, p1, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->appColorScheme:Lcom/android/systemui/monet/ColorScheme;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->thumbColorScheme:Lcom/android/systemui/monet/ColorScheme;

    iget-object p1, p1, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->thumbColorScheme:Lcom/android/systemui/monet/ColorScheme;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getActions()J
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->actions$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getAppColorScheme()Lcom/android/systemui/monet/ColorScheme;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->appColorScheme:Lcom/android/systemui/monet/ColorScheme;

    return-object p0
.end method

.method public final getAppIcon()Landroidx/compose/ui/graphics/painter/Painter;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->appIcon:Landroidx/compose/ui/graphics/painter/Painter;

    return-object p0
.end method

.method public final getArtist()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getAttributes()Ljava/util/List;
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;->getAttributes()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->mediaActions:Ljava/util/List;

    new-instance v1, Lkotlin/Pair;

    const-string v2, "mediaActions"

    invoke-direct {v1, v2, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getDuration()J
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->duration$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getMediaActions()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->mediaActions:Ljava/util/List;

    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getPlaybackState()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->playbackState$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final getPosition()J
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->position$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getThumbColorScheme()Lcom/android/systemui/monet/ColorScheme;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->thumbColorScheme:Lcom/android/systemui/monet/ColorScheme;

    return-object p0
.end method

.method public final getThumbnail()Landroidx/compose/ui/graphics/ImageBitmap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->title:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/controls/controller/ControlInfo$$ExternalSyntheticOutline0;->m(IILjava/lang/CharSequence;)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->mediaActions:Ljava/util/List;

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(Ljava/util/List;II)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->appIcon:Landroidx/compose/ui/graphics/painter/Painter;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->appColorScheme:Lcom/android/systemui/monet/ColorScheme;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->thumbColorScheme:Lcom/android/systemui/monet/ColorScheme;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Lcom/android/systemui/media/mediaoutput/entity/EntityString;->toLogText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
