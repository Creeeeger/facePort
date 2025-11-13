.class public final Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;


# static fields
.field public static final Companion:Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo$Companion;

.field public static final empty$delegate:Lkotlin/Lazy;


# instance fields
.field public final appIcon:Landroidx/compose/ui/graphics/painter/Painter;

.field public final artist:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field public final mediaActions:Lkotlin/collections/EmptyList;

.field public final packageName:Ljava/lang/String;

.field public roomDetails:Ljava/lang/String;

.field public final title:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;->Companion:Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo$Companion;

    sget-object v0, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo$Companion$empty$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo$Companion$empty$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;->empty$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;->title:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;->artist:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;->appIcon:Landroidx/compose/ui/graphics/painter/Painter;

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;->packageName:Ljava/lang/String;

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;->mediaActions:Lkotlin/collections/EmptyList;

    const-string p1, ""

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;->roomDetails:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const-string p3, ""

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    sget-object p4, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;->Companion:Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;

    sget-object p5, Lcom/android/systemui/media/mediaoutput/icons/Icons$Feature;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Feature;

    sget-object p5, Lcom/android/systemui/media/mediaoutput/icons/feature/IcTvKt;->IcTv$delegate:Lkotlin/Lazy;

    invoke-interface {p5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p5}, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;->toConverter(Landroidx/compose/ui/graphics/vector/ImageVector;)Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;

    move-result-object p4

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;

    iget-object v1, p1, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;->id:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;->title:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;->artist:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;->artist:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;->appIcon:Landroidx/compose/ui/graphics/painter/Painter;

    iget-object p1, p1, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;->appIcon:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getActions()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getAppColorScheme()Lcom/android/systemui/monet/ColorScheme;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getAppIcon()Landroidx/compose/ui/graphics/painter/Painter;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;->appIcon:Landroidx/compose/ui/graphics/painter/Painter;

    return-object p0
.end method

.method public final getArtist()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;->artist:Ljava/lang/String;

    return-object p0
.end method

.method public final getDuration()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getMediaActions()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;->mediaActions:Lkotlin/collections/EmptyList;

    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getPlaybackState()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getPosition()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getThumbColorScheme()Lcom/android/systemui/monet/ColorScheme;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getThumbnail()Landroidx/compose/ui/graphics/ImageBitmap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;->title:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/controls/controller/ControlInfo$$ExternalSyntheticOutline0;->m(IILjava/lang/CharSequence;)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;->artist:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;->appIcon:Landroidx/compose/ui/graphics/painter/Painter;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Lcom/android/systemui/media/mediaoutput/entity/EntityString;->toLogText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
