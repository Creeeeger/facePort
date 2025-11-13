.class Lcom/samsung/android/settings/nfc/NfcOsaifuController$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcOsaifuController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/NfcOsaifuController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/NfcOsaifuController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/NfcOsaifuController;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifuController$1;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifuController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 162
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    return-void
.end method
