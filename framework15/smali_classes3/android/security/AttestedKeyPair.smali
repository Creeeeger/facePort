.class public final Landroid/security/AttestedKeyPair;
.super Ljava/lang/Object;
.source "AttestedKeyPair.java"


# instance fields
.field private final blacklist mAttestationRecord:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mKeyPair:Ljava/security/KeyPair;


# direct methods
.method public constructor whitelist <init>(Ljava/security/KeyPair;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/KeyPair;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/AttestedKeyPair;->mKeyPair:Ljava/security/KeyPair;

    iput-object p2, p0, Landroid/security/AttestedKeyPair;->mAttestationRecord:Ljava/util/List;

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/security/KeyPair;[Ljava/security/cert/Certificate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/AttestedKeyPair;->mKeyPair:Ljava/security/KeyPair;

    if-nez p2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/security/AttestedKeyPair;->mAttestationRecord:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/security/AttestedKeyPair;->mAttestationRecord:Ljava/util/List;

    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist getAttestationRecord()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/security/AttestedKeyPair;->mAttestationRecord:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKeyPair()Ljava/security/KeyPair;
    .locals 1

    iget-object v0, p0, Landroid/security/AttestedKeyPair;->mKeyPair:Ljava/security/KeyPair;

    return-object v0
.end method
