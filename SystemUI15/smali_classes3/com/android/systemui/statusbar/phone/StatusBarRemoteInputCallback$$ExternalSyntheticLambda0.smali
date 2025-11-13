.class public final synthetic Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;

.field public final synthetic f$1:Landroid/app/PendingIntent;

.field public final synthetic f$2:Ljava/lang/Integer;

.field public final synthetic f$3:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1$$ExternalSyntheticLambda0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;Landroid/app/PendingIntent;Ljava/lang/Integer;Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1$$ExternalSyntheticLambda0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback$$ExternalSyntheticLambda0;->f$1:Landroid/app/PendingIntent;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback$$ExternalSyntheticLambda0;->f$3:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback$$ExternalSyntheticLambda0;->f$1:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mActionClickLogger:Lcom/android/systemui/statusbar/ActionClickLogger;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Integer;

    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/statusbar/ActionClickLogger;->logKeyguardGone(Landroid/app/PendingIntent;Ljava/lang/Integer;)V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback$$ExternalSyntheticLambda0;->f$3:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1$$ExternalSyntheticLambda0;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1$$ExternalSyntheticLambda0;->handleClick()Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, v1, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    invoke-interface {p0}, Lcom/android/systemui/shade/ShadeController;->closeShadeIfOpen()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
