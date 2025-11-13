.class final enum Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;

.field public static final enum PAUSE:Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;

.field public static final enum PAUSE_N_SEEK_TO_0:Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;

.field public static final enum PLAY:Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;

.field public static final enum SEEK_TO:Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;

    const-string v1, "PLAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;->PLAY:Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;

    new-instance v1, Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;

    const-string v2, "PAUSE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;->PAUSE:Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;

    new-instance v2, Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;

    const-string v3, "SEEK_TO"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;->SEEK_TO:Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;

    new-instance v3, Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;

    const-string v4, "PAUSE_N_SEEK_TO_0"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;->PAUSE_N_SEEK_TO_0:Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;->$VALUES:[Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;
    .locals 1

    const-class v0, Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;
    .locals 1

    sget-object v0, Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;->$VALUES:[Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;

    invoke-virtual {v0}, [Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;

    return-object v0
.end method
