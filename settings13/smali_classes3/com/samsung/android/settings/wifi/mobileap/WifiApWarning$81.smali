.class Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$81;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 2265
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$81;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 2268
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$81;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetmCb(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/widget/CheckBox;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$81;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetmCb(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2269
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$81;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetmCb(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2270
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$81;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fputnevershowagain(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Z)V

    goto :goto_0

    .line 2272
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$81;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fputnevershowagain(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Z)V

    :goto_0
    return-void
.end method
