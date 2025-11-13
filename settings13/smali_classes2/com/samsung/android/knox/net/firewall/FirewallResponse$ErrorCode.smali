.class public final enum Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;
.super Ljava/lang/Enum;
.source "FirewallResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/net/firewall/FirewallResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

.field public static final enum DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

.field public static final enum INPUT_CHAIN_NOT_SUPPORTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

.field public static final enum INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

.field public static final enum IPV6_NOT_SUPPORTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

.field public static final enum NOT_AUTHORIZED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

.field public static final enum NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

.field public static final enum OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

.field public static final enum UNEXPECTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 25
    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v1, "NO_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 26
    new-instance v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v3, "DATABASE_ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 27
    new-instance v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v5, "INVALID_PARAMETER_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 28
    new-instance v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v7, "OPERATION_NOT_PERMITTED_ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 29
    new-instance v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v9, "NOT_AUTHORIZED_ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NOT_AUTHORIZED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 30
    new-instance v9, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v11, "IPV6_NOT_SUPPORTED_ERROR"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->IPV6_NOT_SUPPORTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 31
    new-instance v11, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v13, "UNEXPECTED_ERROR"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 32
    new-instance v13, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v15, "INPUT_CHAIN_NOT_SUPPORTED_ERROR"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INPUT_CHAIN_NOT_SUPPORTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 24
    sput-object v15, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->$VALUES:[Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;
    .locals 1

    .line 24
    const-class v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;
    .locals 1

    .line 24
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->$VALUES:[Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    return-object v0
.end method
