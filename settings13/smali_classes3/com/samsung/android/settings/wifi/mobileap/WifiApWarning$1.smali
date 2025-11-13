.class Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->onCreate(Landroid/os/Bundle;)V
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

    .line 312
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 314
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetmNaiMismatchDialog(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 315
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetmNaiMismatchDialog(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 317
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method
