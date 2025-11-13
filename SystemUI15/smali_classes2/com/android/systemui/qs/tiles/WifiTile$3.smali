.class public final Lcom/android/systemui/qs/tiles/WifiTile$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/WifiTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$3;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile$3;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mFoldStateChangedListener:Lcom/android/systemui/qs/tiles/WifiTile$2;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
