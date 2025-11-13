.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$displayListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$displayListener$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFolderStateChanged(Z)V
    .locals 2

    sget-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->TAG:Ljava/lang/String;

    const-string v1, "isFolderOpened: "

    invoke-static {v1, v0, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$displayListener$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->isForce:Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
