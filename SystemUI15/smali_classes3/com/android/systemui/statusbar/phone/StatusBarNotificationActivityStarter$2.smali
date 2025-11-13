.class public final Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

.field public final synthetic val$animate:Z

.field public final synthetic val$appUid:I

.field public final synthetic val$intent:Landroid/content/Intent;

.field public final synthetic val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZLandroid/content/Intent;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2;->val$animate:Z

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2;->val$intent:Landroid/content/Intent;

    iput p5, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2;->val$appUid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 7

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2;->val$intent:Landroid/content/Intent;

    new-instance v6, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2$$ExternalSyntheticLambda0;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2;->val$animate:Z

    iget v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2;->val$appUid:I

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZLandroid/content/Intent;I)V

    invoke-static {v6}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final willRunAnimationOnKeyguard()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2;->val$animate:Z

    return p0
.end method
