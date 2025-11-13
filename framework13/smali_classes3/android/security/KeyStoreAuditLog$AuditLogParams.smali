.class public Landroid/security/KeyStoreAuditLog$AuditLogParams;
.super Ljava/lang/Object;
.source "KeyStoreAuditLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/KeyStoreAuditLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuditLogParams"
.end annotation


# instance fields
.field private final blacklist mAlias:Ljava/lang/String;

.field private final blacklist mClassName:Ljava/lang/String;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDomain:I

.field private blacklist mEncodedCerts:[B

.field private blacklist mErrorCode:I

.field private blacklist mNamespace:J

.field private blacklist mOperationType:I

.field private blacklist mUserId:I

.field private blacklist mX509Certificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mNamespace:J

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mDomain:I

    .line 104
    iput-object p1, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mAlias:Ljava/lang/String;

    .line 105
    iput-object p2, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mClassName:Ljava/lang/String;

    .line 106
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/security/KeyStoreAuditLog;->-$$Nest$smgetUserId(I)I

    move-result v0

    iput v0, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mUserId:I

    .line 107
    const/4 v0, 0x1

    iput v0, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mErrorCode:I

    .line 108
    return-void
.end method

.method public static blacklist init(Landroid/system/keystore2/KeyDescriptor;ILjava/lang/String;)Landroid/security/KeyStoreAuditLog$AuditLogParams;
    .locals 1
    .param p0, "keyDescriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p1, "operation"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 201
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->init(Landroid/system/keystore2/KeyDescriptor;ILjava/lang/String;I)Landroid/security/KeyStoreAuditLog$AuditLogParams;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist init(Landroid/system/keystore2/KeyDescriptor;ILjava/lang/String;I)Landroid/security/KeyStoreAuditLog$AuditLogParams;
    .locals 7
    .param p0, "keyDescriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p1, "operation"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "errorCode"    # I

    .line 206
    iget-object v0, p0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    iget-wide v1, p0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    iget v3, p0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->init(Ljava/lang/String;JIILjava/lang/String;I)Landroid/security/KeyStoreAuditLog$AuditLogParams;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist init(Ljava/lang/String;JIILjava/lang/String;I)Landroid/security/KeyStoreAuditLog$AuditLogParams;
    .locals 1
    .param p0, "alias"    # Ljava/lang/String;
    .param p1, "nspace"    # J
    .param p3, "domain"    # I
    .param p4, "operation"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "errorCode"    # I

    .line 212
    new-instance v0, Landroid/security/KeyStoreAuditLog$AuditLogParams;

    invoke-direct {v0, p0, p5}, Landroid/security/KeyStoreAuditLog$AuditLogParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .local v0, "params":Landroid/security/KeyStoreAuditLog$AuditLogParams;
    invoke-virtual {v0, p1, p2}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->setNamespace(J)V

    .line 214
    invoke-virtual {v0, p3}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->setDomain(I)V

    .line 215
    invoke-virtual {v0, p4}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->setOperationType(I)V

    .line 216
    invoke-virtual {v0, p6}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->setErrorCode(I)V

    .line 217
    return-object v0
.end method


# virtual methods
.method public blacklist getAlias()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getChainBytes()[B
    .locals 2

    .line 129
    iget-object v0, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mEncodedCerts:[B

    if-eqz v0, :cond_0

    return-object v0

    .line 130
    :cond_0
    iget-object v0, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mX509Certificates:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 131
    nop

    .line 132
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    .line 131
    invoke-static {v0}, Landroid/security/KeyStoreAuditLog;->-$$Nest$smconvertCertificatesToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v0

    return-object v0

    .line 134
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getClassName()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getContext()Landroid/content/Context;
    .locals 1

    .line 142
    iget-object v0, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public blacklist getDomain()I
    .locals 1

    .line 197
    iget v0, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mDomain:I

    return v0
.end method

.method public blacklist getErrorCode()I
    .locals 1

    .line 158
    iget v0, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mErrorCode:I

    return v0
.end method

.method public blacklist getNamespace()J
    .locals 2

    .line 125
    iget-wide v0, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mNamespace:J

    return-wide v0
.end method

.method public blacklist getOperationType()I
    .locals 1

    .line 166
    iget v0, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mOperationType:I

    return v0
.end method

.method public blacklist getUserId()I
    .locals 1

    .line 172
    iget v0, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mUserId:I

    return v0
.end method

.method public blacklist getX509Certificates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mX509Certificates:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    .line 112
    :cond_0
    iget-object v0, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mEncodedCerts:[B

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/security/KeyStoreAuditLog;->toCertificates([B)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 113
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hasCertificates()Z
    .locals 1

    .line 176
    iget-object v0, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mX509Certificates:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mEncodedCerts:[B

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 138
    iput-object p1, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mContext:Landroid/content/Context;

    .line 139
    return-void
.end method

.method public blacklist setDomain(I)V
    .locals 0
    .param p1, "domain"    # I

    .line 193
    iput p1, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mDomain:I

    .line 194
    return-void
.end method

.method public blacklist setEncodedCerts([B)V
    .locals 0
    .param p1, "encodedCerts"    # [B

    .line 180
    iput-object p1, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mEncodedCerts:[B

    .line 181
    return-void
.end method

.method public blacklist setErrorCode(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .line 154
    iput p1, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mErrorCode:I

    .line 155
    return-void
.end method

.method public blacklist setNamespace(J)V
    .locals 0
    .param p1, "namespace"    # J

    .line 121
    iput-wide p1, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mNamespace:J

    .line 122
    return-void
.end method

.method public blacklist setOperationType(I)V
    .locals 0
    .param p1, "operationType"    # I

    .line 162
    iput p1, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mOperationType:I

    .line 163
    return-void
.end method

.method public blacklist setUserCertAndChain([B[B)V
    .locals 1
    .param p1, "userCert"    # [B
    .param p2, "chain"    # [B

    .line 184
    if-nez p1, :cond_1

    .line 185
    if-nez p2, :cond_0

    return-void

    .line 186
    :cond_0
    invoke-virtual {p0, p2}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->setEncodedCerts([B)V

    .line 187
    return-void

    .line 189
    :cond_1
    invoke-static {p1, p2}, Landroid/security/KeyStoreAuditLog;->-$$Nest$smmergeUserCertAndChain([B[B)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/security/KeyStoreAuditLog$AuditLogParams;->setX509Certificates(Ljava/util/List;)V

    .line 190
    return-void
.end method

.method public blacklist setUserId(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 169
    iput p1, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mUserId:I

    return-void
.end method

.method public blacklist setX509Certificates(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .line 117
    .local p1, "x509Certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    iput-object p1, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mX509Certificates:Ljava/util/List;

    .line 118
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuditLogParams{mAlias=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mClassName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNamespace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mNamespace:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDomain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mDomain:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOperationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mOperationType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mErrorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mX509Certificates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mX509Certificates:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEncodedCerts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/security/KeyStoreAuditLog$AuditLogParams;->mEncodedCerts:[B

    .line 232
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    return-object v0
.end method
