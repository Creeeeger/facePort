.class public abstract enum Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUiType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUiType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUiType;

.field public static final enum DARK:Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUiType;

.field public static final enum DEFAULT:Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUiType;

.field public static final enum LIGHT:Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUiType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUiType$DEFAULT;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUiType$DEFAULT;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUiType$LIGHT;

    const-string v2, "LIGHT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUiType$LIGHT;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUiType;->LIGHT:Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUiType;

    new-instance v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUiType$DARK;

    const-string v3, "DARK"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUiType$DARK;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUiType;->DARK:Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUiType;

    filled-new-array {v0, v1, v2}, [Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUiType;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUiType;->$VALUES:[Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUiType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUiType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUiType;
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUiType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUiType;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUiType;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUiType;->$VALUES:[Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUiType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUiType;

    return-object v0
.end method


# virtual methods
.method public abstract getMediaCardPrimaryInfoColor(Landroid/content/Context;)I
.end method
