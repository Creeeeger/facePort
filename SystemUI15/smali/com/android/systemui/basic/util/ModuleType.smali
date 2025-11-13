.class public final enum Lcom/android/systemui/basic/util/ModuleType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/basic/util/ModuleType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/basic/util/ModuleType;

.field public static final enum CONTROLS:Lcom/android/systemui/basic/util/ModuleType;

.field public static final enum GLOBALACTIONS:Lcom/android/systemui/basic/util/ModuleType;

.field public static final enum KEYGUARD:Lcom/android/systemui/basic/util/ModuleType;

.field public static final enum NAVBAR:Lcom/android/systemui/basic/util/ModuleType;

.field public static final enum POPUPUI:Lcom/android/systemui/basic/util/ModuleType;

.field public static final enum VOLUME:Lcom/android/systemui/basic/util/ModuleType;


# instance fields
.field private final mModuleTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/android/systemui/basic/util/ModuleType;

    const-string v1, "Navbar."

    const-string v2, "NAVBAR"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/basic/util/ModuleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/basic/util/ModuleType;->NAVBAR:Lcom/android/systemui/basic/util/ModuleType;

    new-instance v1, Lcom/android/systemui/basic/util/ModuleType;

    const-string v2, "SecVolume."

    const-string v3, "VOLUME"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/android/systemui/basic/util/ModuleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/android/systemui/basic/util/ModuleType;->VOLUME:Lcom/android/systemui/basic/util/ModuleType;

    new-instance v2, Lcom/android/systemui/basic/util/ModuleType;

    const-string v3, "[SamsungGlobalActions]"

    const-string v4, "GLOBALACTIONS"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/android/systemui/basic/util/ModuleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/android/systemui/basic/util/ModuleType;->GLOBALACTIONS:Lcom/android/systemui/basic/util/ModuleType;

    new-instance v3, Lcom/android/systemui/basic/util/ModuleType;

    const-string v4, "PopupUI."

    const-string v5, "POPUPUI"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lcom/android/systemui/basic/util/ModuleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/android/systemui/basic/util/ModuleType;->POPUPUI:Lcom/android/systemui/basic/util/ModuleType;

    new-instance v4, Lcom/android/systemui/basic/util/ModuleType;

    const-string v5, "Controls."

    const-string v6, "CONTROLS"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lcom/android/systemui/basic/util/ModuleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/android/systemui/basic/util/ModuleType;->CONTROLS:Lcom/android/systemui/basic/util/ModuleType;

    new-instance v5, Lcom/android/systemui/basic/util/ModuleType;

    const-string v6, "Indicator."

    const-string v7, "INDICATOR"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lcom/android/systemui/basic/util/ModuleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v6, Lcom/android/systemui/basic/util/ModuleType;

    const-string v7, "Keyguard."

    const-string v8, "KEYGUARD"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Lcom/android/systemui/basic/util/ModuleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/android/systemui/basic/util/ModuleType;->KEYGUARD:Lcom/android/systemui/basic/util/ModuleType;

    filled-new-array/range {v0 .. v6}, [Lcom/android/systemui/basic/util/ModuleType;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/basic/util/ModuleType;->$VALUES:[Lcom/android/systemui/basic/util/ModuleType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/systemui/basic/util/ModuleType;->mModuleTag:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/basic/util/ModuleType;
    .locals 1

    const-class v0, Lcom/android/systemui/basic/util/ModuleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/basic/util/ModuleType;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/basic/util/ModuleType;
    .locals 1

    sget-object v0, Lcom/android/systemui/basic/util/ModuleType;->$VALUES:[Lcom/android/systemui/basic/util/ModuleType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/basic/util/ModuleType;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/basic/util/ModuleType;->mModuleTag:Ljava/lang/String;

    return-object p0
.end method
