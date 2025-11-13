.class Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$3;
.super Landroid/database/ContentObserver;
.source "MobileWIPSSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;Landroid/os/Handler;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$3;->this$0:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const-string p1, "MobileWIPSSettings"

    const-string v0, "Detection db was updated"

    .line 182
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$3;->this$0:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->-$$Nest$msetHistoryListUp(Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;)V

    return-void
.end method
