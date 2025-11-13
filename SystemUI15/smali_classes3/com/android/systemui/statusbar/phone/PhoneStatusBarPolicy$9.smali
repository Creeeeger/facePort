.class public final Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$9;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$9;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocaleListChanged()V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$9;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f1312aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    check-cast v1, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotAlarmClock:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIconContentDescription(Ljava/lang/CharSequence;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f130126

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotVibrate:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIconContentDescription(Ljava/lang/CharSequence;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f130125

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotMute:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIconContentDescription(Ljava/lang/CharSequence;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f130140

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHotspot:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIconContentDescription(Ljava/lang/CharSequence;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    const-string v3, "SystemUi.STATUS_BAR_WORK_ICON_ACCESSIBILITY"

    invoke-virtual {v0, v3, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotManagedProfile:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIconContentDescription(Ljava/lang/CharSequence;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f130078

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotDataSaver:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIconContentDescription(Ljava/lang/CharSequence;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    sget-object v2, Lcom/android/systemui/privacy/PrivacyType;->TYPE_MICROPHONE:Lcom/android/systemui/privacy/PrivacyType;

    invoke-virtual {v2}, Lcom/android/systemui/privacy/PrivacyType;->getNameId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v3, 0x7f130d67

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotMicrophone:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIconContentDescription(Ljava/lang/CharSequence;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    sget-object v2, Lcom/android/systemui/privacy/PrivacyType;->TYPE_CAMERA:Lcom/android/systemui/privacy/PrivacyType;

    invoke-virtual {v2}, Lcom/android/systemui/privacy/PrivacyType;->getNameId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotCamera:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIconContentDescription(Ljava/lang/CharSequence;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f1300ba

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotLocation:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIconContentDescription(Ljava/lang/CharSequence;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f13012c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotSensorsOff:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIconContentDescription(Ljava/lang/CharSequence;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f13010b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotBluetooth:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIconContentDescription(Ljava/lang/CharSequence;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f130056

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotBluetoothConnected:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIconContentDescription(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-void
.end method
