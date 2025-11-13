.class public final Lcom/android/systemui/qs/tiles/SRotationLockTile$2;
.super Lcom/android/systemui/qs/SettingObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/SRotationLockTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/SRotationLockTile;Lcom/android/systemui/util/settings/SettingsProxy;Landroid/os/Handler;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile$2;->this$0:Lcom/android/systemui/qs/tiles/SRotationLockTile;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/qs/SettingObserver;-><init>(Lcom/android/systemui/util/settings/SettingsProxy;Landroid/os/Handler;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final handleValueChanged(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile$2;->this$0:Lcom/android/systemui/qs/tiles/SRotationLockTile;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRefreshState(Ljava/lang/Object;)V

    return-void
.end method
