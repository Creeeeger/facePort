.class final Lcom/android/systemui/statusbar/notification/collection/coordinator/SettingsChangedCoordinator$mSettingsCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/SettingsChangedCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/SettingsChangedCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SettingsChangedCoordinator$mSettingsCallback$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/SettingsChangedCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 1

    const-string/jumbo v0, "show_notification_snooze"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SettingsChangedCoordinator$mSettingsCallback$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/SettingsChangedCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SettingsChangedCoordinator;->access$updateSnoozeButton(Lcom/android/systemui/statusbar/notification/collection/coordinator/SettingsChangedCoordinator;)V

    :cond_0
    return-void
.end method
