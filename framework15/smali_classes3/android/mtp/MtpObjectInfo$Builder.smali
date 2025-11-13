.class public Landroid/mtp/MtpObjectInfo$Builder;
.super Ljava/lang/Object;
.source "MtpObjectInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpObjectInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mObjectInfo:Landroid/mtp/MtpObjectInfo;


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/mtp/MtpObjectInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/mtp/MtpObjectInfo;-><init>(Landroid/mtp/MtpObjectInfo-IA;)V

    iput-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmHandle(Landroid/mtp/MtpObjectInfo;I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/mtp/MtpObjectInfo;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/mtp/MtpObjectInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/mtp/MtpObjectInfo;-><init>(Landroid/mtp/MtpObjectInfo-IA;)V

    iput-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmHandle(Landroid/mtp/MtpObjectInfo;I)V

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmAssociationDesc(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmAssociationDesc(Landroid/mtp/MtpObjectInfo;I)V

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmAssociationType(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmAssociationType(Landroid/mtp/MtpObjectInfo;I)V

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmCompressedSize(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmCompressedSize(Landroid/mtp/MtpObjectInfo;I)V

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmDateCreated(Landroid/mtp/MtpObjectInfo;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmDateCreated(Landroid/mtp/MtpObjectInfo;J)V

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmDateModified(Landroid/mtp/MtpObjectInfo;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmDateModified(Landroid/mtp/MtpObjectInfo;J)V

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmFormat(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmFormat(Landroid/mtp/MtpObjectInfo;I)V

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmImagePixDepth(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmImagePixDepth(Landroid/mtp/MtpObjectInfo;I)V

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmImagePixHeight(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmImagePixHeight(Landroid/mtp/MtpObjectInfo;I)V

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmImagePixWidth(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmImagePixWidth(Landroid/mtp/MtpObjectInfo;I)V

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmKeywords(Landroid/mtp/MtpObjectInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmKeywords(Landroid/mtp/MtpObjectInfo;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmName(Landroid/mtp/MtpObjectInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmName(Landroid/mtp/MtpObjectInfo;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmParent(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmParent(Landroid/mtp/MtpObjectInfo;I)V

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmProtectionStatus(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmProtectionStatus(Landroid/mtp/MtpObjectInfo;I)V

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmSequenceNumber(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmSequenceNumber(Landroid/mtp/MtpObjectInfo;I)V

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmStorageId(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmStorageId(Landroid/mtp/MtpObjectInfo;I)V

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmThumbCompressedSize(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmThumbCompressedSize(Landroid/mtp/MtpObjectInfo;I)V

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmThumbFormat(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmThumbFormat(Landroid/mtp/MtpObjectInfo;I)V

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmThumbPixHeight(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmThumbPixHeight(Landroid/mtp/MtpObjectInfo;I)V

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmThumbPixWidth(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmThumbPixWidth(Landroid/mtp/MtpObjectInfo;I)V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/mtp/MtpObjectInfo;
    .locals 2

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    return-object v0
.end method

.method public whitelist setAssociationDesc(I)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmAssociationDesc(Landroid/mtp/MtpObjectInfo;I)V

    return-object p0
.end method

.method public whitelist setAssociationType(I)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmAssociationType(Landroid/mtp/MtpObjectInfo;I)V

    return-object p0
.end method

.method public whitelist setCompressedSize(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 2

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$smlongToUint32(JLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmCompressedSize(Landroid/mtp/MtpObjectInfo;I)V

    return-object p0
.end method

.method public whitelist setDateCreated(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1, p2}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmDateCreated(Landroid/mtp/MtpObjectInfo;J)V

    return-object p0
.end method

.method public whitelist setDateModified(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1, p2}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmDateModified(Landroid/mtp/MtpObjectInfo;J)V

    return-object p0
.end method

.method public whitelist setFormat(I)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmFormat(Landroid/mtp/MtpObjectInfo;I)V

    return-object p0
.end method

.method public whitelist setImagePixDepth(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 2

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$smlongToUint32(JLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmImagePixDepth(Landroid/mtp/MtpObjectInfo;I)V

    return-object p0
.end method

.method public whitelist setImagePixHeight(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 2

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$smlongToUint32(JLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmImagePixHeight(Landroid/mtp/MtpObjectInfo;I)V

    return-object p0
.end method

.method public whitelist setImagePixWidth(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 2

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$smlongToUint32(JLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmImagePixWidth(Landroid/mtp/MtpObjectInfo;I)V

    return-object p0
.end method

.method public whitelist setKeywords(Ljava/lang/String;)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 2

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_0

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmKeywords(Landroid/mtp/MtpObjectInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public whitelist setName(Ljava/lang/String;)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmName(Landroid/mtp/MtpObjectInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public whitelist setObjectHandle(I)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmHandle(Landroid/mtp/MtpObjectInfo;I)V

    return-object p0
.end method

.method public whitelist setParent(I)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmParent(Landroid/mtp/MtpObjectInfo;I)V

    return-object p0
.end method

.method public whitelist setProtectionStatus(I)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmProtectionStatus(Landroid/mtp/MtpObjectInfo;I)V

    return-object p0
.end method

.method public whitelist setSequenceNumber(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 2

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$smlongToUint32(JLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmSequenceNumber(Landroid/mtp/MtpObjectInfo;I)V

    return-object p0
.end method

.method public whitelist setStorageId(I)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmStorageId(Landroid/mtp/MtpObjectInfo;I)V

    return-object p0
.end method

.method public whitelist setThumbCompressedSize(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 2

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$smlongToUint32(JLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmThumbCompressedSize(Landroid/mtp/MtpObjectInfo;I)V

    return-object p0
.end method

.method public whitelist setThumbFormat(I)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmThumbFormat(Landroid/mtp/MtpObjectInfo;I)V

    return-object p0
.end method

.method public whitelist setThumbPixHeight(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 2

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$smlongToUint32(JLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmThumbPixHeight(Landroid/mtp/MtpObjectInfo;I)V

    return-object p0
.end method

.method public whitelist setThumbPixWidth(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 2

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$smlongToUint32(JLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmThumbPixWidth(Landroid/mtp/MtpObjectInfo;I)V

    return-object p0
.end method
