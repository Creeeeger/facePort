.class public final enum Lcom/android/systemui/notetask/NoteTaskEntryPoint;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/notetask/NoteTaskEntryPoint;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/notetask/NoteTaskEntryPoint;

.field public static final enum APP_CLIPS:Lcom/android/systemui/notetask/NoteTaskEntryPoint;

.field public static final enum KEYBOARD_SHORTCUT:Lcom/android/systemui/notetask/NoteTaskEntryPoint;

.field public static final enum QUICK_AFFORDANCE:Lcom/android/systemui/notetask/NoteTaskEntryPoint;

.field public static final enum TAIL_BUTTON:Lcom/android/systemui/notetask/NoteTaskEntryPoint;

.field public static final enum WIDGET_PICKER_SHORTCUT:Lcom/android/systemui/notetask/NoteTaskEntryPoint;

.field public static final enum WIDGET_PICKER_SHORTCUT_IN_MULTI_WINDOW_MODE:Lcom/android/systemui/notetask/NoteTaskEntryPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/systemui/notetask/NoteTaskEntryPoint;

    const-string v1, "WIDGET_PICKER_SHORTCUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/notetask/NoteTaskEntryPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/notetask/NoteTaskEntryPoint;->WIDGET_PICKER_SHORTCUT:Lcom/android/systemui/notetask/NoteTaskEntryPoint;

    new-instance v1, Lcom/android/systemui/notetask/NoteTaskEntryPoint;

    const-string v2, "WIDGET_PICKER_SHORTCUT_IN_MULTI_WINDOW_MODE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/notetask/NoteTaskEntryPoint;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/notetask/NoteTaskEntryPoint;->WIDGET_PICKER_SHORTCUT_IN_MULTI_WINDOW_MODE:Lcom/android/systemui/notetask/NoteTaskEntryPoint;

    new-instance v2, Lcom/android/systemui/notetask/NoteTaskEntryPoint;

    const-string v3, "QUICK_AFFORDANCE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/notetask/NoteTaskEntryPoint;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/notetask/NoteTaskEntryPoint;->QUICK_AFFORDANCE:Lcom/android/systemui/notetask/NoteTaskEntryPoint;

    new-instance v3, Lcom/android/systemui/notetask/NoteTaskEntryPoint;

    const-string v4, "TAIL_BUTTON"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/notetask/NoteTaskEntryPoint;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/notetask/NoteTaskEntryPoint;->TAIL_BUTTON:Lcom/android/systemui/notetask/NoteTaskEntryPoint;

    new-instance v4, Lcom/android/systemui/notetask/NoteTaskEntryPoint;

    const-string v5, "APP_CLIPS"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/notetask/NoteTaskEntryPoint;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/systemui/notetask/NoteTaskEntryPoint;->APP_CLIPS:Lcom/android/systemui/notetask/NoteTaskEntryPoint;

    new-instance v5, Lcom/android/systemui/notetask/NoteTaskEntryPoint;

    const-string v6, "KEYBOARD_SHORTCUT"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/notetask/NoteTaskEntryPoint;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/systemui/notetask/NoteTaskEntryPoint;->KEYBOARD_SHORTCUT:Lcom/android/systemui/notetask/NoteTaskEntryPoint;

    filled-new-array/range {v0 .. v5}, [Lcom/android/systemui/notetask/NoteTaskEntryPoint;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/notetask/NoteTaskEntryPoint;->$VALUES:[Lcom/android/systemui/notetask/NoteTaskEntryPoint;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/notetask/NoteTaskEntryPoint;
    .locals 1

    const-class v0, Lcom/android/systemui/notetask/NoteTaskEntryPoint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/notetask/NoteTaskEntryPoint;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/notetask/NoteTaskEntryPoint;
    .locals 1

    sget-object v0, Lcom/android/systemui/notetask/NoteTaskEntryPoint;->$VALUES:[Lcom/android/systemui/notetask/NoteTaskEntryPoint;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/notetask/NoteTaskEntryPoint;

    return-object v0
.end method
