.class Lcom/samsung/android/settings/nfc/NfcEnabler$2;
.super Ljava/lang/Object;
.source "NfcEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/nfc/NfcEnabler;->makeAlertDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

.field final synthetic val$alertType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/NfcEnabler;Ljava/lang/String;)V
    .locals 0

    .line 882
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$2;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    iput-object p2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$2;->val$alertType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 886
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$2;->val$alertType:Ljava/lang/String;

    const-string p2, "NfcSettingsOff"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 p2, 0xe42

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 887
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$2;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-$$Nest$fgetmNfcAdapter(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->disable()Z

    const/16 p0, 0xe43

    .line 888
    invoke-static {p2, p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    goto :goto_0

    .line 889
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$2;->val$alertType:Ljava/lang/String;

    const-string v1, "ConnectionsNfcSettingsOff"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 890
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$2;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-$$Nest$fgetmNfcAdapter(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->disable()Z

    const/16 p0, 0xbbd

    const/16 p1, 0xc8e

    .line 891
    invoke-static {p0, p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    goto :goto_0

    .line 892
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$2;->val$alertType:Ljava/lang/String;

    const-string v1, "RwOff"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 893
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$2;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {p1}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSupportAndroidBeam(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 894
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$2;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {p1}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "android_beam_state"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 896
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$2;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-$$Nest$fgetmNfcAdapter(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->readerDisable()Z

    const/16 p0, 0x1b67

    const-wide/16 v0, 0x1

    .line 897
    invoke-static {p2, p0, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_0

    .line 898
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$2;->val$alertType:Ljava/lang/String;

    const-string p1, "AndroidBeamOff"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/16 p0, 0x1b69

    .line 899
    invoke-static {p2, p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    :cond_4
    :goto_0
    return-void
.end method
