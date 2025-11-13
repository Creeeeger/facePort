.class public final Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$deviceProvisionedListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$deviceProvisionedListener$1;->this$0:Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserSetupChanged()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$deviceProvisionedListener$1;->this$0:Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isCurrentUserSetup()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->userSetup:Z

    return-void
.end method
