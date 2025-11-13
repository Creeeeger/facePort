.class public final Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$setHasTopUi$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $hasTopUiChanged:Z

.field public final synthetic this$0:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$setHasTopUi$1;->this$0:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    iput-boolean p2, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$setHasTopUi$1;->$hasTopUiChanged:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$setHasTopUi$1;->this$0:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    iget-object v0, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->activityManager:Landroid/app/IActivityManager;

    iget-boolean p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$setHasTopUi$1;->$hasTopUiChanged:Z

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->setHasTopUi(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "NotificationShadeWindowController"

    const-string v1, "Failed to call setHasTopUi"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
