.class final enum Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

.field public static final enum auto_brightness_cover:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

.field public static final enum back:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

.field public static final enum capture_screen:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

.field public static final enum close_panelscreen:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

.field public static final enum goto_homescreen:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

.field public static final enum scroll_up_down:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

.field public static final enum set_brightness:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

.field public static final enum share_screenshot:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

.field public static final enum share_screenshot_uri:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;


# direct methods
.method private static synthetic $values()[Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;
    .locals 9

    sget-object v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->goto_homescreen:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    sget-object v1, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->back:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    sget-object v2, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->capture_screen:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    sget-object v3, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->share_screenshot:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    sget-object v4, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->share_screenshot_uri:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    sget-object v5, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->set_brightness:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    sget-object v6, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->scroll_up_down:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    sget-object v7, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->auto_brightness_cover:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    sget-object v8, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->close_panelscreen:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    filled-new-array/range {v0 .. v8}, [Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    const-string v1, "goto_homescreen"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->goto_homescreen:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    new-instance v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    const-string v1, "back"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->back:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    new-instance v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    const-string v1, "capture_screen"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->capture_screen:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    new-instance v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    const-string v1, "share_screenshot"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->share_screenshot:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    new-instance v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    const-string v1, "share_screenshot_uri"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->share_screenshot_uri:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    new-instance v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    const-string v1, "set_brightness"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->set_brightness:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    new-instance v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    const-string v1, "scroll_up_down"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->scroll_up_down:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    new-instance v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    const-string v1, "auto_brightness_cover"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->auto_brightness_cover:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    new-instance v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    const-string v1, "close_panelscreen"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->close_panelscreen:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-static {}, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->$values()[Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->$VALUES:[Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;
    .locals 1

    const-class v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;
    .locals 1

    sget-object v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->$VALUES:[Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-virtual {v0}, [Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    return-object v0
.end method
