.class Lcom/samsung/android/settings/nfc/NfcSettings$4;
.super Ljava/lang/Object;
.source "NfcSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$CallbackOnSIMselected;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/nfc/NfcSettings;->updatePaymentSim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/NfcSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/NfcSettings;)V
    .locals 0

    .line 640
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings$4;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 0

    .line 643
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcSettings$4;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->-$$Nest$fgetmPaymentSim(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->setResult(I)Z

    const/4 p0, 0x1

    return p0
.end method
