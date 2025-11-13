.class public final Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl$setCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl$setCallback$1;->this$0:Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/controls/management/ControlsListingController;

    iget-object p0, p0, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl$setCallback$1;->this$0:Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;->listingCallback:Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl$listingCallback$1;

    check-cast p1, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    invoke-virtual {p1, p0}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->addCallback(Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;)V

    return-void
.end method
