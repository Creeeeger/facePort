.class public final Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicyExt$removeLocationIconRunnable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicyExt;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicyExt;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicyExt$removeLocationIconRunnable$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicyExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicyExt$removeLocationIconRunnable$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicyExt;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicyExt;->iconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicyExt;->SLOT_NAME_LOCATION:Ljava/lang/String;

    const/4 v1, 0x0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    return-void
.end method
