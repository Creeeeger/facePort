.class public final Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# instance fields
.field public final synthetic val$action:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$OnKeyguardDismissedAction;

.field public final synthetic val$animate:Z

.field public final synthetic val$intent:Landroid/app/PendingIntent;

.field public final synthetic val$isActivityIntent:Z

.field public final synthetic val$showOverLockscreen:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$OnKeyguardDismissedAction;Landroid/app/PendingIntent;ZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1;->val$action:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$OnKeyguardDismissedAction;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1;->val$intent:Landroid/app/PendingIntent;

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1;->val$isActivityIntent:Z

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1;->val$animate:Z

    iput-boolean p6, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1;->val$showOverLockscreen:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1;->val$intent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1;->val$action:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$OnKeyguardDismissedAction;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1;->val$isActivityIntent:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1;->val$animate:Z

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1;->val$showOverLockscreen:Z

    invoke-interface {v1, v0, v2, v3, p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$OnKeyguardDismissedAction;->onDismiss(Landroid/app/PendingIntent;ZZZ)V

    const/4 p0, 0x0

    return p0
.end method

.method public final willRunAnimationOnKeyguard()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1;->val$animate:Z

    return p0
.end method
