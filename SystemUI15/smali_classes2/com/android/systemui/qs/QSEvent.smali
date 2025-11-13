.class public final enum Lcom/android/systemui/qs/QSEvent;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/qs/QSEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/qs/QSEvent;

.field public static final enum QQS_PANEL_COLLAPSED:Lcom/android/systemui/qs/QSEvent;

.field public static final enum QQS_PANEL_EXPANDED:Lcom/android/systemui/qs/QSEvent;

.field public static final enum QQS_TILE_VISIBLE:Lcom/android/systemui/qs/QSEvent;

.field public static final enum QS_ACTION_CLICK:Lcom/android/systemui/qs/QSEvent;

.field public static final enum QS_ACTION_LONG_PRESS:Lcom/android/systemui/qs/QSEvent;

.field public static final enum QS_ACTION_SECONDARY_CLICK:Lcom/android/systemui/qs/QSEvent;

.field public static final enum QS_PANEL_COLLAPSED:Lcom/android/systemui/qs/QSEvent;

.field public static final enum QS_PANEL_EXPANDED:Lcom/android/systemui/qs/QSEvent;

.field public static final enum QS_TILE_VISIBLE:Lcom/android/systemui/qs/QSEvent;


# instance fields
.field private final _id:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/android/systemui/qs/QSEvent;

    const/4 v1, 0x0

    const/16 v2, 0x183

    const-string v3, "QS_ACTION_CLICK"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/systemui/qs/QSEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/qs/QSEvent;->QS_ACTION_CLICK:Lcom/android/systemui/qs/QSEvent;

    new-instance v1, Lcom/android/systemui/qs/QSEvent;

    const/4 v2, 0x1

    const/16 v3, 0x184

    const-string v4, "QS_ACTION_SECONDARY_CLICK"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/systemui/qs/QSEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/qs/QSEvent;->QS_ACTION_SECONDARY_CLICK:Lcom/android/systemui/qs/QSEvent;

    new-instance v2, Lcom/android/systemui/qs/QSEvent;

    const/4 v3, 0x2

    const/16 v4, 0x185

    const-string v5, "QS_ACTION_LONG_PRESS"

    invoke-direct {v2, v5, v3, v4}, Lcom/android/systemui/qs/QSEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/systemui/qs/QSEvent;->QS_ACTION_LONG_PRESS:Lcom/android/systemui/qs/QSEvent;

    new-instance v3, Lcom/android/systemui/qs/QSEvent;

    const/4 v4, 0x3

    const/16 v5, 0x186

    const-string v6, "QS_PANEL_EXPANDED"

    invoke-direct {v3, v6, v4, v5}, Lcom/android/systemui/qs/QSEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/systemui/qs/QSEvent;->QS_PANEL_EXPANDED:Lcom/android/systemui/qs/QSEvent;

    new-instance v4, Lcom/android/systemui/qs/QSEvent;

    const/4 v5, 0x4

    const/16 v6, 0x187

    const-string v7, "QS_PANEL_COLLAPSED"

    invoke-direct {v4, v7, v5, v6}, Lcom/android/systemui/qs/QSEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/systemui/qs/QSEvent;->QS_PANEL_COLLAPSED:Lcom/android/systemui/qs/QSEvent;

    new-instance v5, Lcom/android/systemui/qs/QSEvent;

    const/4 v6, 0x5

    const/16 v7, 0x188

    const-string v8, "QS_TILE_VISIBLE"

    invoke-direct {v5, v8, v6, v7}, Lcom/android/systemui/qs/QSEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/systemui/qs/QSEvent;->QS_TILE_VISIBLE:Lcom/android/systemui/qs/QSEvent;

    new-instance v6, Lcom/android/systemui/qs/QSEvent;

    const/4 v7, 0x6

    const/16 v8, 0x189

    const-string v9, "QQS_PANEL_EXPANDED"

    invoke-direct {v6, v9, v7, v8}, Lcom/android/systemui/qs/QSEvent;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/systemui/qs/QSEvent;->QQS_PANEL_EXPANDED:Lcom/android/systemui/qs/QSEvent;

    new-instance v7, Lcom/android/systemui/qs/QSEvent;

    const/4 v8, 0x7

    const/16 v9, 0x18a

    const-string v10, "QQS_PANEL_COLLAPSED"

    invoke-direct {v7, v10, v8, v9}, Lcom/android/systemui/qs/QSEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/systemui/qs/QSEvent;->QQS_PANEL_COLLAPSED:Lcom/android/systemui/qs/QSEvent;

    new-instance v8, Lcom/android/systemui/qs/QSEvent;

    const/16 v9, 0x8

    const/16 v10, 0x18b

    const-string v11, "QQS_TILE_VISIBLE"

    invoke-direct {v8, v11, v9, v10}, Lcom/android/systemui/qs/QSEvent;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/systemui/qs/QSEvent;->QQS_TILE_VISIBLE:Lcom/android/systemui/qs/QSEvent;

    filled-new-array/range {v0 .. v8}, [Lcom/android/systemui/qs/QSEvent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/QSEvent;->$VALUES:[Lcom/android/systemui/qs/QSEvent;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/systemui/qs/QSEvent;->_id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/qs/QSEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/qs/QSEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/qs/QSEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/QSEvent;->$VALUES:[Lcom/android/systemui/qs/QSEvent;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/qs/QSEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/qs/QSEvent;->_id:I

    return p0
.end method
