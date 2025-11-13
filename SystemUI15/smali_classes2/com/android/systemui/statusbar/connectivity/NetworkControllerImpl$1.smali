.class public final Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    iget-object v0, p1, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/mobile/MobileMappings$Config;->readConfig(Landroid/content/Context;)Lcom/android/settingslib/mobile/MobileMappings$Config;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    iget-object p1, p1, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
