.class Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;
.super Ljava/lang/Object;
.source "DiagMonConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "oldDiagMonConfig"
.end annotation


# instance fields
.field private mAgreeAsString:Ljava/lang/String;

.field private mAgreement:Z

.field private mAuthorityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDeviceId:Ljava/lang/String;

.field private mLogList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceId:Ljava/lang/String;

.field private mServiceName:Ljava/lang/String;

.field private mTrackingId:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;


# direct methods
.method public constructor <init>(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->this$0:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mAgreement:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mAgreeAsString:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mServiceId:Ljava/lang/String;

    const-string v1, "Samsung Software"

    iput-object v1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mServiceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mDeviceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mTrackingId:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mAuthorityList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mLogList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAgree()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mAgreement:Z

    return v0
.end method

.method public getAgreeAsString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mAgreeAsString:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorityList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mAuthorityList:Ljava/util/List;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getLogList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mLogList:Ljava/util/List;

    return-object v0
.end method

.method public getServiceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mServiceId:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackingId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mTrackingId:Ljava/lang/String;

    return-object v0
.end method

.method public setAgree(Ljava/lang/String;)V
    .locals 4

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mAgreeAsString:Ljava/lang/String;

    const-string v0, "S"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Y"

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mAgreeAsString:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mAgreeAsString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mAgreeAsString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mAgreeAsString:Ljava/lang/String;

    const-string v1, "D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong agreement : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mAgreement:Z

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mAgreement:Z

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v1, "Empty agreement"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mAgreement:Z

    :goto_1
    return-void
.end method

.method public setAuthorityList(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mAuthorityList:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.sec.android.log."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mDeviceId:Ljava/lang/String;

    return-void
.end method

.method public setLogList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mLogList:Ljava/util/List;

    return-void
.end method

.method public setServiceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mServiceId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->setAuthorityList(Ljava/lang/String;)V

    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mServiceName:Ljava/lang/String;

    return-void
.end method

.method public setTrackingId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mTrackingId:Ljava/lang/String;

    return-void
.end method
