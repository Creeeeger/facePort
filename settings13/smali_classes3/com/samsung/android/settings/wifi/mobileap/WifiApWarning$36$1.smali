.class Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$36$1;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$36;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$36;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$36;)V
    .locals 0

    .line 872
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$36$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$36;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 875
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$36$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$36;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$36;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$mstartProvisioningIfNecessary(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    return-void
.end method
