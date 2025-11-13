.class public Lcom/samsung/android/settings/nfc/NfcOsaifuController$NfcSliceWorker$NfcUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NfcOsaifuController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/NfcOsaifuController$NfcSliceWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NfcUpdateReceiver"
.end annotation


# instance fields
.field private final NO_EXTRA:I

.field private final mSliceBackgroundWorker:Lcom/samsung/android/settings/nfc/NfcOsaifuController$NfcSliceWorker;

.field final synthetic this$0:Lcom/samsung/android/settings/nfc/NfcOsaifuController$NfcSliceWorker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/nfc/NfcOsaifuController$NfcSliceWorker;Lcom/samsung/android/settings/nfc/NfcOsaifuController$NfcSliceWorker;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifuController$NfcSliceWorker$NfcUpdateReceiver;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifuController$NfcSliceWorker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, -0x1

    .line 257
    iput p1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifuController$NfcSliceWorker$NfcUpdateReceiver;->NO_EXTRA:I

    .line 262
    iput-object p2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifuController$NfcSliceWorker$NfcUpdateReceiver;->mSliceBackgroundWorker:Lcom/samsung/android/settings/nfc/NfcOsaifuController$NfcSliceWorker;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "android.nfc.extra.ADAPTER_STATE"

    const/4 v0, -0x1

    .line 267
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

    .line 278
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifuController$NfcSliceWorker$NfcUpdateReceiver;->mSliceBackgroundWorker:Lcom/samsung/android/settings/nfc/NfcOsaifuController$NfcSliceWorker;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcOsaifuController$NfcSliceWorker;->updateSlice()V

    return-void

    :cond_1
    :goto_0
    const-string p0, "Transitional update, dropping broadcast"

    .line 274
    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
