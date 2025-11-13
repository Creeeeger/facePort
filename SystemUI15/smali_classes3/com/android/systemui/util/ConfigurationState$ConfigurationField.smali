.class public abstract enum Lcom/android/systemui/util/ConfigurationState$ConfigurationField;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/util/ConfigurationState$ConfigurationField;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

.field public static final enum ASSET_SEQ:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

.field public static final enum DENSITY_DPI:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

.field public static final enum DISPLAY_DEVICE_TYPE:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

.field public static final enum LOCALE:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

.field public static final enum ORIENTATION:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

.field public static final enum SCREEN_HEIGHT_DP:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

.field public static final enum SCREEN_LAYOUT:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

.field public static final enum THEME_SEQ:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

.field public static final enum UI_MODE:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;


# direct methods
.method private static final synthetic $values()[Lcom/android/systemui/util/ConfigurationState$ConfigurationField;
    .locals 9

    sget-object v0, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->ASSET_SEQ:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    sget-object v1, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->DISPLAY_DEVICE_TYPE:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    sget-object v2, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->LOCALE:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    sget-object v3, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->ORIENTATION:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    sget-object v4, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->SCREEN_HEIGHT_DP:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    sget-object v5, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->SCREEN_LAYOUT:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    sget-object v6, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->THEME_SEQ:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    sget-object v7, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->UI_MODE:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    sget-object v8, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->DENSITY_DPI:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    filled-new-array/range {v0 .. v8}, [Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/util/ConfigurationState$ConfigurationField$ASSET_SEQ;

    const-string v1, "ASSET_SEQ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/util/ConfigurationState$ConfigurationField$ASSET_SEQ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->ASSET_SEQ:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    new-instance v0, Lcom/android/systemui/util/ConfigurationState$ConfigurationField$DISPLAY_DEVICE_TYPE;

    const-string v1, "DISPLAY_DEVICE_TYPE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/util/ConfigurationState$ConfigurationField$DISPLAY_DEVICE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->DISPLAY_DEVICE_TYPE:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    new-instance v0, Lcom/android/systemui/util/ConfigurationState$ConfigurationField$LOCALE;

    const-string v1, "LOCALE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/util/ConfigurationState$ConfigurationField$LOCALE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->LOCALE:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    new-instance v0, Lcom/android/systemui/util/ConfigurationState$ConfigurationField$ORIENTATION;

    const-string v1, "ORIENTATION"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/util/ConfigurationState$ConfigurationField$ORIENTATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->ORIENTATION:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    new-instance v0, Lcom/android/systemui/util/ConfigurationState$ConfigurationField$SCREEN_HEIGHT_DP;

    const-string v1, "SCREEN_HEIGHT_DP"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/util/ConfigurationState$ConfigurationField$SCREEN_HEIGHT_DP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->SCREEN_HEIGHT_DP:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    new-instance v0, Lcom/android/systemui/util/ConfigurationState$ConfigurationField$SCREEN_LAYOUT;

    const-string v1, "SCREEN_LAYOUT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/util/ConfigurationState$ConfigurationField$SCREEN_LAYOUT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->SCREEN_LAYOUT:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    new-instance v0, Lcom/android/systemui/util/ConfigurationState$ConfigurationField$THEME_SEQ;

    const-string v1, "THEME_SEQ"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/util/ConfigurationState$ConfigurationField$THEME_SEQ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->THEME_SEQ:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    new-instance v0, Lcom/android/systemui/util/ConfigurationState$ConfigurationField$UI_MODE;

    const-string v1, "UI_MODE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/util/ConfigurationState$ConfigurationField$UI_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->UI_MODE:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    new-instance v0, Lcom/android/systemui/util/ConfigurationState$ConfigurationField$DENSITY_DPI;

    const-string v1, "DENSITY_DPI"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/util/ConfigurationState$ConfigurationField$DENSITY_DPI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->DENSITY_DPI:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    invoke-static {}, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->$values()[Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->$VALUES:[Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries;"
        }
    .end annotation

    sget-object v0, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/util/ConfigurationState$ConfigurationField;
    .locals 1

    const-class v0, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/util/ConfigurationState$ConfigurationField;
    .locals 1

    sget-object v0, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->$VALUES:[Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    return-object v0
.end method


# virtual methods
.method public final getSummaryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract needToUpdate(Ljava/util/EnumMap;Landroid/content/res/Configuration;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap<",
            "Lcom/android/systemui/util/ConfigurationState$ConfigurationField;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/res/Configuration;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract toCompareString(Ljava/util/EnumMap;Landroid/content/res/Configuration;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap<",
            "Lcom/android/systemui/util/ConfigurationState$ConfigurationField;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/res/Configuration;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract update(Ljava/util/EnumMap;Landroid/content/res/Configuration;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap<",
            "Lcom/android/systemui/util/ConfigurationState$ConfigurationField;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/res/Configuration;",
            ")V"
        }
    .end annotation
.end method
