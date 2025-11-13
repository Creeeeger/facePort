.class public final Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;


# static fields
.field public static final Companion:Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo$Companion;

.field public static final empty:Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;


# instance fields
.field public final actions:J

.field public final appColorScheme:Lcom/android/systemui/monet/ColorScheme;

.field public final appIcon:Landroidx/compose/ui/graphics/painter/Painter;

.field public final artist:Ljava/lang/String;

.field public final duration:J

.field public final id:Ljava/lang/String;

.field public final mediaActions:Ljava/util/List;

.field public final packageName:Ljava/lang/String;

.field public final playbackState:I

.field public final position:J

.field public final thumbColorScheme:Lcom/android/systemui/monet/ColorScheme;

.field public final thumbnail:Landroidx/compose/ui/graphics/ImageBitmap;

.field public final title:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    new-instance v0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->Companion:Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo$Companion;

    new-instance v0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;

    move-object v2, v0

    new-instance v3, Lcom/android/systemui/media/mediaoutput/ext/ResourceString;

    move-object v5, v3

    const v4, 0x7f130cf2

    const/4 v6, 0x2

    invoke-direct {v3, v4, v1, v6, v1}, Lcom/android/systemui/media/mediaoutput/ext/ResourceString;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v19, 0x1e4a

    const/16 v20, 0x0

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v2 .. v20}, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;JJLandroidx/compose/ui/graphics/ImageBitmap;IJLjava/util/List;Landroidx/compose/ui/graphics/painter/Painter;Lcom/android/systemui/monet/ColorScheme;Lcom/android/systemui/monet/ColorScheme;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->empty:Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;JJLandroidx/compose/ui/graphics/ImageBitmap;IJLjava/util/List;Landroidx/compose/ui/graphics/painter/Painter;Lcom/android/systemui/monet/ColorScheme;Lcom/android/systemui/monet/ColorScheme;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "JJ",
            "Landroidx/compose/ui/graphics/ImageBitmap;",
            "IJ",
            "Ljava/util/List<",
            "Lcom/android/systemui/media/mediaoutput/entity/MediaAction;",
            ">;",
            "Landroidx/compose/ui/graphics/painter/Painter;",
            "Lcom/android/systemui/monet/ColorScheme;",
            "Lcom/android/systemui/monet/ColorScheme;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->id:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->packageName:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->title:Ljava/lang/CharSequence;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->artist:Ljava/lang/String;

    move-wide v1, p5

    iput-wide v1, v0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->duration:J

    move-wide v1, p7

    iput-wide v1, v0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->position:J

    move-object v1, p9

    iput-object v1, v0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->thumbnail:Landroidx/compose/ui/graphics/ImageBitmap;

    move v1, p10

    iput v1, v0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->playbackState:I

    move-wide v1, p11

    iput-wide v1, v0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->actions:J

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->mediaActions:Ljava/util/List;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->appIcon:Landroidx/compose/ui/graphics/painter/Painter;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->appColorScheme:Lcom/android/systemui/monet/ColorScheme;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->thumbColorScheme:Lcom/android/systemui/monet/ColorScheme;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;JJLandroidx/compose/ui/graphics/ImageBitmap;IJLjava/util/List;Landroidx/compose/ui/graphics/painter/Painter;Lcom/android/systemui/monet/ColorScheme;Lcom/android/systemui/monet/ColorScheme;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 19

    move/from16 v0, p17

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    move-object/from16 v4, p1

    goto :goto_0

    :cond_0
    move-object/from16 v4, p2

    :goto_0
    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v6, v2

    goto :goto_1

    :cond_1
    move-object/from16 v6, p4

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    move-object v11, v2

    goto :goto_2

    :cond_2
    move-object/from16 v11, p9

    :goto_2
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_3

    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    move-object v15, v1

    goto :goto_3

    :cond_3
    move-object/from16 v15, p13

    :goto_3
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_4

    move-object/from16 v16, v2

    goto :goto_4

    :cond_4
    move-object/from16 v16, p14

    :goto_4
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_5

    move-object/from16 v17, v2

    goto :goto_5

    :cond_5
    move-object/from16 v17, p15

    :goto_5
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_6

    move-object/from16 v18, v2

    goto :goto_6

    :cond_6
    move-object/from16 v18, p16

    :goto_6
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move/from16 v12, p10

    move-wide/from16 v13, p11

    invoke-direct/range {v2 .. v18}, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;JJLandroidx/compose/ui/graphics/ImageBitmap;IJLjava/util/List;Landroidx/compose/ui/graphics/painter/Painter;Lcom/android/systemui/monet/ColorScheme;Lcom/android/systemui/monet/ColorScheme;)V

    return-void
.end method

.method public static copy$default(Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;JJLandroidx/compose/ui/graphics/ImageBitmap;IJLjava/util/List;Landroidx/compose/ui/graphics/painter/Painter;Lcom/android/systemui/monet/ColorScheme;Lcom/android/systemui/monet/ColorScheme;I)Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p17

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->title:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->artist:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-wide v6, v0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->duration:J

    goto :goto_4

    :cond_4
    move-wide/from16 v6, p5

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-wide v8, v0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->position:J

    goto :goto_5

    :cond_5
    move-wide/from16 v8, p7

    :goto_5
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_6

    iget-object v10, v0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->thumbnail:Landroidx/compose/ui/graphics/ImageBitmap;

    goto :goto_6

    :cond_6
    move-object/from16 v10, p9

    :goto_6
    and-int/lit16 v11, v1, 0x80

    if-eqz v11, :cond_7

    iget v11, v0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->playbackState:I

    goto :goto_7

    :cond_7
    move/from16 v11, p10

    :goto_7
    and-int/lit16 v12, v1, 0x100

    if-eqz v12, :cond_8

    iget-wide v12, v0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->actions:J

    goto :goto_8

    :cond_8
    move-wide/from16 v12, p11

    :goto_8
    and-int/lit16 v14, v1, 0x200

    if-eqz v14, :cond_9

    iget-object v14, v0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->mediaActions:Ljava/util/List;

    goto :goto_9

    :cond_9
    move-object/from16 v14, p13

    :goto_9
    and-int/lit16 v15, v1, 0x400

    if-eqz v15, :cond_a

    iget-object v15, v0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->appIcon:Landroidx/compose/ui/graphics/painter/Painter;

    goto :goto_a

    :cond_a
    move-object/from16 v15, p14

    :goto_a
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x800

    if-eqz v15, :cond_b

    iget-object v15, v0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->appColorScheme:Lcom/android/systemui/monet/ColorScheme;

    goto :goto_b

    :cond_b
    move-object/from16 v15, p15

    :goto_b
    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->thumbColorScheme:Lcom/android/systemui/monet/ColorScheme;

    goto :goto_c

    :cond_c
    move-object/from16 v1, p16

    :goto_c
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;

    move-object/from16 p0, v0

    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-wide/from16 p5, v6

    move-wide/from16 p7, v8

    move-object/from16 p9, v10

    move/from16 p10, v11

    move-wide/from16 p11, v12

    move-object/from16 p13, v14

    move-object/from16 p15, v15

    move-object/from16 p16, v1

    invoke-direct/range {p0 .. p16}, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;JJLandroidx/compose/ui/graphics/ImageBitmap;IJLjava/util/List;Landroidx/compose/ui/graphics/painter/Painter;Lcom/android/systemui/monet/ColorScheme;Lcom/android/systemui/monet/ColorScheme;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;

    iget-object v1, p1, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->id:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->title:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->artist:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->artist:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->duration:J

    iget-wide v5, p1, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->duration:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->position:J

    iget-wide v5, p1, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->position:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->thumbnail:Landroidx/compose/ui/graphics/ImageBitmap;

    iget-object v3, p1, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->thumbnail:Landroidx/compose/ui/graphics/ImageBitmap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->playbackState:I

    iget v3, p1, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->playbackState:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->actions:J

    iget-wide v5, p1, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->actions:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->mediaActions:Ljava/util/List;

    iget-object v3, p1, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->mediaActions:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->appIcon:Landroidx/compose/ui/graphics/painter/Painter;

    iget-object v3, p1, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->appIcon:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->appColorScheme:Lcom/android/systemui/monet/ColorScheme;

    iget-object v3, p1, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->appColorScheme:Lcom/android/systemui/monet/ColorScheme;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->thumbColorScheme:Lcom/android/systemui/monet/ColorScheme;

    iget-object p1, p1, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->thumbColorScheme:Lcom/android/systemui/monet/ColorScheme;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    return v2

    :cond_e
    return v0
.end method

.method public final getActions()J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->actions:J

    return-wide v0
.end method

.method public final getAppColorScheme()Lcom/android/systemui/monet/ColorScheme;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->appColorScheme:Lcom/android/systemui/monet/ColorScheme;

    return-object p0
.end method

.method public final getAppIcon()Landroidx/compose/ui/graphics/painter/Painter;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->appIcon:Landroidx/compose/ui/graphics/painter/Painter;

    return-object p0
.end method

.method public final getArtist()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->artist:Ljava/lang/String;

    return-object p0
.end method

.method public final getAttributes()Ljava/util/List;
    .locals 8

    invoke-super {p0}, Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;->getAttributes()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    new-instance v1, Lkotlin/Pair;

    const-string v2, "artist"

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->artist:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-wide v2, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->duration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Lkotlin/Pair;

    const-string v4, "duration"

    invoke-direct {v3, v4, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-wide v4, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->position:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v4, Lkotlin/Pair;

    const-string v5, "position"

    invoke-direct {v4, v5, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v2, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->playbackState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v5, Lkotlin/Pair;

    const-string v6, "playbackState"

    invoke-direct {v5, v6, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-wide v6, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->actions:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v6, Lkotlin/Pair;

    const-string v7, "actions"

    invoke-direct {v6, v7, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->mediaActions:Ljava/util/List;

    new-instance v7, Lkotlin/Pair;

    const-string v2, "mediaActions"

    invoke-direct {v7, v2, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    filled-new-array/range {v1 .. v6}, [Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->duration:J

    return-wide v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getMediaActions()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->mediaActions:Ljava/util/List;

    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getPlaybackState()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->playbackState:I

    return p0
.end method

.method public final getPosition()J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->position:J

    return-wide v0
.end method

.method public final getThumbColorScheme()Lcom/android/systemui/monet/ColorScheme;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->thumbColorScheme:Lcom/android/systemui/monet/ColorScheme;

    return-object p0
.end method

.method public final getThumbnail()Landroidx/compose/ui/graphics/ImageBitmap;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->thumbnail:Landroidx/compose/ui/graphics/ImageBitmap;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->title:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/controls/controller/ControlInfo$$ExternalSyntheticOutline0;->m(IILjava/lang/CharSequence;)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->artist:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-wide v3, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->duration:J

    invoke-static {v0, v1, v3, v4}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v3, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->position:J

    invoke-static {v0, v1, v3, v4}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->thumbnail:Landroidx/compose/ui/graphics/ImageBitmap;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget v3, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->playbackState:I

    invoke-static {v3, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-wide v3, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->actions:J

    invoke-static {v0, v1, v3, v4}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->mediaActions:Ljava/util/List;

    invoke-static {v3, v0, v1}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(Ljava/util/List;II)I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->appIcon:Landroidx/compose/ui/graphics/painter/Painter;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->appColorScheme:Lcom/android/systemui/monet/ColorScheme;

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->thumbColorScheme:Lcom/android/systemui/monet/ColorScheme;

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Lcom/android/systemui/media/mediaoutput/entity/EntityString;->toLogText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
