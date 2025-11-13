.class Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$4;
.super Ljava/lang/Object;
.source "WifiConnectPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->showErrorDialogForEnterprise(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V
    .locals 0

    .line 1791
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$4;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1794
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$4;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fputmErrorDialogDiaply(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;Z)V

    .line 1795
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$4;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fputmConnectingState(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;Z)V

    .line 1796
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$4;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fputmShouldShowMessageForRetry(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;Z)V

    .line 1797
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$4;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$mresetProgressButtonAndPreference(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V

    return-void
.end method
