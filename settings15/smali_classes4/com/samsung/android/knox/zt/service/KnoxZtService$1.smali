.class Lcom/samsung/android/knox/zt/service/KnoxZtService$1;
.super Lcom/samsung/android/knox/zt/service/IServiceCertProvisionListener$Stub;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/zt/service/KnoxZtService;->provisionCert(Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;Lcom/samsung/android/knox/zt/devicetrust/cert/ICertProvisionListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/zt/service/KnoxZtService;

.field public final synthetic val$listener:Lcom/samsung/android/knox/zt/devicetrust/cert/ICertProvisionListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/zt/service/KnoxZtService;Lcom/samsung/android/knox/zt/devicetrust/cert/ICertProvisionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$1;->this$0:Lcom/samsung/android/knox/zt/service/KnoxZtService;

    iput-object p2, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$1;->val$listener:Lcom/samsung/android/knox/zt/devicetrust/cert/ICertProvisionListener;

    invoke-direct {p0}, Lcom/samsung/android/knox/zt/service/IServiceCertProvisionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public attestKey(Ljava/lang/String;[B)Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$1;->this$0:Lcom/samsung/android/knox/zt/service/KnoxZtService;

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->mKeyAttestationHelper:Lcom/samsung/android/knox/zt/service/KeyAttestationHelper;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/knox/zt/service/KeyAttestationHelper;->attestKey(Ljava/lang/String;[BZ)Z

    move-result p0

    return p0
.end method

.method public getCertificateChain(Ljava/lang/String;)[Lcom/samsung/android/knox/zt/service/ParcelableCertificate;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$1;->this$0:Lcom/samsung/android/knox/zt/service/KnoxZtService;

    iget-object v0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->mKeyAttestationHelper:Lcom/samsung/android/knox/zt/service/KeyAttestationHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/zt/service/KeyAttestationHelper;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getParcelableCertificates([Ljava/security/cert/Certificate;)[Lcom/samsung/android/knox/zt/service/ParcelableCertificate;

    move-result-object p0

    return-object p0
.end method

.method public getSignature(Ljava/lang/String;[B)[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$1;->this$0:Lcom/samsung/android/knox/zt/service/KnoxZtService;

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->mKeyAttestationHelper:Lcom/samsung/android/knox/zt/service/KeyAttestationHelper;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/zt/service/KeyAttestationHelper;->sign(Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public onError(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$1;->val$listener:Lcom/samsung/android/knox/zt/devicetrust/cert/ICertProvisionListener;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/zt/devicetrust/cert/ICertProvisionListener;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public onStatusChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$1;->val$listener:Lcom/samsung/android/knox/zt/devicetrust/cert/ICertProvisionListener;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/zt/devicetrust/cert/ICertProvisionListener;->onStatusChange(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$1;->val$listener:Lcom/samsung/android/knox/zt/devicetrust/cert/ICertProvisionListener;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/devicetrust/cert/ICertProvisionListener;->onSuccess(Landroid/os/Bundle;)V

    return-void
.end method

.method public setCertificateChain(Ljava/lang/String;[Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$1;->this$0:Lcom/samsung/android/knox/zt/service/KnoxZtService;

    iget-object v0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->mKeyAttestationHelper:Lcom/samsung/android/knox/zt/service/KeyAttestationHelper;

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getCertificates([Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)[Ljava/security/cert/Certificate;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/knox/zt/service/KeyAttestationHelper;->setCertificateChain(Ljava/lang/String;[Ljava/security/cert/Certificate;)Z

    move-result p0

    return p0
.end method
