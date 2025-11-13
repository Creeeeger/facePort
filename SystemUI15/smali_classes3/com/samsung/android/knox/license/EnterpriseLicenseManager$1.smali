.class Lcom/samsung/android/knox/license/EnterpriseLicenseManager$1;
.super Lcom/samsung/android/knox/license/ILicenseResultCallback$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knox/license/EnterpriseLicenseManager;

.field final synthetic val$callback:Lcom/samsung/android/knox/license/LicenseResultCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/license/EnterpriseLicenseManager;Lcom/samsung/android/knox/license/LicenseResultCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager$1;->this$0:Lcom/samsung/android/knox/license/EnterpriseLicenseManager;

    iput-object p2, p0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager$1;->val$callback:Lcom/samsung/android/knox/license/LicenseResultCallback;

    invoke-direct {p0}, Lcom/samsung/android/knox/license/ILicenseResultCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onLicenseResult(Lcom/samsung/android/knox/license/LicenseResult;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager$1;->val$callback:Lcom/samsung/android/knox/license/LicenseResultCallback;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/license/LicenseResultCallback;->onLicenseResult(Lcom/samsung/android/knox/license/LicenseResult;)V

    return-void
.end method
