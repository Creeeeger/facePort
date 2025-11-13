.class public final enum Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

.field public static final enum INVALID:Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;


# instance fields
.field private final mSupplicantState:Landroid/net/wifi/SupplicantState;

.field private final mSupplicantText:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$_xALll-gMjIqotyfqAxXqXlsz2Y(Landroid/net/wifi/SupplicantState;Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;)Z
    .locals 0

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    invoke-virtual {p1, p0}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    sget-object v1, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    const-string v2, "FOUR_WAY_HANDSHAKE"

    const/4 v3, 0x0

    const-string v4, "FOUR WAY HANDSHAKE"

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;-><init>(Ljava/lang/String;ILandroid/net/wifi/SupplicantState;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    sget-object v2, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    const-string v3, "ASSOCIATED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2, v3}, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;-><init>(Ljava/lang/String;ILandroid/net/wifi/SupplicantState;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    sget-object v3, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    const-string v4, "COMPLETED"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3, v4}, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;-><init>(Ljava/lang/String;ILandroid/net/wifi/SupplicantState;Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    sget-object v4, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    const-string v5, "DISCONNECTED"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4, v5}, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;-><init>(Ljava/lang/String;ILandroid/net/wifi/SupplicantState;Ljava/lang/String;)V

    new-instance v4, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    sget-object v5, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    const-string v6, "DORMANT"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5, v6}, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;-><init>(Ljava/lang/String;ILandroid/net/wifi/SupplicantState;Ljava/lang/String;)V

    new-instance v5, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    sget-object v6, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    const-string v7, "GROUP_HANDSHAKE"

    const/4 v8, 0x5

    const-string v9, "GROUP HANDSHAKE"

    invoke-direct {v5, v7, v8, v6, v9}, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;-><init>(Ljava/lang/String;ILandroid/net/wifi/SupplicantState;Ljava/lang/String;)V

    new-instance v6, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    sget-object v7, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    const-string v8, "INACTIVE"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7, v8}, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;-><init>(Ljava/lang/String;ILandroid/net/wifi/SupplicantState;Ljava/lang/String;)V

    new-instance v7, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    sget-object v8, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    const-string v9, "INVALID"

    const/4 v10, 0x7

    invoke-direct {v7, v9, v10, v8, v9}, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;-><init>(Ljava/lang/String;ILandroid/net/wifi/SupplicantState;Ljava/lang/String;)V

    sput-object v7, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;->INVALID:Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    new-instance v8, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    sget-object v9, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    const-string v10, "SCANNING"

    const/16 v11, 0x8

    invoke-direct {v8, v10, v11, v9, v10}, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;-><init>(Ljava/lang/String;ILandroid/net/wifi/SupplicantState;Ljava/lang/String;)V

    new-instance v9, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    sget-object v10, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    const-string v11, "UNINITIALIZED"

    const/16 v12, 0x9

    invoke-direct {v9, v11, v12, v10, v11}, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;-><init>(Ljava/lang/String;ILandroid/net/wifi/SupplicantState;Ljava/lang/String;)V

    filled-new-array/range {v0 .. v9}, [Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;->$VALUES:[Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/net/wifi/SupplicantState;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    iput-object p4, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;->mSupplicantText:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;->$VALUES:[Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    return-object v0
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;->mSupplicantText:Ljava/lang/String;

    return-object p0
.end method
