.class public final Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter$1;->this$0:Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter$1;->this$0:Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mWifiTile:Lcom/android/systemui/qs/tiles/WifiTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;

    const/16 v0, 0x67

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
