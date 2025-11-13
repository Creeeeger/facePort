.class public final synthetic Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;

.field public final synthetic f$1:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;

    iput-object p2, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;

    iget-object p0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/CharSequence;

    iget-object v0, v0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f140d45

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
