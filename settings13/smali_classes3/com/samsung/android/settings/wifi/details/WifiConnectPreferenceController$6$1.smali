.class Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$6$1;
.super Ljava/lang/Object;
.source "WifiConnectPreferenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$6;->onFailure(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$6;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$6;)V
    .locals 0

    .line 2405
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$6$1;->this$1:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2408
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$6$1;->this$1:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$6;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$6;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmTimer(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$6$1;->this$1:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$6;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$6;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Landroid/content/Context;

    move-result-object p0

    const v1, 0x1040462

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;->stopImmediately(Ljava/lang/String;)V

    return-void
.end method
