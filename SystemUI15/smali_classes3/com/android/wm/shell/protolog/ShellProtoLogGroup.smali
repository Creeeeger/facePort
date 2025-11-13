.class public final enum Lcom/android/wm/shell/protolog/ShellProtoLogGroup;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/protolog/common/IProtoLogGroup;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/wm/shell/protolog/ShellProtoLogGroup;",
        ">;",
        "Lcom/android/internal/protolog/common/IProtoLogGroup;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

.field public static final enum TEST_GROUP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

.field public static final enum WM_SHELL:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

.field public static final enum WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

.field public static final enum WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

.field public static final enum WM_SHELL_COMPAT_UI:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

.field public static final enum WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

.field public static final enum WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

.field public static final enum WM_SHELL_FLOATING_APPS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

.field public static final enum WM_SHELL_FOLDABLE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

.field public static final enum WM_SHELL_INIT:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

.field public static final enum WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

.field public static final enum WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

.field public static final enum WM_SHELL_RECENT_TASKS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

.field public static final enum WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

.field public static final enum WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

.field public static final enum WM_SHELL_SYSUI_EVENTS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

.field public static final enum WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

.field public static final enum WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;


# instance fields
.field private final mEnabled:Z

.field private volatile mLogToLogcat:Z

.field private volatile mLogToProto:Z

.field private final mTag:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/android/wm/shell/protolog/ShellProtoLogGroup;
    .locals 18

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_INIT:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    sget-object v8, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENT_TASKS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    sget-object v9, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    sget-object v10, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    sget-object v11, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SYSUI_EVENTS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    sget-object v12, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    sget-object v13, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_FLOATING_APPS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    sget-object v14, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_FOLDABLE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    sget-object v15, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    sget-object v16, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_COMPAT_UI:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    sget-object v17, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->TEST_GROUP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array/range {v0 .. v17}, [Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 15

    new-instance v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v5, 0x1

    const-string v6, "WindowManagerShell"

    const-string v1, "WM_SHELL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-instance v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v13, 0x1

    const-string v14, "WindowManagerShell"

    const-string v9, "WM_SHELL_INIT"

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_INIT:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-instance v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v6, 0x0

    const-string v7, "WindowManagerShell"

    const-string v2, "WM_SHELL_TASK_ORG"

    const/4 v3, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-instance v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v14, "WindowManagerShell"

    const-string v9, "WM_SHELL_TRANSITIONS"

    const/4 v10, 0x3

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-instance v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v6, 0x1

    const-string v7, "ShellRecents"

    const-string v2, "WM_SHELL_RECENTS_TRANSITION"

    const/4 v3, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-instance v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v14, "ShellDragAndDrop"

    const-string v9, "WM_SHELL_DRAG_AND_DROP"

    const/4 v10, 0x5

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-instance v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v6, 0x0

    const-string v7, "ShellStartingWindow"

    const-string v2, "WM_SHELL_STARTING_WINDOW"

    const/4 v3, 0x6

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-instance v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v14, "ShellBackPreview"

    const-string v9, "WM_SHELL_BACK_PREVIEW"

    const/4 v10, 0x7

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-instance v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v7, "WindowManagerShell"

    const-string v2, "WM_SHELL_RECENT_TASKS"

    const/16 v3, 0x8

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENT_TASKS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-instance v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v14, "WindowManagerShell"

    const-string v9, "WM_SHELL_PICTURE_IN_PICTURE"

    const/16 v10, 0x9

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-instance v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v6, 0x1

    const-string v7, "ShellSplitScreen"

    const-string v2, "WM_SHELL_SPLIT_SCREEN"

    const/16 v3, 0xa

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-instance v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v13, 0x0

    const-string v14, "WindowManagerShell"

    const-string v9, "WM_SHELL_SYSUI_EVENTS"

    const/16 v10, 0xb

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SYSUI_EVENTS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-instance v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v7, "ShellDesktopMode"

    const-string v2, "WM_SHELL_DESKTOP_MODE"

    const/16 v3, 0xc

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-instance v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v14, "WindowManagerShell"

    const-string v9, "WM_SHELL_FLOATING_APPS"

    const/16 v10, 0xd

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_FLOATING_APPS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-instance v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v6, 0x0

    const-string v7, "WindowManagerShell"

    const-string v2, "WM_SHELL_FOLDABLE"

    const/16 v3, 0xe

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_FOLDABLE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-instance v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v14, "Bubbles"

    const-string v9, "WM_SHELL_BUBBLES"

    const/16 v10, 0xf

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-instance v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v7, "CompatUi"

    const-string v2, "WM_SHELL_COMPAT_UI"

    const/16 v3, 0x10

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_COMPAT_UI:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-instance v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v14, "WindowManagerShellProtoLogTest"

    const-string v9, "TEST_GROUP"

    const/16 v10, 0x11

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->TEST_GROUP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {}, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->$values()[Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    move-result-object v0

    sput-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->$VALUES:[Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->mEnabled:Z

    iput-boolean p4, p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->mLogToProto:Z

    iput-boolean p5, p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->mLogToLogcat:Z

    iput-object p6, p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->mTag:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/wm/shell/protolog/ShellProtoLogGroup;
    .locals 1

    const-class v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    return-object p0
.end method

.method public static values()[Lcom/android/wm/shell/protolog/ShellProtoLogGroup;
    .locals 1

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->$VALUES:[Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-virtual {v0}, [Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    sget v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup$Consts;->START_ID:I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->mEnabled:Z

    return p0
.end method

.method public isLogToAny()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->mLogToLogcat:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->mLogToProto:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isLogToLogcat()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->mLogToLogcat:Z

    return p0
.end method

.method public isLogToProto()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->mLogToProto:Z

    return p0
.end method

.method public setLogToLogcat(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->mLogToLogcat:Z

    return-void
.end method

.method public setLogToProto(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->mLogToProto:Z

    return-void
.end method
