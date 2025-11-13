.class public final enum Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

.field public static final enum AOD_WITHOUT_WALLPAPER:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

.field public static final enum AOD_WITH_WALLPAPER:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

.field public static final enum NONE:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

.field public static final enum OFF:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

.field public static final enum ON:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->NONE:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    new-instance v1, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    const-string v2, "OFF"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->OFF:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    new-instance v2, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    const-string v3, "ON"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->ON:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    new-instance v3, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    const-string v4, "AOD_WITH_WALLPAPER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->AOD_WITH_WALLPAPER:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    new-instance v4, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    const-string v5, "AOD_WITHOUT_WALLPAPER"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->AOD_WITHOUT_WALLPAPER:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->$VALUES:[Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;
    .locals 1

    const-class v0, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;
    .locals 1

    sget-object v0, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->$VALUES:[Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    invoke-virtual {v0}, [Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    return-object v0
.end method
