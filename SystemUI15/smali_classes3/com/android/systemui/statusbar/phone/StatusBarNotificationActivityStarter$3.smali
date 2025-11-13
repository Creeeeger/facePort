.class public final Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

.field public final synthetic val$animate:Z

.field public final synthetic val$showHistory:Z

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;ZLandroid/view/View;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$3;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$3;->val$showHistory:Z

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$3;->val$view:Landroid/view/View;

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$3;->val$animate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$3;->val$view:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$3$$ExternalSyntheticLambda0;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$3;->val$showHistory:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$3;->val$animate:Z

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$3;ZLandroid/view/View;Z)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final willRunAnimationOnKeyguard()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$3;->val$animate:Z

    return p0
.end method
