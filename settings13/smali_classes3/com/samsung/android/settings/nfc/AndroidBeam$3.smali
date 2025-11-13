.class Lcom/samsung/android/settings/nfc/AndroidBeam$3;
.super Ljava/lang/Object;
.source "AndroidBeam.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/nfc/AndroidBeam;->makeAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/AndroidBeam;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam$3;->this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 313
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam$3;->this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;

    invoke-static {p1}, Lcom/samsung/android/settings/nfc/AndroidBeam;->-$$Nest$fgetmNfcAdapter(Lcom/samsung/android/settings/nfc/AndroidBeam;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    .line 314
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam$3;->this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getMetricsCategory()I

    move-result p0

    const/16 p1, 0xe44

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    return-void
.end method
