.class final Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionsRepositoryImpl$deviceServiceState$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionsRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionsRepositoryImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionsRepositoryImpl$deviceServiceState$1;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionsRepositoryImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroid/content/Intent;

    check-cast p2, Landroid/content/BroadcastReceiver;

    const-string p2, "android.telephony.extra.SUBSCRIPTION_INDEX"

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionsRepositoryImpl$deviceServiceState$1;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionsRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionsRepositoryImpl;->logger:Lcom/android/systemui/statusbar/pipeline/mobile/data/MobileInputLogger;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/pipeline/mobile/data/MobileInputLogger;->logTopLevelServiceStateBroadcastMissingExtras(I)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionsRepositoryImpl$deviceServiceState$1;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionsRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionsRepositoryImpl;->logger:Lcom/android/systemui/statusbar/pipeline/mobile/data/MobileInputLogger;

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/MobileInputLogger;->logTopLevelServiceStateBroadcastEmergencyOnly(ILandroid/telephony/ServiceState;)V

    if-ne p2, v0, :cond_1

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/ServiceStateModel;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/ServiceStateModel$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/ServiceStateModel;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result p0

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/ServiceStateModel;-><init>(Z)V

    :cond_1
    :goto_0
    return-object v1
.end method
