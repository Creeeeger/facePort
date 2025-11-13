.class public final Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicyExt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final SLOT_NAME_LOCATION:Ljava/lang/String;

.field public final handler:Landroid/os/Handler;

.field public final iconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

.field public final locationController:Lcom/android/systemui/statusbar/policy/LocationController;

.field public final removeLocationIconRunnable:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicyExt$removeLocationIconRunnable$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicyExt$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicyExt$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/res/Resources;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicyExt;->handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicyExt;->locationController:Lcom/android/systemui/statusbar/policy/LocationController;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicyExt;->iconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    const p1, 0x1040ed8

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicyExt;->SLOT_NAME_LOCATION:Ljava/lang/String;

    new-instance p1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicyExt$removeLocationIconRunnable$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicyExt$removeLocationIconRunnable$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicyExt;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicyExt;->removeLocationIconRunnable:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicyExt$removeLocationIconRunnable$1;

    return-void
.end method
