.class Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$25;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V
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

    .line 757
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$25;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 759
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$25;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$msendIntentToAutoHotspotD2DFamilyUpdate(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Z)V

    .line 760
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$25;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method
