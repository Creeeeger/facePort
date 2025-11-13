.class public final Lcom/android/systemui/aod/AODAmbientWallpaperHelper$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/aod/AODAmbientWallpaperHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper$2;->this$0:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFolderStateChanged(Z)V
    .locals 2

    xor-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper$2;->this$0:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    iput-boolean p1, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isFolded:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFoldStateChanged: isFolded="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AODAmbientWallpaperHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->updateWonderLandWallpaperState()V

    iget-object p1, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->keyguardViewMediatorLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isAODAmbientWallpaperMode()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setWallpaperSupportsAmbientModeForFold(Z)V

    return-void
.end method
