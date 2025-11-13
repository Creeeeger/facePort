.class Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$83;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 2314
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$83;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 2316
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$83;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetnevershowagain(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2317
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$83;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x1

    const-string v1, "dontshowmemhsfirsttime"

    invoke-static {p1, p2, v1, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$mputBooleanSharedPreference(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2319
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$83;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method
