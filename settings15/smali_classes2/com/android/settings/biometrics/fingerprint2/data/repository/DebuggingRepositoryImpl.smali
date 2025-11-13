.class public final Lcom/android/settings/biometrics/fingerprint2/data/repository/DebuggingRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final isBuildDebuggable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint2/data/repository/DebuggingRepositoryImpl;->isBuildDebuggable:Z

    return-void
.end method
