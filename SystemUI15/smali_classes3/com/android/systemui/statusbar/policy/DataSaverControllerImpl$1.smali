.class public final Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1;
.super Landroid/net/NetworkPolicyManager$Listener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;

    invoke-direct {p0}, Landroid/net/NetworkPolicyManager$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRestrictBackgroundChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1$1;-><init>(Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
