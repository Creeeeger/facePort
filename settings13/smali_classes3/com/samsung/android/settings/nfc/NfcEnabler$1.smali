.class Lcom/samsung/android/settings/nfc/NfcEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/NfcEnabler;
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

    .line 125
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 128
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    .line 130
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 131
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {p1}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-$$Nest$fgetmAlert(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {p1}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-$$Nest$fgetmAlert(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    const-string v0, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-$$Nest$mhandleNfcStateChanged(Lcom/samsung/android/settings/nfc/NfcEnabler;I)V

    .line 135
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {p1}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-$$Nest$mhandleNfcStateABeamChanged(Lcom/samsung/android/settings/nfc/NfcEnabler;)V

    .line 136
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-$$Nest$mhandleNfcSecureNfcChanged(Lcom/samsung/android/settings/nfc/NfcEnabler;)V

    goto :goto_0

    .line 140
    :cond_1
    sget-object p2, Landroid/app/UiModeManager;->SEM_ACTION_ENTER_DESKTOP_MODE:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 141
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {p1, v1}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-$$Nest$fputmIsDexMode(Lcom/samsung/android/settings/nfc/NfcEnabler;Z)V

    .line 142
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {p1}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-$$Nest$fgetmNfcAdapter(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object p2

    invoke-virtual {p2}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-$$Nest$mhandleNfcStateChanged(Lcom/samsung/android/settings/nfc/NfcEnabler;I)V

    .line 143
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-$$Nest$mhandleNfcStateABeamChanged(Lcom/samsung/android/settings/nfc/NfcEnabler;)V

    goto :goto_0

    .line 144
    :cond_2
    sget-object p2, Landroid/app/UiModeManager;->SEM_ACTION_EXIT_DESKTOP_MODE:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 145
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-$$Nest$fputmIsDexMode(Lcom/samsung/android/settings/nfc/NfcEnabler;Z)V

    .line 146
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {p1}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-$$Nest$fgetmNfcAdapter(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object p2

    invoke-virtual {p2}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-$$Nest$mhandleNfcStateChanged(Lcom/samsung/android/settings/nfc/NfcEnabler;I)V

    .line 147
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-$$Nest$mhandleNfcStateABeamChanged(Lcom/samsung/android/settings/nfc/NfcEnabler;)V

    :cond_3
    :goto_0
    return-void
.end method
