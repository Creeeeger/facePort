.class final Lcom/android/settings/wifi/details2/CertificateDetailsPreferenceController$CertificateDetails$1$onClick$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $validationMethod:I

.field final synthetic this$0:Lcom/android/settings/wifi/details2/CertificateDetailsPreferenceController;


# direct methods
.method public constructor <init>(ILcom/android/settings/wifi/details2/CertificateDetailsPreferenceController;Landroid/content/Context;)V
    .locals 0

    iput p1, p0, Lcom/android/settings/wifi/details2/CertificateDetailsPreferenceController$CertificateDetails$1$onClick$1;->$validationMethod:I

    iput-object p2, p0, Lcom/android/settings/wifi/details2/CertificateDetailsPreferenceController$CertificateDetails$1$onClick$1;->this$0:Lcom/android/settings/wifi/details2/CertificateDetailsPreferenceController;

    iput-object p3, p0, Lcom/android/settings/wifi/details2/CertificateDetailsPreferenceController$CertificateDetails$1$onClick$1;->$context:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/android/settings/wifi/details2/CertificateDetailsPreferenceController$CertificateDetails$1$onClick$1;->$validationMethod:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/details2/CertificateDetailsPreferenceController$CertificateDetails$1$onClick$1;->this$0:Lcom/android/settings/wifi/details2/CertificateDetailsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details2/CertificateDetailsPreferenceController;->access$getWifiEntry$p(Lcom/android/settings/wifi/details2/CertificateDetailsPreferenceController;)Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, Lcom/android/settings/wifi/details2/CertificateDetailsPreferenceController;->access$getCertX509(Lcom/android/settings/wifi/details2/CertificateDetailsPreferenceController;Lcom/android/wifitrackerlib/WifiEntry;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/details2/CertificateDetailsPreferenceController$CertificateDetails$1$onClick$1;->this$0:Lcom/android/settings/wifi/details2/CertificateDetailsPreferenceController;

    iget-object p0, p0, Lcom/android/settings/wifi/details2/CertificateDetailsPreferenceController$CertificateDetails$1$onClick$1;->$context:Landroid/content/Context;

    invoke-static {v1, p0, v0}, Lcom/android/settings/wifi/details2/CertificateDetailsPreferenceController;->access$createCertificateDetailsDialog(Lcom/android/settings/wifi/details2/CertificateDetailsPreferenceController;Landroid/content/Context;Ljava/security/cert/X509Certificate;)V

    goto :goto_0

    :cond_0
    const-string p0, "wifiEntry"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
