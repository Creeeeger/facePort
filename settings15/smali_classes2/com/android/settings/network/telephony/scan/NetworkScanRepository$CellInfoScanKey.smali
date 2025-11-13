.class public final Lcom/android/settings/network/telephony/scan/NetworkScanRepository$CellInfoScanKey;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final className:Ljava/lang/String;

.field public final isRegistered:Z

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/telephony/CellInfo;)V
    .locals 2

    const-string v0, "cellInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v0

    const-string v1, "getCellIdentity(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/settings/network/telephony/CellInfoUtil;->getNetworkTitle(Landroid/telephony/CellIdentity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$CellInfoScanKey;->title:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$CellInfoScanKey;->className:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$CellInfoScanKey;->isRegistered:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$CellInfoScanKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$CellInfoScanKey;

    iget-object v1, p1, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$CellInfoScanKey;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$CellInfoScanKey;->title:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$CellInfoScanKey;->className:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$CellInfoScanKey;->className:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean p0, p0, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$CellInfoScanKey;->isRegistered:Z

    iget-boolean p1, p1, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$CellInfoScanKey;->isRegistered:Z

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$CellInfoScanKey;->title:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$CellInfoScanKey;->className:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$CellInfoScanKey;->isRegistered:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CellInfoScanKey(title="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$CellInfoScanKey;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", className="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$CellInfoScanKey;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isRegistered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$CellInfoScanKey;->isRegistered:Z

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
