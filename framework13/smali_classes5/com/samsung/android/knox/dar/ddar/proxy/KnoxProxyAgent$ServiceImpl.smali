.class final Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent$ServiceImpl;
.super Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent$Stub;
.source "KnoxProxyAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceImpl"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;


# direct methods
.method private constructor blacklist <init>(Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent$ServiceImpl;->this$0:Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;

    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent$ServiceImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent$ServiceImpl;-><init>(Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;)V

    return-void
.end method


# virtual methods
.method public blacklist initializeSecureSession(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingUid"    # I
    .param p2, "svcName"    # Ljava/lang/String;
    .param p3, "secureClientId"    # Ljava/lang/String;
    .param p4, "secureClientPubKey"    # Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent$ServiceImpl;->this$0:Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->establishSecureSession(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onAgentReconnected()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent$ServiceImpl;->this$0:Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;

    invoke-virtual {v0}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->onAgentReconnected()V

    .line 66
    return-void
.end method

.method public blacklist onMessage(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "callingUid"    # I
    .param p2, "svcName"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent$ServiceImpl;->this$0:Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->relay(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public blacklist terminateSecureSession(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "callingUid"    # I
    .param p2, "svcName"    # Ljava/lang/String;
    .param p3, "secureClientId"    # Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent$ServiceImpl;->this$0:Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->teardownSecureSession(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
