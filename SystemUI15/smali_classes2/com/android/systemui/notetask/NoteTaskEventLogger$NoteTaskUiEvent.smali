.class public final enum Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;

.field public static final enum NOTE_CLOSED_VIA_STYLUS_TAIL_BUTTON:Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;

.field public static final enum NOTE_CLOSED_VIA_STYLUS_TAIL_BUTTON_LOCKED:Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;

.field public static final enum NOTE_OPENED_VIA_KEYGUARD_QUICK_AFFORDANCE:Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;

.field public static final enum NOTE_OPENED_VIA_SHORTCUT:Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;

.field public static final enum NOTE_OPENED_VIA_STYLUS_TAIL_BUTTON:Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;

.field public static final enum NOTE_OPENED_VIA_STYLUS_TAIL_BUTTON_LOCKED:Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;


# instance fields
.field private final _id:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;

    const/4 v1, 0x0

    const/16 v2, 0x50e

    const-string v3, "NOTE_OPENED_VIA_KEYGUARD_QUICK_AFFORDANCE"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;->NOTE_OPENED_VIA_KEYGUARD_QUICK_AFFORDANCE:Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;

    new-instance v1, Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;

    const/4 v2, 0x1

    const/16 v3, 0x50f

    const-string v4, "NOTE_OPENED_VIA_STYLUS_TAIL_BUTTON"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;->NOTE_OPENED_VIA_STYLUS_TAIL_BUTTON:Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;

    new-instance v2, Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;

    const/4 v3, 0x2

    const/16 v4, 0x510

    const-string v5, "NOTE_OPENED_VIA_STYLUS_TAIL_BUTTON_LOCKED"

    invoke-direct {v2, v5, v3, v4}, Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;->NOTE_OPENED_VIA_STYLUS_TAIL_BUTTON_LOCKED:Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;

    new-instance v3, Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;

    const/4 v4, 0x3

    const/16 v5, 0x511

    const-string v6, "NOTE_OPENED_VIA_SHORTCUT"

    invoke-direct {v3, v6, v4, v5}, Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;->NOTE_OPENED_VIA_SHORTCUT:Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;

    new-instance v4, Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;

    const/4 v5, 0x4

    const/16 v6, 0x51f

    const-string v7, "NOTE_CLOSED_VIA_STYLUS_TAIL_BUTTON"

    invoke-direct {v4, v7, v5, v6}, Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;->NOTE_CLOSED_VIA_STYLUS_TAIL_BUTTON:Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;

    new-instance v5, Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;

    const/4 v6, 0x5

    const/16 v7, 0x520

    const-string v8, "NOTE_CLOSED_VIA_STYLUS_TAIL_BUTTON_LOCKED"

    invoke-direct {v5, v8, v6, v7}, Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;->NOTE_CLOSED_VIA_STYLUS_TAIL_BUTTON_LOCKED:Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;

    filled-new-array/range {v0 .. v5}, [Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;->$VALUES:[Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;

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

    iput p3, p0, Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;->_id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;->$VALUES:[Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;->_id:I

    return p0
.end method
