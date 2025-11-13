.class final enum Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;
.super Ljava/lang/Enum;
.source "ValidationProbeEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "probeName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;

.field public static final enum PROBE_DNS:Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;

.field public static final enum PROBE_HTTP:Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;

.field public static final enum PROBE_HTTPS:Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;

.field public static final enum UNKNOWN:Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 24
    new-instance v0, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;

    const-string v1, "PROBE_DNS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;->PROBE_DNS:Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;

    .line 25
    new-instance v1, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;

    const-string v3, "PROBE_HTTP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;->PROBE_HTTP:Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;

    .line 26
    new-instance v3, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;

    const-string v5, "PROBE_HTTPS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;->PROBE_HTTPS:Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;

    .line 27
    new-instance v5, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;

    const-string v7, "UNKNOWN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;->UNKNOWN:Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 23
    sput-object v7, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;->$VALUES:[Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;
    .locals 1

    .line 23
    const-class v0, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;
    .locals 1

    .line 23
    sget-object v0, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;->$VALUES:[Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;

    return-object v0
.end method
