.class public final Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController$ConnectionInfoRepoCallback;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController$ConnectionInfoRepoCallback;->this$0:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;

    return-void
.end method


# virtual methods
.method public final allConnectionInfoUpdated()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController$ConnectionInfoRepoCallback;->this$0:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->updateView$2()V

    return-void
.end method

.method public final scanResultInfoUpdated()V
    .locals 0

    return-void
.end method

.method public final tcpMonitorInfoUpdated()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController$ConnectionInfoRepoCallback;->this$0:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->updateView$2()V

    return-void
.end method

.method public final wifiInfoUpdated()V
    .locals 0

    return-void
.end method
