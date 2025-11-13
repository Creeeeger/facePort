.class public final Lcom/samsung/android/settings/accessibility/hearing/RealTimeTextUtils$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/ims/SemImsManager$ImsServiceConnectionListener;


# instance fields
.field public final synthetic val$phoneId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/settings/accessibility/hearing/RealTimeTextUtils$1;->val$phoneId:I

    return-void
.end method


# virtual methods
.method public final onConnected()V
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/accessibility/hearing/RealTimeTextUtils;->sImsManagers:[Lcom/samsung/android/ims/SemImsManager;

    const-string v0, "RealTimeTextUtils"

    const-string v1, "Connected IMS Listener:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/settings/accessibility/hearing/RealTimeTextUtils;->sImsManagerMap:Ljava/util/Map;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/hearing/RealTimeTextUtils$1;->val$phoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/accessibility/hearing/RealTimeTextUtils;->sImsManagers:[Lcom/samsung/android/ims/SemImsManager;

    iget p0, p0, Lcom/samsung/android/settings/accessibility/hearing/RealTimeTextUtils$1;->val$phoneId:I

    aget-object p0, v2, p0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onDisconnected()V
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/accessibility/hearing/RealTimeTextUtils;->sImsManagers:[Lcom/samsung/android/ims/SemImsManager;

    const-string v0, "RealTimeTextUtils"

    const-string v1, "Disconnected IMS Listener:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/settings/accessibility/hearing/RealTimeTextUtils;->sImsManagerMap:Ljava/util/Map;

    iget p0, p0, Lcom/samsung/android/settings/accessibility/hearing/RealTimeTextUtils$1;->val$phoneId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
