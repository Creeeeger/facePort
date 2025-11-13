.class public final enum Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

.field public static final enum CANCEL_SPLIT_LEFT:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

.field public static final enum CANCEL_SPLIT_RIGHT:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

.field public static final enum NO_CANCEL:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

.field public static final enum STANDARD_CANCEL:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

    const-string v1, "NO_CANCEL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;->NO_CANCEL:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

    new-instance v1, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

    const-string v2, "STANDARD_CANCEL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;->STANDARD_CANCEL:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

    new-instance v2, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

    const-string v3, "CANCEL_SPLIT_LEFT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;->CANCEL_SPLIT_LEFT:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

    new-instance v3, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

    const-string v4, "CANCEL_SPLIT_RIGHT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;->CANCEL_SPLIT_RIGHT:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

    move-result-object v0

    sput-object v0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;->$VALUES:[Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;
    .locals 1

    const-class v0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

    return-object p0
.end method

.method public static values()[Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;
    .locals 1

    sget-object v0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;->$VALUES:[Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

    return-object v0
.end method
