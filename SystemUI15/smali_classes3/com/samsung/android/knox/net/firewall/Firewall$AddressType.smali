.class public final enum Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

.field public static final enum IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

.field public static final enum IPV6:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;


# direct methods
.method public static synthetic $values()[Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV6:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    filled-new-array {v0, v1}, [Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    const-string v1, "IPV4"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    new-instance v0, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    const-string v1, "IPV6"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV6:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    invoke-static {}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->$values()[Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->$VALUES:[Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;
    .locals 1

    const-class v0, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->$VALUES:[Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    return-object v0
.end method
