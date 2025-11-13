.class public final Lcom/samsung/android/settings/nfc/NfcSettings$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/nfc/NfcSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/nfc/NfcSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings$2;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    const-string p1, "NfcSettings"

    const-string/jumbo v0, "nfc pref changed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string/jumbo p1, "showNfcEuiccMenu"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/settings/nfc/NfcSettings$2;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    iget-object p2, p2, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcPreferences:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcSettings$2;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->createPreferenceForPaymentSim()V

    :cond_0
    return-void
.end method
