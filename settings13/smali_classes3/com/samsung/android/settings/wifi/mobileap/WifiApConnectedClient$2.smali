.class Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient$2;
.super Ljava/lang/Object;
.source "WifiApConnectedClient.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
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

    .line 73
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    const-string p1, "TETH_010"

    const-string v0, "8026"

    .line 76
    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->-$$Nest$mshowInfoDialog(Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;)V

    const/4 p0, 0x1

    return p0
.end method
