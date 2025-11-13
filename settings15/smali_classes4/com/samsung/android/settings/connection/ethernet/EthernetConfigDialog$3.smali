.class public final Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$3;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    const-string p1, "EtherenetSettings"

    const-string v0, "afterTextChanged"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$3;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->enableSaveIfAppropriate()V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string p0, "EtherenetSettings"

    const-string p1, "beforeTextChanged"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string p0, "EtherenetSettings"

    const-string/jumbo p1, "onTextChanged"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
