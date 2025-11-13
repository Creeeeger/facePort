.class public final enum Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;

.field public static final enum APP_HANDLE_MENU_BUTTON_EXIT:Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;

.field public static final enum DRAG_TO_EXIT:Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;

.field public static final enum KEYBOARD_SHORTCUT_EXIT:Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;

.field public static final enum RETURN_HOME_OR_OVERVIEW:Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;

.field public static final enum SCREEN_OFF:Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;

.field public static final enum TASK_FINISHED:Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;

.field public static final enum UNKNOWN_EXIT:Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;


# instance fields
.field private final reason:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;

    const-string v1, "UNKNOWN_EXIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;->UNKNOWN_EXIT:Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;

    new-instance v1, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;

    const-string v2, "DRAG_TO_EXIT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;->DRAG_TO_EXIT:Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;

    new-instance v2, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;

    const-string v3, "APP_HANDLE_MENU_BUTTON_EXIT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;->APP_HANDLE_MENU_BUTTON_EXIT:Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;

    new-instance v3, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;

    const-string v4, "KEYBOARD_SHORTCUT_EXIT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;->KEYBOARD_SHORTCUT_EXIT:Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;

    new-instance v4, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;

    const-string v5, "RETURN_HOME_OR_OVERVIEW"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;->RETURN_HOME_OR_OVERVIEW:Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;

    new-instance v5, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;

    const-string v6, "TASK_FINISHED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;->TASK_FINISHED:Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;

    new-instance v6, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;

    const-string v7, "SCREEN_OFF"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;->SCREEN_OFF:Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;

    filled-new-array/range {v0 .. v6}, [Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;

    move-result-object v0

    sput-object v0, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;->$VALUES:[Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;

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

    iput p3, p0, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;->reason:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;
    .locals 1

    const-class v0, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;

    return-object p0
.end method

.method public static values()[Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;
    .locals 1

    sget-object v0, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;->$VALUES:[Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;

    return-object v0
.end method


# virtual methods
.method public final getReason()I
    .locals 0

    iget p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;->reason:I

    return p0
.end method
