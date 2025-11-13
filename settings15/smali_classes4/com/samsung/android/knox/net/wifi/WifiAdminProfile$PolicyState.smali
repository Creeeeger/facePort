.class public final enum Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


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
.field public static final synthetic $VALUES:[Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

.field public static final enum DEFAULT:Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

.field public static final enum FALSE:Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

.field public static final enum TRUE:Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;


# direct methods
.method public static synthetic $values()[Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;->FALSE:Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;->TRUE:Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    sget-object v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;->DEFAULT:Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    const-string v1, "FALSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;->FALSE:Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    new-instance v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    const-string v1, "TRUE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;->TRUE:Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    new-instance v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    const-string v1, "DEFAULT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;->DEFAULT:Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    invoke-static {}, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;->$values()[Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;->$VALUES:[Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;->FALSE:Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v1, p0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;->TRUE:Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v1, p0, :cond_1

    return-object v0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;->DEFAULT:Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;
    .locals 1

    const-class v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    return-object p0
.end method

.method public static valueOf(Z)Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;
    .locals 1

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;->TRUE:Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    return-object p0

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;->FALSE:Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;->$VALUES:[Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    return-object v0
.end method


# virtual methods
.method public valueOf()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;->TRUE:Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
