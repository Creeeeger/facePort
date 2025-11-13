.class Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient$3;
.super Ljava/lang/Object;
.source "WifiApConnectedClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->showInfoDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p0, "TETH_010"

    const-string p1, "8027"

    .line 118
    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
