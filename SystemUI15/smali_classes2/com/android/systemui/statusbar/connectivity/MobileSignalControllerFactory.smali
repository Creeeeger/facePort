.class public final Lcom/android/systemui/statusbar/connectivity/MobileSignalControllerFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final callbackHandler:Lcom/android/systemui/statusbar/connectivity/CallbackHandler;

.field public final carrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

.field public final context:Landroid/content/Context;

.field public final mobileMappings:Lcom/android/systemui/statusbar/pipeline/mobile/util/MobileMappingsProxy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/connectivity/CallbackHandler;Lcom/android/systemui/util/CarrierConfigTracker;Lcom/android/systemui/statusbar/pipeline/mobile/util/MobileMappingsProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalControllerFactory;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalControllerFactory;->callbackHandler:Lcom/android/systemui/statusbar/connectivity/CallbackHandler;

    iput-object p3, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalControllerFactory;->carrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

    iput-object p4, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalControllerFactory;->mobileMappings:Lcom/android/systemui/statusbar/pipeline/mobile/util/MobileMappingsProxy;

    return-void
.end method
