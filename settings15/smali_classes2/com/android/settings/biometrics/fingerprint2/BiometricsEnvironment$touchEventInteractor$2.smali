.class final Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment$touchEventInteractor$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "invoke",
        "()Ljava/lang/Object;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment$touchEventInteractor$2;->this$0:Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment$touchEventInteractor$2;->this$0:Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;->debuggingRepository:Lcom/android/settings/biometrics/fingerprint2/data/repository/DebuggingRepositoryImpl;

    iget-boolean v0, v0, Lcom/android/settings/biometrics/fingerprint2/data/repository/DebuggingRepositoryImpl;->isBuildDebuggable:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/debug/domain/interactor/DebugTouchEventInteractorImpl;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;->udfpsDebugRepo:Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint2/debug/domain/interactor/DebugTouchEventInteractorImpl;-><init>(Lcom/android/settings/biometrics/fingerprint2/data/repository/SimulatedTouchEventsRepository;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment$touchEventInteractor$2$1;

    invoke-direct {v0}, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment$touchEventInteractor$2$1;-><init>()V

    :goto_0
    return-object v0
.end method
