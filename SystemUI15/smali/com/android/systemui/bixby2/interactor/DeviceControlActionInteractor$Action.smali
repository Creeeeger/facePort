.class final enum Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

.field public static final enum power_off:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

.field public static final enum reboot:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

.field public static final enum set_autorotate:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

.field public static final enum set_flashlight:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

.field public static final enum set_flashlight_level:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

.field public static final enum set_landscapemode:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

.field public static final enum set_portraitmode:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

.field public static final enum turnoff_screen:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;


# direct methods
.method private static synthetic $values()[Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;
    .locals 8

    sget-object v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->power_off:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    sget-object v1, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->reboot:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    sget-object v2, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->turnoff_screen:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    sget-object v3, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_flashlight:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    sget-object v4, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_flashlight_level:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    sget-object v5, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_autorotate:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    sget-object v6, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_landscapemode:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    sget-object v7, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_portraitmode:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    filled-new-array/range {v0 .. v7}, [Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    const-string v1, "power_off"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->power_off:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    new-instance v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    const-string v1, "reboot"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->reboot:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    new-instance v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    const-string/jumbo v1, "turnoff_screen"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->turnoff_screen:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    new-instance v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    const-string v1, "set_flashlight"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_flashlight:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    new-instance v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    const-string v1, "set_flashlight_level"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_flashlight_level:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    new-instance v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    const-string v1, "set_autorotate"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_autorotate:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    new-instance v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    const-string v1, "set_landscapemode"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_landscapemode:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    new-instance v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    const-string v1, "set_portraitmode"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_portraitmode:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    invoke-static {}, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->$values()[Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->$VALUES:[Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;
    .locals 1

    const-class v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;
    .locals 1

    sget-object v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->$VALUES:[Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    invoke-virtual {v0}, [Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    return-object v0
.end method
