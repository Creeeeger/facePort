.class public final enum Lcom/samsung/android/knox/net/firewall/Firewall$Direction;
.super Ljava/lang/Enum;
.source "Firewall.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/net/firewall/Firewall$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

.field public static final enum ALL:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

.field public static final enum FORWARD:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

.field public static final enum INPUT:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

.field public static final enum OUTPUT:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 42
    new-instance v0, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    const-string v1, "INPUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->INPUT:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    .line 43
    new-instance v1, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    const-string v3, "OUTPUT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->OUTPUT:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    .line 44
    new-instance v3, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    const-string v5, "ALL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->ALL:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    .line 45
    new-instance v5, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    const-string v7, "FORWARD"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->FORWARD:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 41
    sput-object v7, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->$VALUES:[Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$Direction;
    .locals 1

    .line 41
    const-class v0, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/net/firewall/Firewall$Direction;
    .locals 1

    .line 41
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->$VALUES:[Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    return-object v0
.end method
