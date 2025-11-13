.class Lcom/samsung/android/settings/nfc/NfcPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/NfcPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/NfcPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/NfcPreferenceController;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController$1;->this$0:Lcom/samsung/android/settings/nfc/NfcPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 229
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    return-void
.end method
