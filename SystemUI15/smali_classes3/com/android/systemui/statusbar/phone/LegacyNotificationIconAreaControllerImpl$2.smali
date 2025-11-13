.class public final Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 2

    const-string/jumbo v0, "simple_status_bar"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;

    if-eqz v0, :cond_1

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p1, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->getStatusBarNotificationStyle()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mStatusBarNotificationStyle:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->updateStatusBarIcons()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->resetViewStates()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->calculateIconXTranslations()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->applyIconStates()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mKeyguardStatusBarIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->resetViewStates()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mKeyguardStatusBarIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->calculateIconXTranslations()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mKeyguardStatusBarIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->applyIconStates()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->applyNotificationIconsTint()V

    goto :goto_0

    :cond_1
    const-string v0, "lockscreen_minimizing_notification"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p1, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isNotificationAsDot()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mIsNotificationDotOnlyOn:Z

    :cond_2
    :goto_0
    return-void
.end method
