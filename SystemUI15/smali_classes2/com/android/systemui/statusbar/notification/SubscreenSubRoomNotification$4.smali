.class public final Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$4;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$4;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.action.RETURN_REMOTE_INPUT_VOICE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "key"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "return"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$4;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    invoke-static {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->-$$Nest$mreturnRemoteInput(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
