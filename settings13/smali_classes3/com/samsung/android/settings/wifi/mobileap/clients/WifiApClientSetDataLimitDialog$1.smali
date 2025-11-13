.class Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog$1;
.super Ljava/lang/Object;
.source "WifiApClientSetDataLimitDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->-$$Nest$mbuttonValidate(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 76
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 77
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0xa

    if-lt p1, p2, :cond_0

    .line 78
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->-$$Nest$fgetmDataLimitEditErrorTextView(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->-$$Nest$fgetmDataLimitEditText(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$color;->sec_wifi_dialog_error_color:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->-$$Nest$fgetmDataLimitEditErrorTextView(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;)Landroid/widget/TextView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->-$$Nest$fgetmDataLimitEditText(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;)Landroid/content/Context;

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
