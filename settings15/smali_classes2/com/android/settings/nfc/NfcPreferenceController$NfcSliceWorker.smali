.class public Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;
.super Lcom/android/settings/slices/SliceBackgroundWorker;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/NfcPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NfcSliceWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/slices/SliceBackgroundWorker;"
    }
.end annotation


# static fields
.field public static final NFC_FILTER:Landroid/content/IntentFilter;


# instance fields
.field public mUpdateObserver:Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker$NfcUpdateReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;->NFC_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/SliceBackgroundWorker;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    new-instance p1, Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker$NfcUpdateReceiver;

    invoke-direct {p1, p0}, Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker$NfcUpdateReceiver;-><init>(Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;)V

    iput-object p1, p0, Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;->mUpdateObserver:Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker$NfcUpdateReceiver;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;->mUpdateObserver:Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker$NfcUpdateReceiver;

    return-void
.end method

.method public final onSlicePinned()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/slices/SliceBackgroundWorker;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;->mUpdateObserver:Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker$NfcUpdateReceiver;

    sget-object v1, Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;->NFC_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final onSliceUnpinned()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/slices/SliceBackgroundWorker;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;->mUpdateObserver:Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker$NfcUpdateReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
