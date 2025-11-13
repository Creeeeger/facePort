.class final Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$1$1;
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
.field final synthetic $callback:Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$1$callback$1;

.field final synthetic this$0:Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$1$callback$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$1$1;->this$0:Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;

    iput-object p2, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$1$1;->$callback:Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$1$callback$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$1$1;->this$0:Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;

    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;->logger:Lcom/android/keyguard/logging/TrustRepositoryLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    const/4 v2, 0x0

    iget-object v0, v0, Lcom/android/keyguard/logging/TrustRepositoryLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "TrustRepositoryLog"

    const-string v4, "TrustRepository#unregisterTrustListener"

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$1$1;->this$0:Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;

    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;->trustManager:Landroid/app/trust/TrustManager;

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$1$1;->$callback:Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$1$callback$1;

    invoke-virtual {v0, p0}, Landroid/app/trust/TrustManager;->unregisterTrustListener(Landroid/app/trust/TrustManager$TrustListener;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
