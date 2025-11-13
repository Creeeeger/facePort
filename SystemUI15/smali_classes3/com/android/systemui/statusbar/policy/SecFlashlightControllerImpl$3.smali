.class public final Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecFlashlightController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->FLASHLIGHT_BRIGHTNESS_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->-$$Nest$fgetmSettingsHelper(Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->getFlashLightLevel()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    const/4 v0, 0x5

    if-ge v2, v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->FLASHLIGHT_VALUE:[I

    aget v0, v0, v2

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_1
    iput v2, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mFlashlightLevel:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "FlashlightLevel changed : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mFlashlightLevel:I

    invoke-static {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->FLASHLIGHT_SOS_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mIsEnabled:Z

    if-eqz p1, :cond_4

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->-$$Nest$fgetmSettingsHelper(Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isFlashLightSOSEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "Flashlight notification cancelled due to sos"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->updateFlashlightNotification(Z)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->CAMERA_FLASH_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->-$$Nest$fgetmSettingsHelper(Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isCameraFlashNotificationOn()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mIsCameraFlashNotiOn:Z

    :cond_4
    :goto_2
    return-void
.end method
