.class public final Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$handler$1;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$handler$1;->this$0:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->MSG_USER_ACTIVITY_TIMEOUT_CHANGED:I

    if-ne v0, v1, :cond_1

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$handler$1;->this$0:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->updateUserActivityTimeout(Z)V

    :cond_1
    return-void
.end method
