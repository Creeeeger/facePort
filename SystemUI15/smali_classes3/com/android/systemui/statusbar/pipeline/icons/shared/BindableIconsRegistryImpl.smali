.class public final Lcom/android/systemui/statusbar/pipeline/icons/shared/BindableIconsRegistryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/pipeline/icons/shared/BindableIconsRegistry;


# instance fields
.field public final bindableIcons:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/satellite/ui/DeviceBasedSatelliteBindableIcon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/icons/shared/BindableIconsRegistryImpl;->bindableIcons:Ljava/util/List;

    return-void
.end method
