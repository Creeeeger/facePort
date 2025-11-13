.class public final Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByEcmImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictedMode;


# instance fields
.field public final context:Landroid/content/Context;

.field public final intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByEcmImpl;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByEcmImpl;->intent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByEcmImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByEcmImpl;

    iget-object v1, p0, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByEcmImpl;->context:Landroid/content/Context;

    iget-object v3, p1, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByEcmImpl;->context:Landroid/content/Context;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByEcmImpl;->intent:Landroid/content/Intent;

    iget-object p1, p1, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByEcmImpl;->intent:Landroid/content/Intent;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByEcmImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByEcmImpl;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByEcmImpl;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByEcmImpl;->intent:Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BlockedByEcmImpl(context="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", intent="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
