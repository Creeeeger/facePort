.class final Lcom/android/systemui/shade/data/repository/PrivacyChipRepositoryImpl$isMicCameraIndicationEnabled$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $callback:Lcom/android/systemui/shade/data/repository/PrivacyChipRepositoryImpl$isMicCameraIndicationEnabled$1$callback$1;

.field final synthetic this$0:Lcom/android/systemui/shade/data/repository/PrivacyChipRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/data/repository/PrivacyChipRepositoryImpl;Lcom/android/systemui/shade/data/repository/PrivacyChipRepositoryImpl$isMicCameraIndicationEnabled$1$callback$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/PrivacyChipRepositoryImpl$isMicCameraIndicationEnabled$1$1;->this$0:Lcom/android/systemui/shade/data/repository/PrivacyChipRepositoryImpl;

    iput-object p2, p0, Lcom/android/systemui/shade/data/repository/PrivacyChipRepositoryImpl$isMicCameraIndicationEnabled$1$1;->$callback:Lcom/android/systemui/shade/data/repository/PrivacyChipRepositoryImpl$isMicCameraIndicationEnabled$1$callback$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shade/data/repository/PrivacyChipRepositoryImpl$isMicCameraIndicationEnabled$1$1;->this$0:Lcom/android/systemui/shade/data/repository/PrivacyChipRepositoryImpl;

    iget-object v0, v0, Lcom/android/systemui/shade/data/repository/PrivacyChipRepositoryImpl;->privacyConfig:Lcom/android/systemui/privacy/PrivacyConfig;

    iget-object p0, p0, Lcom/android/systemui/shade/data/repository/PrivacyChipRepositoryImpl$isMicCameraIndicationEnabled$1$1;->$callback:Lcom/android/systemui/shade/data/repository/PrivacyChipRepositoryImpl$isMicCameraIndicationEnabled$1$callback$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance p0, Lcom/android/systemui/privacy/PrivacyConfig$removeCallback$1;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/privacy/PrivacyConfig$removeCallback$1;-><init>(Lcom/android/systemui/privacy/PrivacyConfig;Ljava/lang/ref/WeakReference;)V

    iget-object v0, v0, Lcom/android/systemui/privacy/PrivacyConfig;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
