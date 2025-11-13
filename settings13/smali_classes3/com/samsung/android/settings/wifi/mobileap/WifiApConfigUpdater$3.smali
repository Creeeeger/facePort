.class Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater$3;
.super Ljava/lang/Object;
.source "WifiApConfigUpdater.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->updateConfigurationToFramework(Landroid/net/wifi/SoftApConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 100
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
