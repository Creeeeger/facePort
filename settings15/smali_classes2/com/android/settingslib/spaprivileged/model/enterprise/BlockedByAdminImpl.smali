.class public final Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByAdminImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictedMode;


# instance fields
.field public final context:Landroid/content/Context;

.field public final enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field public final enterpriseRepository:Lcom/android/settingslib/spaprivileged/model/enterprise/EnterpriseRepository;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 2

    new-instance v0, Lcom/android/settingslib/spaprivileged/model/enterprise/EnterpriseRepository;

    invoke-direct {v0, p1}, Lcom/android/settingslib/spaprivileged/model/enterprise/EnterpriseRepository;-><init>(Landroid/content/Context;)V

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByAdminImpl;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByAdminImpl;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iput-object v0, p0, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByAdminImpl;->enterpriseRepository:Lcom/android/settingslib/spaprivileged/model/enterprise/EnterpriseRepository;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByAdminImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByAdminImpl;

    iget-object v1, p0, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByAdminImpl;->context:Landroid/content/Context;

    iget-object v3, p1, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByAdminImpl;->context:Landroid/content/Context;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByAdminImpl;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget-object v3, p1, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByAdminImpl;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByAdminImpl;->enterpriseRepository:Lcom/android/settingslib/spaprivileged/model/enterprise/EnterpriseRepository;

    iget-object p1, p1, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByAdminImpl;->enterpriseRepository:Lcom/android/settingslib/spaprivileged/model/enterprise/EnterpriseRepository;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByAdminImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByAdminImpl;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v1}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByAdminImpl;->enterpriseRepository:Lcom/android/settingslib/spaprivileged/model/enterprise/EnterpriseRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByAdminImpl;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BlockedByAdminImpl(context="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", enforcedAdmin="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByAdminImpl;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", enterpriseRepository="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByAdminImpl;->enterpriseRepository:Lcom/android/settingslib/spaprivileged/model/enterprise/EnterpriseRepository;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
