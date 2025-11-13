.class Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog$1;
.super Ljava/lang/Object;
.source "WifiApSetDataLimitDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->-$$Nest$mbuttonValidate(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 104
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0xa

    if-lt p1, p2, :cond_0

    .line 106
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->-$$Nest$fgetmTvDataLength(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->-$$Nest$fgetmEtDataLimit(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$color;->sec_wifi_dialog_error_color:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->-$$Nest$fgetmTvDataLength(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;)Landroid/widget/TextView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->-$$Nest$fgetmEtDataLimit(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$color;->sec_wifi_ap_edit_text_background_color:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method
