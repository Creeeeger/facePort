.class public final Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final flag:I

.field public final isInUserLockdown:Z

.field public final isPrimaryAuthRequiredAfterDpmLockdown:Z

.field public final isPrimaryAuthRequiredAfterLockout:Z

.field public final isPrimaryAuthRequiredAfterReboot:Z

.field public final isPrimaryAuthRequiredAfterTimeout:Z

.field public final isPrimaryAuthRequiredForUnattendedUpdate:Z

.field public final isSomeAuthRequiredAfterAdaptiveAuthRequest:Z

.field public final someAuthRequiredAfterTrustAgentExpired:Z

.field public final someAuthRequiredAfterUserRequest:Z

.field public final strongerAuthRequiredAfterNonStrongBiometricsTimeout:Z

.field public final userId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;->userId:I

    iput p2, p0, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;->flag:I

    const/16 p1, 0x20

    invoke-static {p2, p1}, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlagsKt;->access$containsFlag(II)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;->isInUserLockdown:Z

    const/4 p1, 0x1

    invoke-static {p2, p1}, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlagsKt;->access$containsFlag(II)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;->isPrimaryAuthRequiredAfterReboot:Z

    const/16 p1, 0x10

    invoke-static {p2, p1}, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlagsKt;->access$containsFlag(II)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;->isPrimaryAuthRequiredAfterTimeout:Z

    const/16 p1, 0x8

    invoke-static {p2, p1}, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlagsKt;->access$containsFlag(II)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;->isPrimaryAuthRequiredAfterLockout:Z

    const/4 p1, 0x2

    invoke-static {p2, p1}, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlagsKt;->access$containsFlag(II)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;->isPrimaryAuthRequiredAfterDpmLockdown:Z

    const/4 p1, 0x4

    invoke-static {p2, p1}, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlagsKt;->access$containsFlag(II)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;->someAuthRequiredAfterUserRequest:Z

    const/16 p1, 0x100

    invoke-static {p2, p1}, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlagsKt;->access$containsFlag(II)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;->someAuthRequiredAfterTrustAgentExpired:Z

    const/16 p1, 0x40

    invoke-static {p2, p1}, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlagsKt;->access$containsFlag(II)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;->isPrimaryAuthRequiredForUnattendedUpdate:Z

    const/16 p1, 0x80

    invoke-static {p2, p1}, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlagsKt;->access$containsFlag(II)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;->strongerAuthRequiredAfterNonStrongBiometricsTimeout:Z

    const/16 p1, 0x200

    invoke-static {p2, p1}, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlagsKt;->access$containsFlag(II)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;->isSomeAuthRequiredAfterAdaptiveAuthRequest:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;

    iget v1, p1, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;->userId:I

    iget v3, p0, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;->userId:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget p0, p0, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;->flag:I

    iget p1, p1, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;->flag:I

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;->flag:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AuthenticationFlags(userId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;->flag:I

    const-string v1, ")"

    invoke-static {p0, v1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
