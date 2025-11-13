.class Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$46;
.super Ljava/lang/Object;
.source "WifiApSwitchEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showFirstTimePoup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0

    .line 1623
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$46;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1625
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$46;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-$$Nest$fgetnevershowagain(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1626
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$46;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "dontshowmemhsfirsttime"

    invoke-static {p0, p1, v1, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-$$Nest$mputBooleanSharedPreference(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
