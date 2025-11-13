.class public final Lcom/android/systemui/media/mediaoutput/entity/RemoteDevice;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;


# static fields
.field public static final Companion:Lcom/android/systemui/media/mediaoutput/entity/RemoteDevice$Companion;


# instance fields
.field public final controllerType:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

.field public final icon:Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;

.field public final id:Ljava/lang/String;

.field public final name:Ljava/lang/CharSequence;

.field public final state:Lcom/android/systemui/media/mediaoutput/entity/State;

.field public final volume:I

.field public final volumeMax:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/mediaoutput/entity/RemoteDevice$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/mediaoutput/entity/RemoteDevice$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/entity/RemoteDevice;->Companion:Lcom/android/systemui/media/mediaoutput/entity/RemoteDevice$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/entity/RemoteDevice;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/entity/RemoteDevice;->name:Ljava/lang/CharSequence;

    iput p3, p0, Lcom/android/systemui/media/mediaoutput/entity/RemoteDevice;->volume:I

    iput p4, p0, Lcom/android/systemui/media/mediaoutput/entity/RemoteDevice;->volumeMax:I

    sget-object p1, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;->Remote:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/entity/RemoteDevice;->controllerType:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    sget-object p1, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;->Companion:Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;

    sget-object p2, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    invoke-static {}, Lcom/android/systemui/media/mediaoutput/icons/device/TvKt;->getTv()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;->toConverter(Landroidx/compose/ui/graphics/vector/ImageVector;)Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/entity/RemoteDevice;->icon:Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;

    sget-object p1, Lcom/android/systemui/media/mediaoutput/entity/State;->SELECTED:Lcom/android/systemui/media/mediaoutput/entity/State;

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/entity/RemoteDevice;->state:Lcom/android/systemui/media/mediaoutput/entity/State;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/media/mediaoutput/entity/RemoteDevice;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/media/mediaoutput/entity/RemoteDevice;

    iget-object v1, p1, Lcom/android/systemui/media/mediaoutput/entity/RemoteDevice;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/entity/RemoteDevice;->id:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/entity/RemoteDevice;->name:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/media/mediaoutput/entity/RemoteDevice;->name:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/systemui/media/mediaoutput/entity/RemoteDevice;->volume:I

    iget v3, p1, Lcom/android/systemui/media/mediaoutput/entity/RemoteDevice;->volume:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/android/systemui/media/mediaoutput/entity/RemoteDevice;->volumeMax:I

    iget p1, p1, Lcom/android/systemui/media/mediaoutput/entity/RemoteDevice;->volumeMax:I

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getBadge()Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getControllerType()Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/RemoteDevice;->controllerType:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    return-object p0
.end method

.method public final getDescription()Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getIcon()Landroidx/compose/ui/graphics/painter/Painter;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/RemoteDevice;->icon:Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;

    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/RemoteDevice;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getName()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/RemoteDevice;->name:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getState()Lcom/android/systemui/media/mediaoutput/entity/State;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/RemoteDevice;->state:Lcom/android/systemui/media/mediaoutput/entity/State;

    return-object p0
.end method

.method public final getVolume()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/media/mediaoutput/entity/RemoteDevice;->volume:I

    return p0
.end method

.method public final getVolumeMax()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/media/mediaoutput/entity/RemoteDevice;->volumeMax:I

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/entity/RemoteDevice;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/entity/RemoteDevice;->name:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/controls/controller/ControlInfo$$ExternalSyntheticOutline0;->m(IILjava/lang/CharSequence;)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/mediaoutput/entity/RemoteDevice;->volume:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget p0, p0, Lcom/android/systemui/media/mediaoutput/entity/RemoteDevice;->volumeMax:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

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
