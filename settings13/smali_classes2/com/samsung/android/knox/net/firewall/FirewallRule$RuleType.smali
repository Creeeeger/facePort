.class public final enum Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;
.super Ljava/lang/Enum;
.source "FirewallRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/net/firewall/FirewallRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RuleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

.field public static final enum ALLOW:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

.field public static final enum DENY:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

.field public static final enum REDIRECT:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

.field public static final enum REDIRECT_EXCEPTION:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 25
    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    const-string v1, "DENY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->DENY:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 26
    new-instance v1, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    const-string v3, "ALLOW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ALLOW:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 27
    new-instance v3, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    const-string v5, "REDIRECT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 28
    new-instance v5, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    const-string v7, "REDIRECT_EXCEPTION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 24
    sput-object v7, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->$VALUES:[Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;
    .locals 1

    .line 24
    const-class v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;
    .locals 1

    .line 24
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->$VALUES:[Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    return-object v0
.end method
