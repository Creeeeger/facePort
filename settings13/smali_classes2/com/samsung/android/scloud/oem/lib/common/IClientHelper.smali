.class public abstract Lcom/samsung/android/scloud/oem/lib/common/IClientHelper;
.super Ljava/lang/Object;
.source "IClientHelper.java"


# static fields
.field private static TAG:Ljava/lang/String; = "IClientHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getClient(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation
.end method

.method public abstract getServiceHandler(Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "method"
        }
    .end annotation
.end method

.method public handleRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "method",
            "name",
            "param"
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p2}, Lcom/samsung/android/scloud/oem/lib/common/IClientHelper;->getServiceHandler(Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0, p3}, Lcom/samsung/android/scloud/oem/lib/common/IClientHelper;->getClient(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p1, p0, p3, p4}, Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;->handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 35
    :cond_0
    sget-object p0, Lcom/samsung/android/scloud/oem/lib/common/IClientHelper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "handleRequest can\'t find method:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
