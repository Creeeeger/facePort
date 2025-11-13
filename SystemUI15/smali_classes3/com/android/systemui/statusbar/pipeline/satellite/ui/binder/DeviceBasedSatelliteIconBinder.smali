.class public final Lcom/android/systemui/statusbar/pipeline/satellite/ui/binder/DeviceBasedSatelliteIconBinder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/pipeline/satellite/ui/binder/DeviceBasedSatelliteIconBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/satellite/ui/binder/DeviceBasedSatelliteIconBinder;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/pipeline/satellite/ui/binder/DeviceBasedSatelliteIconBinder;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/pipeline/satellite/ui/binder/DeviceBasedSatelliteIconBinder;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/satellite/ui/binder/DeviceBasedSatelliteIconBinder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bind(Lcom/android/systemui/statusbar/pipeline/shared/ui/view/SingleBindableStatusBarIconView;Lcom/android/systemui/statusbar/pipeline/satellite/ui/viewmodel/DeviceBasedSatelliteViewModel;)Lcom/android/systemui/statusbar/pipeline/shared/ui/view/SingleBindableStatusBarIconView$Companion$withDefaultBinding$2;
    .locals 4

    sget-object v0, Lcom/android/systemui/statusbar/pipeline/shared/ui/view/SingleBindableStatusBarIconView;->Companion:Lcom/android/systemui/statusbar/pipeline/shared/ui/view/SingleBindableStatusBarIconView$Companion;

    new-instance v1, Lcom/android/systemui/statusbar/pipeline/satellite/ui/binder/DeviceBasedSatelliteIconBinder$bind$1;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/pipeline/satellite/ui/binder/DeviceBasedSatelliteIconBinder$bind$1;-><init>(Lcom/android/systemui/statusbar/pipeline/satellite/ui/viewmodel/DeviceBasedSatelliteViewModel;)V

    new-instance v2, Lcom/android/systemui/statusbar/pipeline/satellite/ui/binder/DeviceBasedSatelliteIconBinder$bind$2;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p0, v3}, Lcom/android/systemui/statusbar/pipeline/satellite/ui/binder/DeviceBasedSatelliteIconBinder$bind$2;-><init>(Lcom/android/systemui/statusbar/pipeline/satellite/ui/viewmodel/DeviceBasedSatelliteViewModel;Lcom/android/systemui/statusbar/pipeline/shared/ui/view/SingleBindableStatusBarIconView;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v1, v2}, Lcom/android/systemui/statusbar/pipeline/shared/ui/view/SingleBindableStatusBarIconView$Companion;->withDefaultBinding(Lcom/android/systemui/statusbar/pipeline/shared/ui/view/SingleBindableStatusBarIconView;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/statusbar/pipeline/shared/ui/view/SingleBindableStatusBarIconView$Companion$withDefaultBinding$2;

    move-result-object p0

    return-object p0
.end method
