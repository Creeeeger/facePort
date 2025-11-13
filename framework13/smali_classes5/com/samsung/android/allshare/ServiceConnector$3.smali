.class synthetic Lcom/samsung/android/allshare/ServiceConnector$3;
.super Ljava/lang/Object;
.source "ServiceConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/ServiceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $SwitchMap$com$samsung$android$allshare$IAllShareConnector$AllShareServiceState:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 256
    invoke-static {}, Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;->values()[Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/allshare/ServiceConnector$3;->$SwitchMap$com$samsung$android$allshare$IAllShareConnector$AllShareServiceState:[I

    :try_start_0
    sget-object v1, Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;->ALLSHARE_SERVICE_CONNECTED:Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/allshare/ServiceConnector$3;->$SwitchMap$com$samsung$android$allshare$IAllShareConnector$AllShareServiceState:[I

    sget-object v1, Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;->ALLSHARE_SERVICE_DISCONNECTED:Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    return-void
.end method
