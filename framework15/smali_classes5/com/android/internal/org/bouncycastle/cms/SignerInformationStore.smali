.class public Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;
.super Ljava/lang/Object;
.source "SignerInformationStore.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/util/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/org/bouncycastle/util/Iterable<",
        "Lcom/android/internal/org/bouncycastle/cms/SignerInformation;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist all:Ljava/util/List;

.field private blacklist table:Ljava/util/Map;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/cms/SignerInformation;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;->all:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;->table:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;->all:Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;->all:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSID()Lcom/android/internal/org/bouncycastle/cms/SignerId;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;->table:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;->all:Ljava/util/List;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/internal/org/bouncycastle/cms/SignerInformation;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;->all:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;->table:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSID()Lcom/android/internal/org/bouncycastle/cms/SignerId;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;->table:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v4

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;->table:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;->all:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public blacklist get(Lcom/android/internal/org/bouncycastle/cms/SignerId;)Lcom/android/internal/org/bouncycastle/cms/SignerInformation;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;->getSigners(Lcom/android/internal/org/bouncycastle/cms/SignerId;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;

    :goto_0
    return-object v1
.end method

.method public blacklist getSigners()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/internal/org/bouncycastle/cms/SignerInformation;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;->all:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public blacklist getSigners(Lcom/android/internal/org/bouncycastle/cms/SignerId;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/org/bouncycastle/cms/SignerId;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/android/internal/org/bouncycastle/cms/SignerInformation;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cms/SignerId;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cms/SignerId;->getSubjectKeyIdentifier()[B

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/internal/org/bouncycastle/cms/SignerId;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cms/SignerId;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cms/SignerId;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/cms/SignerId;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;->getSigners(Lcom/android/internal/org/bouncycastle/cms/SignerId;)Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    new-instance v2, Lcom/android/internal/org/bouncycastle/cms/SignerId;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cms/SignerId;->getSubjectKeyIdentifier()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/cms/SignerId;-><init>([B)V

    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;->getSigners(Lcom/android/internal/org/bouncycastle/cms/SignerId;)Ljava/util/Collection;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;->table:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    if-nez v0, :cond_3

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_3
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    return-object v1
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/android/internal/org/bouncycastle/cms/SignerInformation;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;->getSigners()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist size()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;->all:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
