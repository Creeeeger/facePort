.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUtils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUtils;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUtils;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUtils;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMediaCardUiType$default(Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUtils;I)Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUiType;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x3

    new-array p0, p0, [F

    invoke-static {p1, p0}, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->colorToHSV(I[F)V

    const/4 p1, 0x0

    aget p1, p0, p1

    const/4 v0, 0x1

    aget v1, p0, v0

    const/4 v2, 0x2

    aget p0, p0, v2

    invoke-static {p1, v1, p0}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;->getLegibilityColorType(FFF)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->ordinal()I

    move-result p0

    aget p0, p1, p0

    :goto_0
    if-eq p0, v0, :cond_2

    if-eq p0, v2, :cond_1

    sget-object p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUiType;->DARK:Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUiType;

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUiType;->DARK:Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUiType;

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUiType;->LIGHT:Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUiType;

    :goto_1
    return-object p0
.end method
