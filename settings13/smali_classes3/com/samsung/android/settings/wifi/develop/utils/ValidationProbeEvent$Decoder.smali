.class final Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$Decoder;
.super Ljava/lang/Object;
.source "ValidationProbeEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Decoder"
.end annotation


# static fields
.field static final constants:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 84
    const-class v2, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent;

    aput-object v2, v0, v1

    const-string v1, "PROBE_"

    const-string v2, "FIRST_"

    const-string v3, "REVALIDATION"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;[Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$Decoder;->constants:Landroid/util/SparseArray;

    return-void
.end method

.method public static getProbeName(I)Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 95
    sget-object p0, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;->UNKNOWN:Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;

    return-object p0

    .line 93
    :cond_0
    sget-object p0, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;->PROBE_HTTPS:Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;

    return-object p0

    .line 91
    :cond_1
    sget-object p0, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;->PROBE_HTTP:Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;

    return-object p0

    .line 89
    :cond_2
    sget-object p0, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;->PROBE_DNS:Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;

    return-object p0
.end method
