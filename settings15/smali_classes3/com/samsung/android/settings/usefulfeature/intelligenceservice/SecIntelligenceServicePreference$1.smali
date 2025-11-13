.class public final Lcom/samsung/android/settings/usefulfeature/intelligenceservice/SecIntelligenceServicePreference$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/SecIntelligenceServicePreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/usefulfeature/intelligenceservice/SecIntelligenceServicePreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/SecIntelligenceServicePreference$1;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/SecIntelligenceServicePreference;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/SecIntelligenceServicePreference$1;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/SecIntelligenceServicePreference;

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/SecIntelligenceServicePreference;->mListener:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/SecIntelligenceServicePreference$OnClickListener;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/SecIntelligenceServicePreference;->mPackageInfo:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PackageInfo;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PackageInfo;->getQIPPopupIntent()Landroid/content/Intent;

    move-result-object p0

    check-cast p1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;

    :try_start_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ActivityNotFoundException "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IntelligenceServiceSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
