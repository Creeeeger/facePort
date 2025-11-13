.class Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$3;
.super Ljava/lang/Object;
.source "EthernetConfigDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;)V
    .locals 0

    .line 444
    iput-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$3;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    const-string p1, "EtherenetSettings"

    const-string v0, "afterTextChanged"

    .line 454
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$3;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->enableSaveIfAppropriate()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string p0, "EtherenetSettings"

    const-string p1, "beforeTextChanged"

    .line 450
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string p0, "EtherenetSettings"

    const-string p1, "onTextChanged"

    .line 446
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
