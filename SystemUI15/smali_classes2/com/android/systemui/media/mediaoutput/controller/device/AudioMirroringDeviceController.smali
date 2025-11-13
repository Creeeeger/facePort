.class public final Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController;
.super Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController$Companion;


# instance fields
.field public final context:Landroid/content/Context;

.field public volatile mediaPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController;->Companion:Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Landroidx/datastore/core/DataStore;)V
    .locals 2
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

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController;->context:Landroid/content/Context;

    const-string p2, ""

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController;->mediaPackageName:Ljava/lang/String;

    const-string p0, "init()"

    const-string p2, "AudioMirroringDeviceController"

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/content/Intent;

    const-string p3, "com.samsung.android.audiomirroring.service.START_AUDIO_CAST"

    invoke-direct {p0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "com.samsung.android.audiomirroring"

    invoke-virtual {p0, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startAudioMirroringService() - intent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " / extra: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

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

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getVolume()I

    move-result v6

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getVolumeMax()I

    move-result v7

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/16 v10, 0x94

    const/4 v11, 0x0

    move-object v0, p0

    move-object v9, p2

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/media/mediaoutput/entity/GroupDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/vector/ImageVector;IILcom/android/systemui/media/mediaoutput/entity/State;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object p2, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;->AudioMirroringGroup:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

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

    new-instance v15, Lcom/android/systemui/media/mediaoutput/entity/AudioMirroringDevice;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v5, 0x0

    const/4 v12, 0x0

    const/4 v3, 0x0

    const/16 v13, 0x814

    const/4 v14, 0x0

    move-object v0, v15

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/media/mediaoutput/entity/AudioMirroringDevice;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/vector/ImageVector;IILcom/android/systemui/media/mediaoutput/entity/State;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, p1

    iput-object v0, v15, Lcom/android/systemui/media/mediaoutput/entity/AudioMirroringDevice;->mediaRoute2Info:Landroid/media/MediaRoute2Info;

    return-object v15
.end method

.method public final getAvailableSession(Ljava/util/List;)Landroid/media/RoutingSessionInfo;
    .locals 4

    sget-object v0, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController;->Companion:Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController$Companion;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :try_start_0
    sget v2, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.samsung.android.audiomirroring"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "request_package_name"

    invoke-virtual {v1, v2, v3, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget v2, Lkotlin/Result;->$r8$clinit:I

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, v1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v1, v2

    :goto_0
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    instance-of v2, v1, Lkotlin/Result$Failure;

    if-eqz v2, :cond_1

    move-object v1, v0

    :cond_1
    check-cast v1, Landroid/os/Bundle;

    const-string v2, ""

    if-eqz v1, :cond_2

    const-string v3, "mediaPackageName"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "getAudioMirroringPackageName() - "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AudioMirroringDeviceController"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    :cond_2
    invoke-static {v2}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_6

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController;->mediaPackageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, v0

    :goto_2
    if-eqz v2, :cond_6

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->dropLast(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RoutingSessionInfo;

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->getRouter2Manager()Landroid/media/MediaRouter2Manager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/media/MediaRouter2Manager;->releaseSession(Landroid/media/RoutingSessionInfo;)V

    goto :goto_3

    :cond_5
    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/RoutingSessionInfo;

    if-eqz p0, :cond_6

    move-object v0, p0

    :cond_6
    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController;->mediaPackageName:Ljava/lang/String;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    const-string v1, "."

    invoke-static {p0, v1, v0}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const-string p0, "com.samsung.android.audiomirroring"

    goto :goto_1

    :cond_1
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method public final select(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V
    .locals 3

    const-string/jumbo v0, "select() - "

    const-string v1, "AudioMirroringDeviceController"

    invoke-static {v0, p1, v1}, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/android/systemui/media/mediaoutput/entity/AudioMirroringDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController;->context:Landroid/content/Context;

    const-string/jumbo v1, "selectRoute"

    sget-object v2, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController;->Companion:Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController$Companion;

    invoke-static {v2, v0, v1}, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController$Companion;->access$setAudioMirroringSpeakerMode(Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController$Companion;Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->select(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V

    return-void
.end method

.method public final setPackageName(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "."

    invoke-static {p1, v1, v0}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController;->mediaPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->getControllerScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController$packageName$4;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController$packageName$4;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final transfer(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V
    .locals 7

    const-string/jumbo v0, "setAudioMirroringPackageName() : "

    const-string/jumbo v1, "transfer() - "

    const-string v2, "AudioMirroringDeviceController"

    invoke-static {v1, p1, v2}, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;Ljava/lang/String;)V

    instance-of v1, p1, Lcom/android/systemui/media/mediaoutput/entity/AudioMirroringDevice;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController;->Companion:Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController$Companion;

    iget-object v4, p0, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController;->mediaPackageName:Ljava/lang/String;

    if-nez v5, :cond_0

    const-string v5, ""

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.samsung.android.audiomirroring"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "set_package_name"

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v6, "mediaPackageName"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget v1, Lkotlin/Result;->$r8$clinit:I

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    sget-object v0, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController;->Companion:Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController$Companion;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController;->context:Landroid/content/Context;

    const-string/jumbo v2, "transfer"

    invoke-static {v0, v1, v2}, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController$Companion;->access$setAudioMirroringSpeakerMode(Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController$Companion;Landroid/content/Context;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/media/mediaoutput/entity/AudioMirroringDevice;

    iget-object v0, v0, Lcom/android/systemui/media/mediaoutput/entity/AudioMirroringDevice;->mediaRoute2Info:Landroid/media/MediaRoute2Info;

    if-eqz v0, :cond_2

    move-object v3, v0

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->getRouter2Manager()Landroid/media/MediaRouter2Manager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, p0, v3, v0}, Landroid/media/MediaRouter2Manager;->transfer(Ljava/lang/String;Landroid/media/MediaRoute2Info;Landroid/os/UserHandle;)V

    goto :goto_1

    :cond_3
    invoke-super {p0, p1}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->transfer(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V

    :goto_1
    return-void
.end method
