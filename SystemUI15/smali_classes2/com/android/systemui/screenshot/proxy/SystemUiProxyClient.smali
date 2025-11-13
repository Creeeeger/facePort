.class public final Lcom/android/systemui/screenshot/proxy/SystemUiProxyClient;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/screenshot/proxy/SystemUiProxy;


# instance fields
.field public final proxyConnector:Lcom/android/internal/infra/ServiceConnector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lcom/android/internal/infra/ServiceConnector$Impl;

    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/android/systemui/screenshot/ScreenshotProxyService;

    invoke-direct {v2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v4

    sget-object v5, Lcom/android/systemui/screenshot/proxy/SystemUiProxyClient$proxyConnector$1;->INSTANCE:Lcom/android/systemui/screenshot/proxy/SystemUiProxyClient$proxyConnector$1;

    const v3, 0x40000021    # 2.0000079f

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    iput-object v6, p0, Lcom/android/systemui/screenshot/proxy/SystemUiProxyClient;->proxyConnector:Lcom/android/internal/infra/ServiceConnector;

    return-void
.end method
