.class public final Lcom/android/systemui/qs/tiles/SRotationLockTile$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/SRotationLockTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/SRotationLockTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile$4;->this$0:Lcom/android/systemui/qs/tiles/SRotationLockTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRotationLockStateChanged(ZZ)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile$4;->this$0:Lcom/android/systemui/qs/tiles/SRotationLockTile;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method
