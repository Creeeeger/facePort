.class public final synthetic Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;

    iget-object p0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f140d43

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
