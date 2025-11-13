.class public final Lcom/android/systemui/shade/NotificationPanelViewController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/NotificationPanelViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$1;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChangedLockStarData(Z)V
    .locals 2

    sget-object v0, Lcom/android/systemui/shade/NotificationPanelViewController;->M_DUMMY_DIRTY_RECT:Landroid/graphics/Rect;

    const-string v0, "onChangedLockStarData: "

    const-string v1, "NotificationPanelView"

    invoke-static {v0, v1, p1}, Lcom/android/settingslib/satellite/SatelliteDialogUtils$requestIsEnabled$2$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$1;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockStarEnabled:Z

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateLockStarContainer()V

    return-void
.end method

.method public final request(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method
