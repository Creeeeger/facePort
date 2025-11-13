.class public final Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl$userChangedCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl$userChangedCallback$1;->this$0:Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProfilesChanged(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 0

    sget p2, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->$r8$clinit:I

    const/4 p2, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl$userChangedCallback$1;->this$0:Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->updateValues(IZ)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->onUserSwitched()V

    return-void
.end method
