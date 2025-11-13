.class public final enum Lcom/samsung/android/gtscell/data/GtsStoreType;
.super Ljava/lang/Enum;
.source "GtsItemFormat.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/gtscell/data/GtsStoreType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/gtscell/data/GtsStoreType;

.field public static final enum GALAXY_OPEN_THEME:Lcom/samsung/android/gtscell/data/GtsStoreType;

.field public static final enum GALAXY_STORE_APP:Lcom/samsung/android/gtscell/data/GtsStoreType;

.field public static final enum GALAXY_STORE_STICKER:Lcom/samsung/android/gtscell/data/GtsStoreType;

.field public static final enum GALAXY_THEME_ICON_PACK:Lcom/samsung/android/gtscell/data/GtsStoreType;

.field public static final enum GALAXY_THEME_WALLPAPER:Lcom/samsung/android/gtscell/data/GtsStoreType;

.field public static final enum NONE:Lcom/samsung/android/gtscell/data/GtsStoreType;

.field public static final enum PLAY_STORE_APP:Lcom/samsung/android/gtscell/data/GtsStoreType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/samsung/android/gtscell/data/GtsStoreType;

    new-instance v1, Lcom/samsung/android/gtscell/data/GtsStoreType;

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/GtsStoreType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/GtsStoreType;->NONE:Lcom/samsung/android/gtscell/data/GtsStoreType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/GtsStoreType;

    const-string v2, "PLAY_STORE_APP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/GtsStoreType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/GtsStoreType;->PLAY_STORE_APP:Lcom/samsung/android/gtscell/data/GtsStoreType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/GtsStoreType;

    const-string v2, "GALAXY_STORE_APP"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/GtsStoreType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/GtsStoreType;->GALAXY_STORE_APP:Lcom/samsung/android/gtscell/data/GtsStoreType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/GtsStoreType;

    const-string v2, "GALAXY_STORE_STICKER"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/GtsStoreType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/GtsStoreType;->GALAXY_STORE_STICKER:Lcom/samsung/android/gtscell/data/GtsStoreType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/GtsStoreType;

    const-string v2, "GALAXY_OPEN_THEME"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/GtsStoreType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/GtsStoreType;->GALAXY_OPEN_THEME:Lcom/samsung/android/gtscell/data/GtsStoreType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/GtsStoreType;

    const-string v2, "GALAXY_THEME_WALLPAPER"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/GtsStoreType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/GtsStoreType;->GALAXY_THEME_WALLPAPER:Lcom/samsung/android/gtscell/data/GtsStoreType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/GtsStoreType;

    const-string v2, "GALAXY_THEME_ICON_PACK"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/GtsStoreType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/GtsStoreType;->GALAXY_THEME_ICON_PACK:Lcom/samsung/android/gtscell/data/GtsStoreType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/gtscell/data/GtsStoreType;->$VALUES:[Lcom/samsung/android/gtscell/data/GtsStoreType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/gtscell/data/GtsStoreType;
    .locals 1

    const-class v0, Lcom/samsung/android/gtscell/data/GtsStoreType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/gtscell/data/GtsStoreType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/gtscell/data/GtsStoreType;
    .locals 1

    sget-object v0, Lcom/samsung/android/gtscell/data/GtsStoreType;->$VALUES:[Lcom/samsung/android/gtscell/data/GtsStoreType;

    invoke-virtual {v0}, [Lcom/samsung/android/gtscell/data/GtsStoreType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/gtscell/data/GtsStoreType;

    return-object v0
.end method
