.class public abstract Lcom/android/settings/nfc/BaseNfcEnabler;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mIntentFilter:Landroid/content/IntentFilter;

.field public final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field public final mReceiver:Lcom/android/settings/nfc/BaseNfcEnabler$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/nfc/BaseNfcEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/BaseNfcEnabler$1;-><init>(Lcom/android/settings/nfc/BaseNfcEnabler;)V

    iput-object v0, p0, Lcom/android/settings/nfc/BaseNfcEnabler;->mReceiver:Lcom/android/settings/nfc/BaseNfcEnabler$1;

    iput-object p1, p0, Lcom/android/settings/nfc/BaseNfcEnabler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/nfc/BaseNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/nfc/BaseNfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/nfc/BaseNfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public abstract handleNfcStateChanged(I)V
.end method
