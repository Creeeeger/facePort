.class public final enum Lcom/android/settingslib/drawer/Tile$Type;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settingslib/drawer/Tile$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/settingslib/drawer/Tile$Type;

.field public static final enum ACTION:Lcom/android/settingslib/drawer/Tile$Type;

.field public static final enum EXTERNAL_ACTION:Lcom/android/settingslib/drawer/Tile$Type;

.field public static final enum GROUP:Lcom/android/settingslib/drawer/Tile$Type;

.field public static final enum SWITCH:Lcom/android/settingslib/drawer/Tile$Type;

.field public static final enum SWITCH_WITH_ACTION:Lcom/android/settingslib/drawer/Tile$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/settingslib/drawer/Tile$Type;

    const-string v1, "ACTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settingslib/drawer/Tile$Type;->ACTION:Lcom/android/settingslib/drawer/Tile$Type;

    new-instance v1, Lcom/android/settingslib/drawer/Tile$Type;

    const-string v2, "EXTERNAL_ACTION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/settingslib/drawer/Tile$Type;->EXTERNAL_ACTION:Lcom/android/settingslib/drawer/Tile$Type;

    new-instance v2, Lcom/android/settingslib/drawer/Tile$Type;

    const-string v3, "SWITCH"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/settingslib/drawer/Tile$Type;->SWITCH:Lcom/android/settingslib/drawer/Tile$Type;

    new-instance v3, Lcom/android/settingslib/drawer/Tile$Type;

    const-string v4, "SWITCH_WITH_ACTION"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/settingslib/drawer/Tile$Type;->SWITCH_WITH_ACTION:Lcom/android/settingslib/drawer/Tile$Type;

    new-instance v4, Lcom/android/settingslib/drawer/Tile$Type;

    const-string v5, "GROUP"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/settingslib/drawer/Tile$Type;->GROUP:Lcom/android/settingslib/drawer/Tile$Type;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/settingslib/drawer/Tile$Type;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/drawer/Tile$Type;->$VALUES:[Lcom/android/settingslib/drawer/Tile$Type;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settingslib/drawer/Tile$Type;
    .locals 1

    const-class v0, Lcom/android/settingslib/drawer/Tile$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/drawer/Tile$Type;

    return-object p0
.end method

.method public static values()[Lcom/android/settingslib/drawer/Tile$Type;
    .locals 1

    sget-object v0, Lcom/android/settingslib/drawer/Tile$Type;->$VALUES:[Lcom/android/settingslib/drawer/Tile$Type;

    invoke-virtual {v0}, [Lcom/android/settingslib/drawer/Tile$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settingslib/drawer/Tile$Type;

    return-object v0
.end method
