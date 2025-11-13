.class Landroid/nfc/NfcAdapter$3;
.super Ljava/lang/Object;
.source "NfcAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/nfc/NfcAdapter;->isNFCStateChangeAllowed(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/nfc/NfcAdapter;


# direct methods
.method constructor blacklist <init>(Landroid/nfc/NfcAdapter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/nfc/NfcAdapter;

    .line 2555
    iput-object p1, p0, Landroid/nfc/NfcAdapter$3;->this$0:Landroid/nfc/NfcAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 2557
    iget-object v0, p0, Landroid/nfc/NfcAdapter$3;->this$0:Landroid/nfc/NfcAdapter;

    iget-object v0, v0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/nfc/NfcAdapter$3;->this$0:Landroid/nfc/NfcAdapter;

    iget-object v1, v1, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    .line 2558
    const v2, 0x10401a6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2557
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2558
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2559
    return-void
.end method
