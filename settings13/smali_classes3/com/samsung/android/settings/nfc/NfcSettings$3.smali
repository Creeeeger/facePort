.class Lcom/samsung/android/settings/nfc/NfcSettings$3;
.super Ljava/lang/Object;
.source "NfcSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/nfc/NfcSettings;->makeAlertDialog()V
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

    .line 609
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 612
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/nfc/NfcSettings;->-$$Nest$fgetmIsEmergencyMode(Lcom/samsung/android/settings/nfc/NfcSettings;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 613
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/nfc/NfcSettings;->-$$Nest$fgetmActivity(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->-$$Nest$fgetmActivity(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
