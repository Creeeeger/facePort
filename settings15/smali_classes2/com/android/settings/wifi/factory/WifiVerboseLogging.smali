.class public final Lcom/android/settings/wifi/factory/WifiVerboseLogging;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mIsVerboseLoggingEnabled:Z


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isVerboseLoggingEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/factory/WifiVerboseLogging;->mIsVerboseLoggingEnabled:Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "isVerboseLoggingEnabled:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiVerboseLogging"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
