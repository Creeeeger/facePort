.class public final enum Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo;

.field public static final Companion:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo$Companion;


# instance fields
.field private final isSupport:Z

.field private final packageName:Ljava/lang/String;

.field private final projectName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    new-instance v8, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v1, "Buds3Pro"

    const/4 v2, 0x0

    const-string v3, "paran"

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo;

    const/4 v13, 0x1

    const/4 v14, 0x0

    const-string v10, "Buds3"

    const/4 v11, 0x1

    const-string v12, "jelly"

    const/4 v15, 0x4

    const/16 v16, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v1, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-string v18, "BudsFE"

    const/16 v19, 0x2

    const-string v20, "pearl"

    const/16 v23, 0x4

    const/16 v24, 0x0

    move-object/from16 v17, v1

    invoke-direct/range {v17 .. v24}, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v2, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo;

    const/4 v13, 0x0

    const-string v10, "Buds2Pro"

    const/4 v11, 0x3

    const-string/jumbo v12, "zenith"

    move-object v9, v2

    invoke-direct/range {v9 .. v16}, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v3, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo;

    const-string v18, "Buds2"

    const/16 v19, 0x4

    const-string v20, "berry"

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v24}, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    filled-new-array {v8, v0, v1, v2, v3}, [Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo;->$VALUES:[Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo;->Companion:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo;->projectName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo;->isSupport:Z

    iput-object p5, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_0

    const-string p5, "com.samsung.accessory."

    const-string p6, "mgr"

    invoke-static {p5, p3, p6}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo;
    .locals 1

    const-class v0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo;
    .locals 1

    sget-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo;->$VALUES:[Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo;

    return-object v0
.end method
