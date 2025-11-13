.class public final Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/SmartReplyInflater;


# instance fields
.field public final constants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

.field public final context:Landroid/content/Context;

.field public final keyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

.field public final notifManager:Landroid/app/INotificationManager;

.field public final remoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field public final smartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/SmartReplyConstants;Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/SmartReplyController;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl;->constants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl;->keyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl;->remoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl;->smartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl;->context:Landroid/content/Context;

    sget-boolean p1, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_NOTIFICATION_HISTORY:Z

    if-eqz p1, :cond_0

    const-string p1, "notification"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl;->notifManager:Landroid/app/INotificationManager;

    return-void
.end method

.method public static final access$createRemoteInputIntent(Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl;Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->remoteInput:Landroid/app/RemoteInput;

    invoke-virtual {v0}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const/high16 v0, 0x10000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/app/RemoteInput;

    const/4 v2, 0x0

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->remoteInput:Landroid/app/RemoteInput;

    aput-object p1, v1, v2

    invoke-static {v1, p2, p0}, Landroid/app/RemoteInput;->addResultsToIntent([Landroid/app/RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V

    invoke-static {p2, v0}, Landroid/app/RemoteInput;->setResultsSource(Landroid/content/Intent;I)V

    return-object p2
.end method
