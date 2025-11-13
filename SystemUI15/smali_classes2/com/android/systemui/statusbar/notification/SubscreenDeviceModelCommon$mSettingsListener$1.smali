.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$mSettingsListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$mSettingsListener$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 1

    const-string v0, "lock_screen_show_notifications"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "turn_on_cover_screen_for_notification"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "cover_screen_show_notification"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$mSettingsListener$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->updateShowNotificationTip()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateNotiShowBlocked()V

    :cond_1
    return-void
.end method
