.class public final Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker$NfcUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mSliceBackgroundWorker:Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;


# direct methods
.method public constructor <init>(Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker$NfcUpdateReceiver;->mSliceBackgroundWorker:Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "android.nfc.extra.ADAPTER_STATE"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "NfcSliceWorker"

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Nfc broadcast received, updating Slice."

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker$NfcUpdateReceiver;->mSliceBackgroundWorker:Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;

    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->notifySliceChange()V

    return-void

    :cond_1
    :goto_0
    const-string p0, "Transitional update, dropping broadcast"

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
