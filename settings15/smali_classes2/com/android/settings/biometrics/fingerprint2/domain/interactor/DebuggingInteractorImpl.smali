.class public final Lcom/android/settings/biometrics/fingerprint2/domain/interactor/DebuggingInteractorImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final debuggingRepository:Lcom/android/settings/biometrics/fingerprint2/data/repository/DebuggingRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics/fingerprint2/data/repository/DebuggingRepositoryImpl;)V
    .locals 1

    const-string v0, "debuggingRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/DebuggingInteractorImpl;->debuggingRepository:Lcom/android/settings/biometrics/fingerprint2/data/repository/DebuggingRepositoryImpl;

    new-instance p1, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/DebuggingInteractorImpl$debuggingEnabled$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/DebuggingInteractorImpl$debuggingEnabled$1;-><init>(Lcom/android/settings/biometrics/fingerprint2/domain/interactor/DebuggingInteractorImpl;Lkotlin/coroutines/Continuation;)V

    new-instance p1, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/DebuggingInteractorImpl$udfpsEnrollmentDebuggingEnabled$1;

    invoke-direct {p1, p0, v0}, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/DebuggingInteractorImpl$udfpsEnrollmentDebuggingEnabled$1;-><init>(Lcom/android/settings/biometrics/fingerprint2/domain/interactor/DebuggingInteractorImpl;Lkotlin/coroutines/Continuation;)V

    return-void
.end method
