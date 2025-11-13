.class public final Lcom/android/systemui/media/mediaoutput/controller/device/ChromeCastDeviceController;
.super Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/mediaoutput/controller/device/ChromeCastDeviceController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/mediaoutput/controller/device/ChromeCastDeviceController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Landroidx/datastore/core/DataStore;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/media/AudioManager;",
            "Landroidx/datastore/core/DataStore;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroidx/datastore/core/DataStore;)V

    const-string p0, "ChromeCastDeviceController"

    const-string p1, "init()"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final createGroupDevice(Landroid/media/RoutingSessionInfo;Ljava/util/List;)Lcom/android/systemui/media/mediaoutput/entity/GroupDevice;
    .locals 12

    new-instance p0, Lcom/android/systemui/media/mediaoutput/entity/GroupDevice;

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;->Companion:Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;

    sget-object v3, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object v3, Lcom/android/systemui/media/mediaoutput/icons/device/GroupSpeakerKt;->GroupSpeaker$delegate:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;->toConverter(Landroidx/compose/ui/graphics/vector/ImageVector;)Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;

    move-result-object v4

    sget-object v0, Lcom/android/systemui/media/mediaoutput/icons/Icons$Badge;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Badge;

    sget-object v0, Lcom/android/systemui/media/mediaoutput/icons/badge/ChromecastKt;->Chromecast$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getVolume()I

    move-result v6

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getVolumeMax()I

    move-result v7

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/16 v10, 0x84

    const/4 v11, 0x0

    move-object v0, p0

    move-object v9, p2

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/media/mediaoutput/entity/GroupDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/vector/ImageVector;IILcom/android/systemui/media/mediaoutput/entity/State;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object p2, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;->ChromeCastGroup:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/entity/GroupDevice;->controllerType:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/entity/GroupDevice;->routingSessionInfo:Landroid/media/RoutingSessionInfo;

    return-object p0
.end method

.method public final createRouteDevice(Landroid/media/MediaRoute2Info;Lcom/android/systemui/media/mediaoutput/entity/State;ZZZZ)Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;
    .locals 16

    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/media/mediaoutput/ext/MediaRoute2InfoExtKt;->getDisplayName(Landroid/media/MediaRoute2Info;)Ljava/lang/CharSequence;

    move-result-object v2

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;->Companion:Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/media/mediaoutput/ext/MediaRoute2InfoExtKt;->getSimpleIcon(Landroid/media/MediaRoute2Info;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;->toConverter(Landroidx/compose/ui/graphics/vector/ImageVector;)Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaRoute2Info;->getVolume()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaRoute2Info;->getVolumeMax()I

    move-result v7

    new-instance v15, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v13, 0x14

    const/4 v14, 0x0

    move-object v0, v15

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/vector/ImageVector;IILcom/android/systemui/media/mediaoutput/entity/State;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, p1

    iput-object v0, v15, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->mediaRoute2Info:Landroid/media/MediaRoute2Info;

    move/from16 v0, p6

    iput-boolean v0, v15, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->isInAppCasting:Z

    return-object v15
.end method

.method public final transfer(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V
    .locals 2

    const-string/jumbo v0, "transfer() - "

    const-string v1, "ChromeCastDeviceController"

    invoke-static {v0, p1, v1}, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;

    iget-object v0, v0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->mediaRoute2Info:Landroid/media/MediaRoute2Info;

    if-eqz v0, :cond_0

    move-object v1, v0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->getRouter2Manager()Landroid/media/MediaRouter2Manager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->packageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, p0, v1, v0}, Landroid/media/MediaRouter2Manager;->transfer(Ljava/lang/String;Landroid/media/MediaRoute2Info;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->transfer(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V

    :goto_0
    return-void
.end method
