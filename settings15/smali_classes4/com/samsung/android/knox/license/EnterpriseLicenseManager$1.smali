.class Lcom/samsung/android/knox/license/EnterpriseLicenseManager$1;
.super Lcom/samsung/android/knox/license/ILicenseResultCallback$Stub;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->activateLicense(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


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
