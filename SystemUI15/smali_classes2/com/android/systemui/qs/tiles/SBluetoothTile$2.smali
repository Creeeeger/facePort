.class public final Lcom/android/systemui/qs/tiles/SBluetoothTile$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/SBluetoothTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$2;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFolderStateChanged(Z)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x2

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$2;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mSubscreenQsPanelController:Lcom/android/systemui/qp/SubscreenQsPanelController;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qp/SubscreenQsPanelController;->getInstance(I)Lcom/android/systemui/qp/SubscreenQSControllerContract$Presenter;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/android/systemui/qp/SubscreenQSControllerContract$Presenter;->registerReceiver(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mSubscreenQsPanelController:Lcom/android/systemui/qp/SubscreenQsPanelController;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qp/SubscreenQsPanelController;->getInstance(I)Lcom/android/systemui/qp/SubscreenQSControllerContract$Presenter;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/android/systemui/qp/SubscreenQSControllerContract$Presenter;->unRegisterReceiver(Z)V

    :cond_1
    :goto_0
    return-void
.end method
