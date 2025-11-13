.class public final enum Lcom/android/systemui/qs/QSEditEvent;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/qs/QSEditEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/qs/QSEditEvent;

.field public static final enum QS_EDIT_ADD:Lcom/android/systemui/qs/QSEditEvent;

.field public static final enum QS_EDIT_MOVE:Lcom/android/systemui/qs/QSEditEvent;

.field public static final enum QS_EDIT_REMOVE:Lcom/android/systemui/qs/QSEditEvent;

.field public static final enum QS_EDIT_RESET:Lcom/android/systemui/qs/QSEditEvent;


# instance fields
.field private final _id:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/android/systemui/qs/QSEditEvent;

    const/16 v1, 0xd2

    const-string v2, "QS_EDIT_REMOVE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/qs/QSEditEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/qs/QSEditEvent;->QS_EDIT_REMOVE:Lcom/android/systemui/qs/QSEditEvent;

    new-instance v1, Lcom/android/systemui/qs/QSEditEvent;

    const/16 v2, 0xd3

    const-string v3, "QS_EDIT_ADD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/android/systemui/qs/QSEditEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/qs/QSEditEvent;->QS_EDIT_ADD:Lcom/android/systemui/qs/QSEditEvent;

    new-instance v2, Lcom/android/systemui/qs/QSEditEvent;

    const/16 v3, 0xd4

    const-string v4, "QS_EDIT_MOVE"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/android/systemui/qs/QSEditEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/systemui/qs/QSEditEvent;->QS_EDIT_MOVE:Lcom/android/systemui/qs/QSEditEvent;

    new-instance v3, Lcom/android/systemui/qs/QSEditEvent;

    const/16 v4, 0xd5

    const-string v5, "QS_EDIT_OPEN"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lcom/android/systemui/qs/QSEditEvent;-><init>(Ljava/lang/String;II)V

    new-instance v4, Lcom/android/systemui/qs/QSEditEvent;

    const/16 v5, 0xd6

    const-string v6, "QS_EDIT_CLOSED"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lcom/android/systemui/qs/QSEditEvent;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lcom/android/systemui/qs/QSEditEvent;

    const/16 v6, 0xd7

    const-string v7, "QS_EDIT_RESET"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lcom/android/systemui/qs/QSEditEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/systemui/qs/QSEditEvent;->QS_EDIT_RESET:Lcom/android/systemui/qs/QSEditEvent;

    filled-new-array/range {v0 .. v5}, [Lcom/android/systemui/qs/QSEditEvent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/QSEditEvent;->$VALUES:[Lcom/android/systemui/qs/QSEditEvent;

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

    iput p3, p0, Lcom/android/systemui/qs/QSEditEvent;->_id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/qs/QSEditEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/qs/QSEditEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSEditEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/qs/QSEditEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/QSEditEvent;->$VALUES:[Lcom/android/systemui/qs/QSEditEvent;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/qs/QSEditEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/qs/QSEditEvent;->_id:I

    return p0
.end method
