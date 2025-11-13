.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$mUpdateMonitorCallback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$mUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserSwitchComplete(I)V
    .locals 2

    const-string v0, "onUserSwitchComplete : "

    const-string v1, "S.S.N."

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$mUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateNotiShowBlocked()V

    iput p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentUserId:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateBModeStatus()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateSamsungAccount()V

    return-void
.end method
