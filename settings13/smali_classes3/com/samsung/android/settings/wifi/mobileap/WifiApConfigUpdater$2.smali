.class Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater$2;
.super Ljava/lang/Object;
.source "WifiApConfigUpdater.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 91
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 94
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
