.class public final Lcom/android/systemui/lockstar/GoodLockLifecycle$notifyChanged$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/lockstar/GoodLockLifecycle;


# direct methods
.method public constructor <init>(Lcom/android/systemui/lockstar/GoodLockLifecycle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/lockstar/GoodLockLifecycle$notifyChanged$1$1;->this$0:Lcom/android/systemui/lockstar/GoodLockLifecycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/android/systemui/lockstar/PluginLockStarManager$2;

    iget-object p0, p0, Lcom/android/systemui/lockstar/GoodLockLifecycle$notifyChanged$1$1;->this$0:Lcom/android/systemui/lockstar/GoodLockLifecycle;

    iget-boolean p0, p0, Lcom/android/systemui/lockstar/GoodLockLifecycle;->isInstalled:Z

    const-string v0, "onGoodLockAppInstallStateChanged: "

    const-string v1, "LStar|PluginLockStarManager"

    invoke-static {v0, v1, p0}, Lcom/android/settingslib/satellite/SatelliteDialogUtils$requestIsEnabled$2$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p1, Lcom/android/systemui/lockstar/PluginLockStarManager$2;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-virtual {p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->checkGoodLockInstalledState()V

    return-void
.end method
