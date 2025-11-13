.class public final enum Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$SnapToHalfSelection;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$SnapToHalfSelection;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$SnapToHalfSelection;

.field public static final enum LEFT:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$SnapToHalfSelection;

.field public static final enum NONE:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$SnapToHalfSelection;

.field public static final enum RIGHT:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$SnapToHalfSelection;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$SnapToHalfSelection;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$SnapToHalfSelection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$SnapToHalfSelection;->NONE:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$SnapToHalfSelection;

    new-instance v1, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$SnapToHalfSelection;

    const-string v2, "LEFT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$SnapToHalfSelection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$SnapToHalfSelection;->LEFT:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$SnapToHalfSelection;

    new-instance v2, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$SnapToHalfSelection;

    const-string v3, "RIGHT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$SnapToHalfSelection;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$SnapToHalfSelection;->RIGHT:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$SnapToHalfSelection;

    filled-new-array {v0, v1, v2}, [Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$SnapToHalfSelection;

    move-result-object v0

    sput-object v0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$SnapToHalfSelection;->$VALUES:[Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$SnapToHalfSelection;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$SnapToHalfSelection;
    .locals 1

    const-class v0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$SnapToHalfSelection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$SnapToHalfSelection;

    return-object p0
.end method

.method public static values()[Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$SnapToHalfSelection;
    .locals 1

    sget-object v0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$SnapToHalfSelection;->$VALUES:[Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$SnapToHalfSelection;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$SnapToHalfSelection;

    return-object v0
.end method
