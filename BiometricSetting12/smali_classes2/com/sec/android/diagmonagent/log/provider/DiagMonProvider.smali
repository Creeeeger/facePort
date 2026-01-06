.class public Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;
.super Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;
.source "DiagMonProvider.java"


# static fields
.field public static AUTHORITY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;->AUTHORITY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAuthority()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;->AUTHORITY:Ljava/lang/String;

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    invoke-super {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->onCreate()Z

    move-result v0

    return v0
.end method

.method protected setAuthorityList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public setConfiguration(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.sec.android.log."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getServiceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;->AUTHORITY:Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->setConfiguration(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)V

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v1, "LogProvider is set"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected setDeviceId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected setLogList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method protected setPlainLogList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method protected setServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
