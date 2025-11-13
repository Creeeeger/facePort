.class Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$8;
.super Ljava/lang/Object;
.source "WifiConnectPreferenceController.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V
    .locals 0

    .line 2443
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$8;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 0

    const-string p0, "WifiConnectPrefController"

    const-string p1, "mSaveListener - onFailure"

    .line 2450
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess()V
    .locals 0

    return-void
.end method
