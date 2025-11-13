.class public final synthetic Lcom/android/systemui/statusbar/policy/LocationControllerImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mDeviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

    const-string/jumbo v0, "privacy"

    const-string v1, "location_indicators_small_enabled"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/systemui/util/DeviceConfigProxy;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mSupportChnNlpIcon:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v0

    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mShouldDisplayAllAccesses:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const/4 v1, -0x2

    const-string v3, "locationShowSystemOps"

    invoke-interface {p1, v3, v2, v1}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v0, :cond_2

    move v2, v0

    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mShowSystemAccessesFlag:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->updateActiveLocationRequests()V

    return-void
.end method
