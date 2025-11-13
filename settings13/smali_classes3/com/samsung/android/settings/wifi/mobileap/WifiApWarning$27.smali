.class Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$27;
.super Landroid/os/CountDownTimer;
.source "WifiApWarning.java"


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
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;JJ)V
    .locals 0

    .line 776
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$27;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    const-string v0, "WifiApWarning"

    const-string v1, "onFinish"

    .line 780
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$27;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$msendIntentToAutoHotspotD2DFamilyUpdate(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Z)V

    .line 782
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$27;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
