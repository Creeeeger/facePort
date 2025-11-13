.class public final synthetic Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$3;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$3;

    iput p2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$3$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$3;

    iget p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$3$$ExternalSyntheticLambda0;->f$1:I

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$3;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    sget-object v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->SHOW_LOCKSCREEN:Landroid/net/Uri;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLockscreenSettingsObserver:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$5;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLockScreenUris:Ljava/util/Collection;

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v4, v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$5;->onChange(ZLjava/util/Collection;ILandroid/os/UserHandle;)V

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->updateDpcSettings(I)Z

    invoke-static {}, Landroid/app/Flags;->keyguardPrivateNotifications()Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->getPrivateNotificationsAllowed()Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mKeyguardAllowingNotifications:Z

    :cond_0
    return-void
.end method
