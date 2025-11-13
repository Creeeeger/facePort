.class public final synthetic Lcom/samsung/android/settings/eternal/policy/BackupPolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/eternal/policy/BackupPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/eternal/policy/BackupPolicy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/policy/BackupPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/eternal/policy/BackupPolicy;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/policy/BackupPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/eternal/policy/BackupPolicy;

    check-cast p1, Lcom/samsung/android/settings/eternal/policy/provider/PolicyItem;

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/policy/BackupPolicy;->mPolicyValidator:Lcom/samsung/android/settings/eternal/policy/PolicyValidator;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/eternal/policy/PolicyValidator;->isValidPolicy(Lcom/samsung/android/settings/eternal/policy/provider/PolicyItem;)Z

    move-result p0

    return p0
.end method
