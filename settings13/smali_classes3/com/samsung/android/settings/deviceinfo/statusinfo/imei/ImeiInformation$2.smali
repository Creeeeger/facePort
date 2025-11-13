.class Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation$2;
.super Ljava/lang/Object;
.source "ImeiInformation.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->enableImeiBarcode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;)V
    .locals 0

    .line 691
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation$2;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 694
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 695
    invoke-virtual {p1}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p1

    const-string v1, "imei_barcode_value"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string p1, "com.android.settings"

    const-string v1, "com.samsung.android.settings.deviceinfo.statusinfo.imei.IMEIBarcodeDisplayActivity"

    .line 696
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 698
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation$2;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method
