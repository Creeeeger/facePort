.class public final enum Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;
.super Ljava/lang/Enum;
.source "FirewallResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/net/firewall/FirewallResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

.field public static final enum FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

.field public static final enum NO_CHANGES:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

.field public static final enum SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 16
    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 17
    new-instance v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    const-string v3, "NO_CHANGES"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 18
    new-instance v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    const-string v5, "FAILED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 15
    sput-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->$VALUES:[Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;
    .locals 1

    .line 15
    const-class v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;
    .locals 1

    .line 15
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->$VALUES:[Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    return-object v0
.end method
