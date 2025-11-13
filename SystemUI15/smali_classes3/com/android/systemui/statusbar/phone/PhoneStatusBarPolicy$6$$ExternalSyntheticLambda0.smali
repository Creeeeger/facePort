.class public final synthetic Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$6$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$6;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$6;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$6$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$6;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$6$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$6$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$6;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$6$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    check-cast v1, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotSensorsOff:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    return-void
.end method
