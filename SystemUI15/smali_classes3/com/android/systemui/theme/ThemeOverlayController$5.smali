.class public final Lcom/android/systemui/theme/ThemeOverlayController$5;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/theme/ThemeOverlayController;

.field public final synthetic val$updateColorsForContrast:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/theme/ThemeOverlayController;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/theme/ThemeOverlayController$5;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    iput-object p3, p0, Lcom/android/systemui/theme/ThemeOverlayController$5;->val$updateColorsForContrast:Ljava/lang/Runnable;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLjava/util/Collection;II)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/theme/ThemeOverlayController$5;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    iget-object p1, p1, Lcom/android/systemui/theme/ThemeOverlayController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string/jumbo p2, "theme_customization_overlay_packages"

    invoke-interface {p1, p2, p4}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "Overlay changed for user: "

    const-string p2, "ThemeOverlayController"

    invoke-static {p4, p1, p2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/theme/ThemeOverlayController$5;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    iget-object p1, p1, Lcom/android/systemui/theme/ThemeOverlayController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p1

    if-eq p1, p4, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/theme/ThemeOverlayController$5;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    iget-object p1, p1, Lcom/android/systemui/theme/ThemeOverlayController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-virtual {p1, p4}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isUserSetup(I)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "Theme application deferred when setting changed."

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayController$5;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mDeferredThemeEvaluation:Z

    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/theme/ThemeOverlayController$5;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    iget-boolean p3, p1, Lcom/android/systemui/theme/ThemeOverlayController;->mSkipSettingChange:Z

    if-eqz p3, :cond_3

    const-string p1, "Skipping setting change"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayController$5;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mSkipSettingChange:Z

    return-void

    :cond_3
    iget-object p1, p1, Lcom/android/systemui/theme/ThemeOverlayController;->mBgExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayController$5;->val$updateColorsForContrast:Ljava/lang/Runnable;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
