.class public Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/security/KeyStore$LoadStoreParameter;


# instance fields
.field param:Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;


# direct methods
.method public constructor <init>(IILandroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;-><init>(IILandroid/os/Bundle;)V

    iput-object v0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;->param:Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;

    return-void
.end method


# virtual methods
.method public getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;->param:Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;

    return-object p0
.end method
