.class final Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeVolumeChanges$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $this_activeVolumeChanges:Lcom/android/systemui/volume/util/DisplayManagerWrapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/util/DisplayManagerWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeVolumeChanges$1$2;->$this_activeVolumeChanges:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    const-string v0, "WifiDisplayDeviceController"

    const-string/jumbo v1, "unregisterDisplayVolumeListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeVolumeChanges$1$2;->$this_activeVolumeChanges:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    iget-object v0, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->displayVolumeListener:Lcom/android/systemui/volume/util/DisplayManagerWrapper$registerDisplayVolumeListener$1;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/util/SystemServiceExtension;->INSTANCE:Lcom/android/systemui/volume/util/SystemServiceExtension;

    iget-object v1, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/volume/util/SystemServiceExtension;->getDisplayManager(Landroid/content/Context;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->displayVolumeListener:Lcom/android/systemui/volume/util/DisplayManagerWrapper$registerDisplayVolumeListener$1;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->semUnregisterDisplayVolumeListener(Landroid/hardware/display/SemDisplayVolumeListener;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
