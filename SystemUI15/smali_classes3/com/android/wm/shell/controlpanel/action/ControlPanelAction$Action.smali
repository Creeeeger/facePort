.class public final enum Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

.field public static final enum BrightnessControl:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

.field public static final enum DragCircle:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

.field public static final enum EditPanel:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

.field public static final enum FlexPanelSettings:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

.field public static final enum None:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

.field public static final enum QuickPanel:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

.field public static final enum QuickSettings:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

.field public static final enum ScreenCapture:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

.field public static final enum SplitScreen:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

.field public static final enum TouchPad:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

.field public static final enum VolumeControl:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->None:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    new-instance v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    const-string v2, "QuickPanel"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->QuickPanel:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    new-instance v2, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    const-string v3, "ScreenCapture"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->ScreenCapture:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    new-instance v3, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    const-string v4, "BrightnessControl"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->BrightnessControl:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    new-instance v4, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    const-string v5, "VolumeControl"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->VolumeControl:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    new-instance v5, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    const-string v6, "SplitScreen"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->SplitScreen:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    new-instance v6, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    const-string v7, "FlexPanelSettings"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->FlexPanelSettings:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    new-instance v7, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    const-string v8, "EditPanel"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->EditPanel:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    new-instance v8, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    const-string v9, "DragCircle"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->DragCircle:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    new-instance v9, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    const-string v10, "TouchPad"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11, v11}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->TouchPad:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    new-instance v10, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    const-string v11, "QuickSettings"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12, v12}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->QuickSettings:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    filled-new-array/range {v0 .. v10}, [Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    move-result-object v0

    sput-object v0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->$VALUES:[Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

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

    iput p3, p0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;
    .locals 1

    const-class v0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    return-object p0
.end method

.method public static values()[Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;
    .locals 1

    sget-object v0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->$VALUES:[Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {v0}, [Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    iget p0, p0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->value:I

    return p0
.end method
