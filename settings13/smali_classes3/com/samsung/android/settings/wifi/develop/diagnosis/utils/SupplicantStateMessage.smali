.class public final enum Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;
.super Ljava/lang/Enum;
.source "SupplicantStateMessage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

.field public static final enum ASSOCIATED:Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

.field public static final enum COMPLETED:Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

.field public static final enum DISCONNECTED:Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

.field public static final enum DORMANT:Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

.field public static final enum FOUR_WAY_HANDSHAKE:Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

.field public static final enum GROUP_HANDSHAKE:Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

.field public static final enum INACTIVE:Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

.field public static final enum INVALID:Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

.field public static final enum SCANNING:Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

.field public static final enum UNINITIALIZED:Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;


# instance fields
.field private final mSupplicantState:Landroid/net/wifi/SupplicantState;

.field private final mSupplicantText:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$KNSf9PcQVkZOaMldvYVi-mt4Ogk(Landroid/net/wifi/SupplicantState;Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;->lambda$find$0(Landroid/net/wifi/SupplicantState;Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 16

    .line 25
    new-instance v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    sget-object v1, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    const-string v2, "FOUR_WAY_HANDSHAKE"

    const/4 v3, 0x0

    const-string v4, "FOUR WAY HANDSHAKE"

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;-><init>(Ljava/lang/String;ILandroid/net/wifi/SupplicantState;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;->FOUR_WAY_HANDSHAKE:Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    .line 26
    new-instance v1, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    sget-object v2, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    const-string v4, "ASSOCIATED"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v4}, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;-><init>(Ljava/lang/String;ILandroid/net/wifi/SupplicantState;Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;->ASSOCIATED:Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    .line 27
    new-instance v2, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    sget-object v4, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    const-string v6, "COMPLETED"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4, v6}, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;-><init>(Ljava/lang/String;ILandroid/net/wifi/SupplicantState;Ljava/lang/String;)V

    sput-object v2, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;->COMPLETED:Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    .line 28
    new-instance v4, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    sget-object v6, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    const-string v8, "DISCONNECTED"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6, v8}, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;-><init>(Ljava/lang/String;ILandroid/net/wifi/SupplicantState;Ljava/lang/String;)V

    sput-object v4, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;->DISCONNECTED:Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    .line 29
    new-instance v6, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    sget-object v8, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    const-string v10, "DORMANT"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8, v10}, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;-><init>(Ljava/lang/String;ILandroid/net/wifi/SupplicantState;Ljava/lang/String;)V

    sput-object v6, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;->DORMANT:Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    .line 30
    new-instance v8, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    sget-object v10, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    const-string v12, "GROUP_HANDSHAKE"

    const/4 v13, 0x5

    const-string v14, "GROUP HANDSHAKE"

    invoke-direct {v8, v12, v13, v10, v14}, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;-><init>(Ljava/lang/String;ILandroid/net/wifi/SupplicantState;Ljava/lang/String;)V

    sput-object v8, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;->GROUP_HANDSHAKE:Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    .line 31
    new-instance v10, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    sget-object v12, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    const-string v14, "INACTIVE"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12, v14}, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;-><init>(Ljava/lang/String;ILandroid/net/wifi/SupplicantState;Ljava/lang/String;)V

    sput-object v10, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;->INACTIVE:Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    .line 32
    new-instance v12, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    sget-object v14, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    const-string v15, "INVALID"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14, v15}, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;-><init>(Ljava/lang/String;ILandroid/net/wifi/SupplicantState;Ljava/lang/String;)V

    sput-object v12, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;->INVALID:Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    .line 33
    new-instance v14, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    sget-object v15, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    const-string v13, "SCANNING"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15, v13}, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;-><init>(Ljava/lang/String;ILandroid/net/wifi/SupplicantState;Ljava/lang/String;)V

    sput-object v14, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;->SCANNING:Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    .line 34
    new-instance v13, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    sget-object v15, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    const-string v11, "UNINITIALIZED"

    const/16 v9, 0x9

    invoke-direct {v13, v11, v9, v15, v11}, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;-><init>(Ljava/lang/String;ILandroid/net/wifi/SupplicantState;Ljava/lang/String;)V

    sput-object v13, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;->UNINITIALIZED:Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    const/16 v11, 0xa

    new-array v11, v11, [Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    aput-object v0, v11, v3

    aput-object v1, v11, v5

    aput-object v2, v11, v7

    const/4 v0, 0x3

    aput-object v4, v11, v0

    const/4 v0, 0x4

    aput-object v6, v11, v0

    const/4 v0, 0x5

    aput-object v8, v11, v0

    const/4 v0, 0x6

    aput-object v10, v11, v0

    const/4 v0, 0x7

    aput-object v12, v11, v0

    const/16 v0, 0x8

    aput-object v14, v11, v0

    aput-object v13, v11, v9

    .line 23
    sput-object v11, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;->$VALUES:[Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/net/wifi/SupplicantState;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/SupplicantState;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    .line 41
    iput-object p4, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;->mSupplicantText:Ljava/lang/String;

    return-void
.end method

.method public static find(Landroid/net/wifi/SupplicantState;)Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;
    .locals 2

    .line 49
    invoke-static {}, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;->values()[Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/SupplicantState;)V

    .line 50
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 51
    invoke-interface {p0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;->INVALID:Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    .line 52
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    return-object p0
.end method

.method private static synthetic lambda$find$0(Landroid/net/wifi/SupplicantState;Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;)Z
    .locals 0

    .line 50
    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    invoke-virtual {p1, p0}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;
    .locals 1

    .line 23
    const-class v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;
    .locals 1

    .line 23
    sget-object v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;->$VALUES:[Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    return-object v0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;->mSupplicantText:Ljava/lang/String;

    return-object p0
.end method
