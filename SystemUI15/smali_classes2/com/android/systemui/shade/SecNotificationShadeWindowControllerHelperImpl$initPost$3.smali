.class public final Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$initPost$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# instance fields
.field public final synthetic $state:Lcom/android/systemui/shade/NotificationShadeWindowState;

.field public final synthetic this$0:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;Lcom/android/systemui/shade/NotificationShadeWindowState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$initPost$3;->this$0:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    iput-object p2, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$initPost$3;->$state:Lcom/android/systemui/shade/NotificationShadeWindowState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFolderStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$initPost$3;->this$0:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    iget-boolean v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->isKeyguardScreenRotation:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->isKeyguardScreenRotation:Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->isLockScreenRotationAllowed()Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->isKeyguardScreenRotation:Z

    :goto_0
    iget-boolean p1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->isKeyguardScreenRotation:Z

    if-eq v1, p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$initPost$3;->$state:Lcom/android/systemui/shade/NotificationShadeWindowState;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    :cond_1
    return-void
.end method
