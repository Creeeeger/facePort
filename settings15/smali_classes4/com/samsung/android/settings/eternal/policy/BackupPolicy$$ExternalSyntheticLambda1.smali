.class public final synthetic Lcom/samsung/android/settings/eternal/policy/BackupPolicy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/eternal/policy/BackupPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/eternal/policy/BackupPolicy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/policy/BackupPolicy$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/eternal/policy/BackupPolicy;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/policy/BackupPolicy$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/eternal/policy/BackupPolicy;

    check-cast p1, Lcom/samsung/android/settings/eternal/policy/provider/PolicyItem;

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/policy/BackupPolicy;->mBackupSizeLimitAllowItems:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/samsung/android/settings/eternal/policy/provider/PolicyItem;->getKey()Ljava/lang/String;

    move-result-object p1

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method
