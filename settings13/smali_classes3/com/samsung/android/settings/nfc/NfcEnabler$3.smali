.class Lcom/samsung/android/settings/nfc/NfcEnabler$3;
.super Ljava/lang/Object;
.source "NfcEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/nfc/NfcEnabler;->makeAlertDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/NfcEnabler;)V
    .locals 0

    .line 904
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$3;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 907
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$3;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {p1}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-$$Nest$fgetmNfcAdapter(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    iget-object p2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$3;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {p2}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p2

    invoke-virtual {p2}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-$$Nest$mhandleNfcStateChanged(Lcom/samsung/android/settings/nfc/NfcEnabler;I)V

    .line 908
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$3;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-$$Nest$mhandleNfcStateABeamChanged(Lcom/samsung/android/settings/nfc/NfcEnabler;)V

    return-void
.end method
