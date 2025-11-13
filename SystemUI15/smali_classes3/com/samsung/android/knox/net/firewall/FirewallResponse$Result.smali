.class public final enum Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

.field public static final enum FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

.field public static final enum NO_CHANGES:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

.field public static final enum SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;


# direct methods
.method public static synthetic $values()[Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    const-string v1, "NO_CHANGES"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    const-string v1, "FAILED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    invoke-static {}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->$values()[Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->$VALUES:[Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;
    .locals 1

    const-class v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->$VALUES:[Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    return-object v0
.end method
