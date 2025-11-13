.class public final enum Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;
.super Ljava/lang/Enum;
.source "WifiAdminProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PolicyState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

.field public static final enum DEFAULT:Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

.field public static final enum FALSE:Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

.field public static final enum TRUE:Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 402
    new-instance v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    const-string v1, "FALSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;->FALSE:Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    new-instance v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    const-string v3, "TRUE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;->TRUE:Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    new-instance v3, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    const-string v5, "DEFAULT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;->DEFAULT:Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 401
    sput-object v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;->$VALUES:[Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 401
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;
    .locals 1

    .line 401
    const-class v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;
    .locals 1

    .line 401
    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;->$VALUES:[Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    return-object v0
.end method
