.class public final enum Lcom/samsung/android/allshare/ServiceConnector$ServiceState;
.super Ljava/lang/Enum;
.source "ServiceConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/ServiceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ServiceState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/allshare/ServiceConnector$ServiceState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

.field public static final enum whitelist DISABLED:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

.field public static final enum whitelist ENABLED:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

.field public static final enum whitelist UNABLE_TO_CONNECT:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

.field public static final enum whitelist UNABLE_TO_DISCONNECT:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

.field public static final enum whitelist UNKNOWN:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 11

    .line 100
    new-instance v0, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    const-string v1, "ENABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->ENABLED:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    .line 105
    new-instance v1, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    const-string v3, "DISABLED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->DISABLED:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    .line 110
    new-instance v3, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    const-string v5, "UNABLE_TO_CONNECT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->UNABLE_TO_CONNECT:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    .line 115
    new-instance v5, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    const-string v7, "UNABLE_TO_DISCONNECT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->UNABLE_TO_DISCONNECT:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    .line 120
    new-instance v7, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    const-string v9, "UNKNOWN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->UNKNOWN:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    .line 95
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->$VALUES:[Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Lcom/samsung/android/allshare/ServiceConnector$ServiceState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 95
    const-class v0, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    return-object v0
.end method

.method public static whitelist values()[Lcom/samsung/android/allshare/ServiceConnector$ServiceState;
    .locals 1

    .line 95
    sget-object v0, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->$VALUES:[Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    invoke-virtual {v0}, [Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    return-object v0
.end method
