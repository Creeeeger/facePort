.class Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$2;
.super Ljava/lang/Object;
.source "WifiApConfigureSetDataLimitPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->-$$Nest$fputmDataLimitDialog(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;)V

    return-void
.end method
