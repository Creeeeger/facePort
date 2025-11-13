.class Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;
.super Lcom/samsung/android/sume/core/service/ServiceProxySupplier;
.source "ServiceProxySupplier.java"

# interfaces
.implements Lcom/samsung/android/sume/core/functional/PlaceHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/core/service/ServiceProxySupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PlaceHolderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sume/core/service/ServiceProxySupplier;",
        "Lcom/samsung/android/sume/core/functional/PlaceHolder<",
        "Lcom/samsung/android/sume/core/service/ServiceProxySupplier;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist context:Landroid/content/Context;

.field private blacklist packageName:Ljava/lang/String;

.field private blacklist serviceName:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;->context:Landroid/content/Context;

    .line 89
    return-void
.end method

.method constructor blacklist <init>(Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;)V
    .locals 1
    .param p1, "other"    # Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;-><init>(Lcom/samsung/android/sume/core/service/ServiceProxySupplier;)V

    .line 93
    iget-object v0, p1, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;->context:Landroid/content/Context;

    .line 94
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api get()Ljava/lang/Object;
    .locals 1

    .line 81
    invoke-super {p0}, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;->get()Lcom/samsung/android/sume/core/service/ServiceProxy;

    move-result-object v0

    return-object v0
.end method

.method public blacklist put(Lcom/samsung/android/sume/core/service/ServiceProxySupplier;)V
    .locals 1
    .param p1, "instance"    # Lcom/samsung/android/sume/core/service/ServiceProxySupplier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic blacklist put(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "instance"
        }
    .end annotation

    .line 81
    check-cast p1, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;->put(Lcom/samsung/android/sume/core/service/ServiceProxySupplier;)V

    return-void
.end method

.method public blacklist replace()Lcom/samsung/android/sume/core/service/ServiceProxySupplier;
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;->serviceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    .line 113
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;->serviceName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sume/core/service/ServiceProxy;->of(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    move-result-object v0

    .line 114
    .local v0, "serviceProxySupplier":Lcom/samsung/android/sume/core/service/ServiceProxySupplier;
    iget-object v1, v0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;->options:Ljava/util/Map;

    iget-object v2, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;->options:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 115
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;->context:Landroid/content/Context;

    .line 116
    return-object v0
.end method

.method public bridge synthetic blacklist replace()Ljava/lang/Object;
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;->replace()Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    move-result-object v0

    return-object v0
.end method

.method public varargs blacklist setParameters([Ljava/lang/Object;)Lcom/samsung/android/sume/core/functional/PlaceHolder;
    .locals 4
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/samsung/android/sume/core/functional/PlaceHolder<",
            "Lcom/samsung/android/sume/core/service/ServiceProxySupplier;",
            ">;"
        }
    .end annotation

    .line 103
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    .line 104
    aget-object v0, p1, v2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;->packageName:Ljava/lang/String;

    .line 105
    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;->serviceName:Ljava/lang/String;

    .line 106
    return-object p0
.end method
