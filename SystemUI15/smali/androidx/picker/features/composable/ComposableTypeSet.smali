.class public final enum Landroidx/picker/features/composable/ComposableTypeSet;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/picker/features/composable/ComposableType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/picker/features/composable/ComposableTypeSet;",
        ">;",
        "Landroidx/picker/features/composable/ComposableType;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Landroidx/picker/features/composable/ComposableTypeSet;

.field public static final enum AllSwitch:Landroidx/picker/features/composable/ComposableTypeSet;

.field public static final enum CheckBox:Landroidx/picker/features/composable/ComposableTypeSet;

.field public static final enum CheckBoxAction:Landroidx/picker/features/composable/ComposableTypeSet;

.field public static final enum CheckBoxExpander:Landroidx/picker/features/composable/ComposableTypeSet;

.field public static final enum Radio:Landroidx/picker/features/composable/ComposableTypeSet;

.field public static final enum RadioAction:Landroidx/picker/features/composable/ComposableTypeSet;

.field public static final enum Switch:Landroidx/picker/features/composable/ComposableTypeSet;

.field public static final enum TextOnly:Landroidx/picker/features/composable/ComposableTypeSet;


# instance fields
.field private final iconFrame:Landroidx/picker/features/composable/icon/IconFrame;

.field private final leftFrame:Landroidx/picker/features/composable/left/LeftFrame;

.field private final titleFrame:Landroidx/picker/features/composable/title/TitleFrame;

.field private final widgetFrame:Landroidx/picker/features/composable/widget/WidgetFrame;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v7, Landroidx/picker/features/composable/ComposableTypeSet;

    sget-object v8, Landroidx/picker/features/composable/icon/IconFrame;->Icon:Landroidx/picker/features/composable/icon/IconFrame;

    sget-object v9, Landroidx/picker/features/composable/title/TitleFrame;->Title:Landroidx/picker/features/composable/title/TitleFrame;

    const/4 v6, 0x0

    const-string v1, "TextOnly"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v7

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Landroidx/picker/features/composable/ComposableTypeSet;-><init>(Ljava/lang/String;ILandroidx/picker/features/composable/left/LeftFrame;Landroidx/picker/features/composable/icon/IconFrame;Landroidx/picker/features/composable/title/TitleFrame;Landroidx/picker/features/composable/widget/WidgetFrame;)V

    sput-object v7, Landroidx/picker/features/composable/ComposableTypeSet;->TextOnly:Landroidx/picker/features/composable/ComposableTypeSet;

    new-instance v10, Landroidx/picker/features/composable/ComposableTypeSet;

    sget-object v6, Landroidx/picker/features/composable/widget/WidgetFrame;->Switch:Landroidx/picker/features/composable/widget/WidgetFrame;

    const-string v1, "Switch"

    const/4 v2, 0x1

    move-object v0, v10

    invoke-direct/range {v0 .. v6}, Landroidx/picker/features/composable/ComposableTypeSet;-><init>(Ljava/lang/String;ILandroidx/picker/features/composable/left/LeftFrame;Landroidx/picker/features/composable/icon/IconFrame;Landroidx/picker/features/composable/title/TitleFrame;Landroidx/picker/features/composable/widget/WidgetFrame;)V

    sput-object v10, Landroidx/picker/features/composable/ComposableTypeSet;->Switch:Landroidx/picker/features/composable/ComposableTypeSet;

    new-instance v11, Landroidx/picker/features/composable/ComposableTypeSet;

    const/4 v4, 0x0

    sget-object v6, Landroidx/picker/features/composable/widget/WidgetFrame;->AllAppsSwitch:Landroidx/picker/features/composable/widget/WidgetFrame;

    const-string v1, "AllSwitch"

    const/4 v2, 0x2

    move-object v0, v11

    invoke-direct/range {v0 .. v6}, Landroidx/picker/features/composable/ComposableTypeSet;-><init>(Ljava/lang/String;ILandroidx/picker/features/composable/left/LeftFrame;Landroidx/picker/features/composable/icon/IconFrame;Landroidx/picker/features/composable/title/TitleFrame;Landroidx/picker/features/composable/widget/WidgetFrame;)V

    sput-object v11, Landroidx/picker/features/composable/ComposableTypeSet;->AllSwitch:Landroidx/picker/features/composable/ComposableTypeSet;

    new-instance v12, Landroidx/picker/features/composable/ComposableTypeSet;

    sget-object v13, Landroidx/picker/features/composable/left/LeftFrame;->CheckBox:Landroidx/picker/features/composable/left/LeftFrame;

    const/4 v6, 0x0

    const-string v1, "CheckBox"

    const/4 v2, 0x3

    move-object v0, v12

    move-object v3, v13

    move-object v4, v8

    invoke-direct/range {v0 .. v6}, Landroidx/picker/features/composable/ComposableTypeSet;-><init>(Ljava/lang/String;ILandroidx/picker/features/composable/left/LeftFrame;Landroidx/picker/features/composable/icon/IconFrame;Landroidx/picker/features/composable/title/TitleFrame;Landroidx/picker/features/composable/widget/WidgetFrame;)V

    sput-object v12, Landroidx/picker/features/composable/ComposableTypeSet;->CheckBox:Landroidx/picker/features/composable/ComposableTypeSet;

    new-instance v14, Landroidx/picker/features/composable/ComposableTypeSet;

    sget-object v15, Landroidx/picker/features/composable/widget/WidgetFrame;->Action:Landroidx/picker/features/composable/widget/WidgetFrame;

    const-string v1, "CheckBoxAction"

    const/4 v2, 0x4

    move-object v0, v14

    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Landroidx/picker/features/composable/ComposableTypeSet;-><init>(Ljava/lang/String;ILandroidx/picker/features/composable/left/LeftFrame;Landroidx/picker/features/composable/icon/IconFrame;Landroidx/picker/features/composable/title/TitleFrame;Landroidx/picker/features/composable/widget/WidgetFrame;)V

    sput-object v14, Landroidx/picker/features/composable/ComposableTypeSet;->CheckBoxAction:Landroidx/picker/features/composable/ComposableTypeSet;

    new-instance v16, Landroidx/picker/features/composable/ComposableTypeSet;

    const/4 v2, 0x5

    sget-object v6, Landroidx/picker/features/composable/widget/WidgetFrame;->Expander:Landroidx/picker/features/composable/widget/WidgetFrame;

    const-string v1, "CheckBoxExpander"

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v6}, Landroidx/picker/features/composable/ComposableTypeSet;-><init>(Ljava/lang/String;ILandroidx/picker/features/composable/left/LeftFrame;Landroidx/picker/features/composable/icon/IconFrame;Landroidx/picker/features/composable/title/TitleFrame;Landroidx/picker/features/composable/widget/WidgetFrame;)V

    sput-object v16, Landroidx/picker/features/composable/ComposableTypeSet;->CheckBoxExpander:Landroidx/picker/features/composable/ComposableTypeSet;

    new-instance v13, Landroidx/picker/features/composable/ComposableTypeSet;

    sget-object v17, Landroidx/picker/features/composable/left/LeftFrame;->Radio:Landroidx/picker/features/composable/left/LeftFrame;

    const/4 v6, 0x0

    const-string v1, "Radio"

    const/4 v2, 0x6

    move-object v0, v13

    move-object/from16 v3, v17

    invoke-direct/range {v0 .. v6}, Landroidx/picker/features/composable/ComposableTypeSet;-><init>(Ljava/lang/String;ILandroidx/picker/features/composable/left/LeftFrame;Landroidx/picker/features/composable/icon/IconFrame;Landroidx/picker/features/composable/title/TitleFrame;Landroidx/picker/features/composable/widget/WidgetFrame;)V

    sput-object v13, Landroidx/picker/features/composable/ComposableTypeSet;->Radio:Landroidx/picker/features/composable/ComposableTypeSet;

    new-instance v18, Landroidx/picker/features/composable/ComposableTypeSet;

    const-string v1, "RadioAction"

    const/4 v2, 0x7

    move-object/from16 v0, v18

    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Landroidx/picker/features/composable/ComposableTypeSet;-><init>(Ljava/lang/String;ILandroidx/picker/features/composable/left/LeftFrame;Landroidx/picker/features/composable/icon/IconFrame;Landroidx/picker/features/composable/title/TitleFrame;Landroidx/picker/features/composable/widget/WidgetFrame;)V

    sput-object v18, Landroidx/picker/features/composable/ComposableTypeSet;->RadioAction:Landroidx/picker/features/composable/ComposableTypeSet;

    move-object v0, v7

    move-object v1, v10

    move-object v2, v11

    move-object v3, v12

    move-object v4, v14

    move-object/from16 v5, v16

    move-object v6, v13

    move-object/from16 v7, v18

    filled-new-array/range {v0 .. v7}, [Landroidx/picker/features/composable/ComposableTypeSet;

    move-result-object v0

    sput-object v0, Landroidx/picker/features/composable/ComposableTypeSet;->$VALUES:[Landroidx/picker/features/composable/ComposableTypeSet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroidx/picker/features/composable/left/LeftFrame;Landroidx/picker/features/composable/icon/IconFrame;Landroidx/picker/features/composable/title/TitleFrame;Landroidx/picker/features/composable/widget/WidgetFrame;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/picker/features/composable/left/LeftFrame;",
            "Landroidx/picker/features/composable/icon/IconFrame;",
            "Landroidx/picker/features/composable/title/TitleFrame;",
            "Landroidx/picker/features/composable/widget/WidgetFrame;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Landroidx/picker/features/composable/ComposableTypeSet;->leftFrame:Landroidx/picker/features/composable/left/LeftFrame;

    iput-object p4, p0, Landroidx/picker/features/composable/ComposableTypeSet;->iconFrame:Landroidx/picker/features/composable/icon/IconFrame;

    iput-object p5, p0, Landroidx/picker/features/composable/ComposableTypeSet;->titleFrame:Landroidx/picker/features/composable/title/TitleFrame;

    iput-object p6, p0, Landroidx/picker/features/composable/ComposableTypeSet;->widgetFrame:Landroidx/picker/features/composable/widget/WidgetFrame;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/picker/features/composable/ComposableTypeSet;
    .locals 1

    const-class v0, Landroidx/picker/features/composable/ComposableTypeSet;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/picker/features/composable/ComposableTypeSet;

    return-object p0
.end method

.method public static values()[Landroidx/picker/features/composable/ComposableTypeSet;
    .locals 1

    sget-object v0, Landroidx/picker/features/composable/ComposableTypeSet;->$VALUES:[Landroidx/picker/features/composable/ComposableTypeSet;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/picker/features/composable/ComposableTypeSet;

    return-object v0
.end method
