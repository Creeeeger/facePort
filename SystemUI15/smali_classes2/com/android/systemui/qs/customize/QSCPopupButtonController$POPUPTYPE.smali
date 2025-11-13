.class public abstract enum Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field public static final synthetic $VALUES:[Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;

.field public static final enum HIDE_SMART_VIEW_LARGE_TILE:Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;

.field public static final enum MULTISIM:Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;


# instance fields
.field private final first:I

.field private final second:I

.field private final title:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE$BRIGHTNESS;

    const-string v1, "BRIGHTNESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE$BRIGHTNESS;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE$DEVICEMEDIA;

    const-string v2, "DEVICEMEDIA"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE$DEVICEMEDIA;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE$MULTISIM;

    const-string v3, "MULTISIM"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE$MULTISIM;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;->MULTISIM:Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;

    new-instance v3, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE$HIDE_SMART_VIEW_LARGE_TILE;

    const-string v4, "HIDE_SMART_VIEW_LARGE_TILE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE$HIDE_SMART_VIEW_LARGE_TILE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;->HIDE_SMART_VIEW_LARGE_TILE:Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;->$VALUES:[Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;->title:I

    iput p4, p0, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;->first:I

    iput p5, p0, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;->second:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;
    .locals 1

    const-class v0, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;->$VALUES:[Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;

    return-object v0
.end method


# virtual methods
.method public final getFirst()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;->first:I

    return p0
.end method

.method public final getSecond()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;->second:I

    return p0
.end method

.method public abstract getSelectedIdx(Lcom/android/systemui/tuner/TunerService;)I
.end method

.method public final getTitle()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;->title:I

    return p0
.end method

.method public abstract isAvailable(Lcom/android/systemui/tuner/TunerService;)Z
.end method

.method public abstract updateValue(ZLcom/android/systemui/tuner/TunerService;Lcom/android/systemui/qs/customize/SecQSSettingEditResources;)V
.end method
