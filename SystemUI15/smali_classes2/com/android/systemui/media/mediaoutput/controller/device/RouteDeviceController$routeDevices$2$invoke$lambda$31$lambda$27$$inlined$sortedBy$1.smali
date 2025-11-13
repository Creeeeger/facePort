.class public final Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$routeDevices$2$invoke$lambda$31$lambda$27$$inlined$sortedBy$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $deselectableIds$inlined:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$routeDevices$2$invoke$lambda$31$lambda$27$$inlined$sortedBy$1;->$deselectableIds$inlined:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$routeDevices$2$invoke$lambda$31$lambda$27$$inlined$sortedBy$1;->$deselectableIds$inlined:Ljava/util/List;

    invoke-interface {p1}, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    check-cast p2, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$routeDevices$2$invoke$lambda$31$lambda$27$$inlined$sortedBy$1;->$deselectableIds$inlined:Ljava/util/List;

    invoke-interface {p2}, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0
.end method
