.class public final Lcom/samsung/android/settings/nfc/NfcSettings$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/nfc/NfcSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/nfc/NfcSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    iget-boolean p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mIsEmergencyMode:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mActivity:Landroidx/fragment/app/FragmentActivity;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
