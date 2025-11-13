.class public final Lcom/android/settingslib/spaprivileged/model/enterprise/EnterpriseRepository$getEnterpriseString$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $resId:I

.field public final synthetic this$0:Lcom/android/settingslib/spaprivileged/model/enterprise/EnterpriseRepository;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/spaprivileged/model/enterprise/EnterpriseRepository;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/model/enterprise/EnterpriseRepository$getEnterpriseString$1;->this$0:Lcom/android/settingslib/spaprivileged/model/enterprise/EnterpriseRepository;

    iput p2, p0, Lcom/android/settingslib/spaprivileged/model/enterprise/EnterpriseRepository$getEnterpriseString$1;->$resId:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/spaprivileged/model/enterprise/EnterpriseRepository$getEnterpriseString$1;->this$0:Lcom/android/settingslib/spaprivileged/model/enterprise/EnterpriseRepository;

    iget-object v0, v0, Lcom/android/settingslib/spaprivileged/model/enterprise/EnterpriseRepository;->context:Landroid/content/Context;

    iget p0, p0, Lcom/android/settingslib/spaprivileged/model/enterprise/EnterpriseRepository$getEnterpriseString$1;->$resId:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
