.class Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController$ConnectionInfoRepoCallback;
.super Ljava/lang/Object;
.source "ConnectionStatusPreferenceController.java"

# interfaces
.implements Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionInfoRepoCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController$ConnectionInfoRepoCallback;->this$0:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController$ConnectionInfoRepoCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController$ConnectionInfoRepoCallback;-><init>(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;)V

    return-void
.end method


# virtual methods
.method public allConnectionInfoUpdated()V
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController$ConnectionInfoRepoCallback;->this$0:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->-$$Nest$mupdateView(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;)V

    return-void
.end method

.method public scanResultInfoUpdated()V
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController$ConnectionInfoRepoCallback;->this$0:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->-$$Nest$mupdateView(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;)V

    return-void
.end method

.method public tcpMonitorInfoUpdated()V
    .locals 0

    return-void
.end method

.method public wifiInfoUpdated()V
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController$ConnectionInfoRepoCallback;->this$0:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->-$$Nest$mupdateView(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;)V

    return-void
.end method
