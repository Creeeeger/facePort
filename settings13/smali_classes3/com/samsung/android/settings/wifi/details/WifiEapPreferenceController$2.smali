.class Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController$2;
.super Ljava/lang/Object;
.source "WifiEapPreferenceController.java"

# interfaces
.implements Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$EapMethodChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController$2;->this$0:Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController$2;->this$0:Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->-$$Nest$fputmPhase2Method(Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;I)V

    .line 362
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController$2;->this$0:Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->-$$Nest$fgetmIsExpanded(Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->updatePreference(Z)V

    return-void
.end method
