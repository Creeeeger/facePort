.class Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController$1;
.super Ljava/lang/Object;
.source "WifiApConfigureSecurityDropDownController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 281
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "showDialog() - DIALOG_OPEN_SECURITY_WARNING\'s PositiveButton clicked"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->-$$Nest$fgetmPreviousSecurityType(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->-$$Nest$mfindIndexOfValue(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->setValueIndex(I)V

    return-void
.end method
