.class Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$61;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 1313
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$61;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1315
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$61;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$mcheckLowBatteryAndProceedFurthur(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    return-void
.end method
