.class public final Lcom/android/keyguard/CarrierTextManager$4;
.super Lcom/android/systemui/knox/KnoxStateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/CarrierTextManager;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/CarrierTextManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/CarrierTextManager$4;->this$0:Lcom/android/keyguard/CarrierTextManager;

    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUpdateLockscreenHiddenItems()V
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager$4;->this$0:Lcom/android/keyguard/CarrierTextManager;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierTextManager;->updateCarrierText(Landroid/content/Intent;)V

    return-void
.end method
