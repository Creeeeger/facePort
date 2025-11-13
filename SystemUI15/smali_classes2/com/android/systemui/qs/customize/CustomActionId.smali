.class public abstract enum Lcom/android/systemui/qs/customize/CustomActionId;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/qs/customize/CustomActionId;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/qs/customize/CustomActionId;

.field public static final enum MOVE_ITEM_DOWN:Lcom/android/systemui/qs/customize/CustomActionId;

.field public static final enum MOVE_ITEM_FROM_ACTIVE_TO_AVAILABLE:Lcom/android/systemui/qs/customize/CustomActionId;

.field public static final enum MOVE_ITEM_FROM_AVAILABLE_TO_ACTIVE:Lcom/android/systemui/qs/customize/CustomActionId;

.field public static final enum MOVE_ITEM_TO_BOTTOM:Lcom/android/systemui/qs/customize/CustomActionId;

.field public static final enum MOVE_ITEM_TO_TOP:Lcom/android/systemui/qs/customize/CustomActionId;

.field public static final enum MOVE_ITEM_UP:Lcom/android/systemui/qs/customize/CustomActionId;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/android/systemui/qs/customize/CustomActionId$NONE;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/customize/CustomActionId$NONE;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/systemui/qs/customize/CustomActionId$MOVE_ITEM_UP;

    const-string v2, "MOVE_ITEM_UP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/qs/customize/CustomActionId$MOVE_ITEM_UP;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/qs/customize/CustomActionId;->MOVE_ITEM_UP:Lcom/android/systemui/qs/customize/CustomActionId;

    new-instance v2, Lcom/android/systemui/qs/customize/CustomActionId$MOVE_ITEM_TO_TOP;

    const-string v3, "MOVE_ITEM_TO_TOP"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/qs/customize/CustomActionId$MOVE_ITEM_TO_TOP;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/qs/customize/CustomActionId;->MOVE_ITEM_TO_TOP:Lcom/android/systemui/qs/customize/CustomActionId;

    new-instance v3, Lcom/android/systemui/qs/customize/CustomActionId$MOVE_ITEM_DOWN;

    const-string v4, "MOVE_ITEM_DOWN"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/qs/customize/CustomActionId$MOVE_ITEM_DOWN;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/qs/customize/CustomActionId;->MOVE_ITEM_DOWN:Lcom/android/systemui/qs/customize/CustomActionId;

    new-instance v4, Lcom/android/systemui/qs/customize/CustomActionId$MOVE_ITEM_TO_BOTTOM;

    const-string v5, "MOVE_ITEM_TO_BOTTOM"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/qs/customize/CustomActionId$MOVE_ITEM_TO_BOTTOM;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/systemui/qs/customize/CustomActionId;->MOVE_ITEM_TO_BOTTOM:Lcom/android/systemui/qs/customize/CustomActionId;

    new-instance v5, Lcom/android/systemui/qs/customize/CustomActionId$MOVE_ITEM_FROM_AVAILABLE_TO_ACTIVE;

    const-string v6, "MOVE_ITEM_FROM_AVAILABLE_TO_ACTIVE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/qs/customize/CustomActionId$MOVE_ITEM_FROM_AVAILABLE_TO_ACTIVE;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/systemui/qs/customize/CustomActionId;->MOVE_ITEM_FROM_AVAILABLE_TO_ACTIVE:Lcom/android/systemui/qs/customize/CustomActionId;

    new-instance v6, Lcom/android/systemui/qs/customize/CustomActionId$MOVE_ITEM_FROM_ACTIVE_TO_AVAILABLE;

    const-string v7, "MOVE_ITEM_FROM_ACTIVE_TO_AVAILABLE"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/android/systemui/qs/customize/CustomActionId$MOVE_ITEM_FROM_ACTIVE_TO_AVAILABLE;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/systemui/qs/customize/CustomActionId;->MOVE_ITEM_FROM_ACTIVE_TO_AVAILABLE:Lcom/android/systemui/qs/customize/CustomActionId;

    filled-new-array/range {v0 .. v6}, [Lcom/android/systemui/qs/customize/CustomActionId;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/customize/CustomActionId;->$VALUES:[Lcom/android/systemui/qs/customize/CustomActionId;

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

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/CustomActionId;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/qs/customize/CustomActionId;
    .locals 1

    const-class v0, Lcom/android/systemui/qs/customize/CustomActionId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/CustomActionId;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/qs/customize/CustomActionId;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/customize/CustomActionId;->$VALUES:[Lcom/android/systemui/qs/customize/CustomActionId;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/qs/customize/CustomActionId;

    return-object v0
.end method


# virtual methods
.method public abstract getId()I
.end method

.method public abstract getName(Landroid/content/res/Resources;)Ljava/lang/String;
.end method
