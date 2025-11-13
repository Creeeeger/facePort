.class Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController$ConnectionInfoRepoCallback;
.super Ljava/lang/Object;
.source "ConnectionL3PreferenceController.java"

# interfaces
.implements Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionInfoRepoCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController$ConnectionInfoRepoCallback;->this$0:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController$ConnectionInfoRepoCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController$ConnectionInfoRepoCallback;-><init>(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;)V

    return-void
.end method


# virtual methods
.method public allConnectionInfoUpdated()V
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController$ConnectionInfoRepoCallback;->this$0:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->-$$Nest$mupdateView(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;)V

    return-void
.end method

.method public scanResultInfoUpdated()V
    .locals 0

    return-void
.end method

.method public tcpMonitorInfoUpdated()V
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController$ConnectionInfoRepoCallback;->this$0:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->-$$Nest$mupdateView(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;)V

    return-void
.end method

.method public wifiInfoUpdated()V
    .locals 0

    return-void
.end method
