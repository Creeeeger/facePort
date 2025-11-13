.class Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$4$1;
.super Ljava/lang/Object;
.source "WifiApEditSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$4;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$4;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$4;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$4$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 411
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$4$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$4;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->-$$Nest$mshowBandSelectionTipsDialog(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    return-void
.end method
