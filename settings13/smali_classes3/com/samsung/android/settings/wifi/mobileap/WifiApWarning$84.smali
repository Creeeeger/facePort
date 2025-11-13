.class Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$84;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showFirstTimePoup(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0

    .line 2322
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$84;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .line 2324
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$84;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetnevershowagain(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2325
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$84;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "dontshowmemhsfirsttime"

    invoke-static {p1, v0, v2, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$mputBooleanSharedPreference(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2327
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$84;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method
