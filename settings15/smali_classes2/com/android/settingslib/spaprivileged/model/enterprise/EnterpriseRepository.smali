.class public final Lcom/android/settingslib/spaprivileged/model/enterprise/EnterpriseRepository;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final context:Landroid/content/Context;

.field public final resources$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/model/enterprise/EnterpriseRepository;->context:Landroid/content/Context;

    new-instance p1, Lcom/android/settingslib/spaprivileged/model/enterprise/EnterpriseRepository$resources$2;

    invoke-direct {p1, p0}, Lcom/android/settingslib/spaprivileged/model/enterprise/EnterpriseRepository$resources$2;-><init>(Lcom/android/settingslib/spaprivileged/model/enterprise/EnterpriseRepository;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/model/enterprise/EnterpriseRepository;->resources$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final getEnterpriseString(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/spaprivileged/model/enterprise/EnterpriseRepository;->resources$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyResourcesManager;

    new-instance v1, Lcom/android/settingslib/spaprivileged/model/enterprise/EnterpriseRepository$getEnterpriseString$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settingslib/spaprivileged/model/enterprise/EnterpriseRepository$getEnterpriseString$1;-><init>(Lcom/android/settingslib/spaprivileged/model/enterprise/EnterpriseRepository;I)V

    invoke-virtual {v0, p2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Required value was null."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
