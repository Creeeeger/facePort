.class Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$2;
.super Ljava/lang/Object;
.source "WifiModifyPreferenceController.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;)V
    .locals 0

    .line 1668
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$2;->this$0:Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 1

    const-string p1, "WifiModifyPrefCtrl"

    const-string v0, "mSaveListener - onFailure"

    .line 1676
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$2;->this$0:Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;)Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->wifi_failed_save_message:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 1679
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    const-string p0, "WifiModifyPrefCtrl"

    const-string v0, "mSaveListener onSuccess "

    .line 1671
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
