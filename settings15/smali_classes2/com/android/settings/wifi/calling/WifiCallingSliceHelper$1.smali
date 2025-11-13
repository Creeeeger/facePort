.class public final Lcom/android/settings/wifi/calling/WifiCallingSliceHelper$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic val$imsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;


# direct methods
.method public constructor <init>(Landroid/telephony/ims/ImsMmTelManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper$1;->val$imsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper$1;->val$imsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    invoke-virtual {p0}, Landroid/telephony/ims/ImsMmTelManager;->getVoWiFiModeSetting()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "WifiCallingSliceHelper"

    const-string v1, "getResourceIdForWfcMode: Exception"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
