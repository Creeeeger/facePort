.class public final enum Landroidx/picker/features/composable/ComposableTypeSet;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

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

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0080\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007R\u001c\u0010\t\u001a\u0004\u0018\u00010\u00088\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Landroidx/picker/features/composable/ComposableTypeSet;",
        "",
        "Landroidx/picker/features/composable/ComposableType;",
        "Landroidx/picker/features/composable/left/LeftFrame;",
        "leftFrame",
        "Landroidx/picker/features/composable/left/LeftFrame;",
        "getLeftFrame",
        "()Landroidx/picker/features/composable/left/LeftFrame;",
        "Landroidx/picker/features/composable/icon/IconFrame;",
        "iconFrame",
        "Landroidx/picker/features/composable/icon/IconFrame;",
        "getIconFrame",
        "()Landroidx/picker/features/composable/icon/IconFrame;",
        "Landroidx/picker/features/composable/title/TitleFrame;",
        "titleFrame",
        "Landroidx/picker/features/composable/title/TitleFrame;",
        "getTitleFrame",
        "()Landroidx/picker/features/composable/title/TitleFrame;",
        "Landroidx/picker/features/composable/widget/WidgetFrame;",
        "widgetFrame",
        "Landroidx/picker/features/composable/widget/WidgetFrame;",
        "getWidgetFrame",
        "()Landroidx/picker/features/composable/widget/WidgetFrame;",
        "picker-app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
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
    .locals 17

    new-instance v6, Landroidx/picker/features/composable/ComposableTypeSet;

    sget-object v7, Landroidx/picker/features/composable/icon/IconFrame;->Icon:Landroidx/picker/features/composable/icon/IconFrame;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v1, "TextOnly"

    const/4 v5, 0x0

    move-object v0, v6

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Landroidx/picker/features/composable/ComposableTypeSet;-><init>(Ljava/lang/String;ILandroidx/picker/features/composable/left/LeftFrame;Landroidx/picker/features/composable/icon/IconFrame;Landroidx/picker/features/composable/widget/WidgetFrame;)V

    sput-object v6, Landroidx/picker/features/composable/ComposableTypeSet;->TextOnly:Landroidx/picker/features/composable/ComposableTypeSet;

    new-instance v8, Landroidx/picker/features/composable/ComposableTypeSet;

    sget-object v5, Landroidx/picker/features/composable/widget/WidgetFrame;->Switch:Landroidx/picker/features/composable/widget/WidgetFrame;

    const/4 v2, 0x1

    const-string v1, "Switch"

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Landroidx/picker/features/composable/ComposableTypeSet;-><init>(Ljava/lang/String;ILandroidx/picker/features/composable/left/LeftFrame;Landroidx/picker/features/composable/icon/IconFrame;Landroidx/picker/features/composable/widget/WidgetFrame;)V

    sput-object v8, Landroidx/picker/features/composable/ComposableTypeSet;->Switch:Landroidx/picker/features/composable/ComposableTypeSet;

    new-instance v15, Landroidx/picker/features/composable/ComposableTypeSet;

    sget-object v14, Landroidx/picker/features/composable/widget/WidgetFrame;->AllAppsSwitch:Landroidx/picker/features/composable/widget/WidgetFrame;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v10, "AllSwitch"

    const/4 v11, 0x2

    move-object v9, v15

    invoke-direct/range {v9 .. v14}, Landroidx/picker/features/composable/ComposableTypeSet;-><init>(Ljava/lang/String;ILandroidx/picker/features/composable/left/LeftFrame;Landroidx/picker/features/composable/icon/IconFrame;Landroidx/picker/features/composable/widget/WidgetFrame;)V

    sput-object v15, Landroidx/picker/features/composable/ComposableTypeSet;->AllSwitch:Landroidx/picker/features/composable/ComposableTypeSet;

    new-instance v9, Landroidx/picker/features/composable/ComposableTypeSet;

    sget-object v10, Landroidx/picker/features/composable/left/LeftFrame;->CheckBox:Landroidx/picker/features/composable/left/LeftFrame;

    const-string v1, "CheckBox"

    const/4 v2, 0x3

    const/4 v5, 0x0

    move-object v0, v9

    move-object v3, v10

    invoke-direct/range {v0 .. v5}, Landroidx/picker/features/composable/ComposableTypeSet;-><init>(Ljava/lang/String;ILandroidx/picker/features/composable/left/LeftFrame;Landroidx/picker/features/composable/icon/IconFrame;Landroidx/picker/features/composable/widget/WidgetFrame;)V

    sput-object v9, Landroidx/picker/features/composable/ComposableTypeSet;->CheckBox:Landroidx/picker/features/composable/ComposableTypeSet;

    new-instance v11, Landroidx/picker/features/composable/ComposableTypeSet;

    sget-object v12, Landroidx/picker/features/composable/widget/WidgetFrame;->Action:Landroidx/picker/features/composable/widget/WidgetFrame;

    const-string v1, "CheckBoxAction"

    const/4 v2, 0x4

    move-object v0, v11

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Landroidx/picker/features/composable/ComposableTypeSet;-><init>(Ljava/lang/String;ILandroidx/picker/features/composable/left/LeftFrame;Landroidx/picker/features/composable/icon/IconFrame;Landroidx/picker/features/composable/widget/WidgetFrame;)V

    sput-object v11, Landroidx/picker/features/composable/ComposableTypeSet;->CheckBoxAction:Landroidx/picker/features/composable/ComposableTypeSet;

    new-instance v13, Landroidx/picker/features/composable/ComposableTypeSet;

    sget-object v5, Landroidx/picker/features/composable/widget/WidgetFrame;->Expander:Landroidx/picker/features/composable/widget/WidgetFrame;

    const-string v1, "CheckBoxExpander"

    const/4 v2, 0x5

    move-object v0, v13

    invoke-direct/range {v0 .. v5}, Landroidx/picker/features/composable/ComposableTypeSet;-><init>(Ljava/lang/String;ILandroidx/picker/features/composable/left/LeftFrame;Landroidx/picker/features/composable/icon/IconFrame;Landroidx/picker/features/composable/widget/WidgetFrame;)V

    sput-object v13, Landroidx/picker/features/composable/ComposableTypeSet;->CheckBoxExpander:Landroidx/picker/features/composable/ComposableTypeSet;

    new-instance v10, Landroidx/picker/features/composable/ComposableTypeSet;

    sget-object v14, Landroidx/picker/features/composable/left/LeftFrame;->Radio:Landroidx/picker/features/composable/left/LeftFrame;

    const-string v1, "Radio"

    const/4 v2, 0x6

    const/4 v5, 0x0

    move-object v0, v10

    move-object v3, v14

    invoke-direct/range {v0 .. v5}, Landroidx/picker/features/composable/ComposableTypeSet;-><init>(Ljava/lang/String;ILandroidx/picker/features/composable/left/LeftFrame;Landroidx/picker/features/composable/icon/IconFrame;Landroidx/picker/features/composable/widget/WidgetFrame;)V

    sput-object v10, Landroidx/picker/features/composable/ComposableTypeSet;->Radio:Landroidx/picker/features/composable/ComposableTypeSet;

    new-instance v16, Landroidx/picker/features/composable/ComposableTypeSet;

    const-string v1, "RadioAction"

    const/4 v2, 0x7

    move-object/from16 v0, v16

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Landroidx/picker/features/composable/ComposableTypeSet;-><init>(Ljava/lang/String;ILandroidx/picker/features/composable/left/LeftFrame;Landroidx/picker/features/composable/icon/IconFrame;Landroidx/picker/features/composable/widget/WidgetFrame;)V

    sput-object v16, Landroidx/picker/features/composable/ComposableTypeSet;->RadioAction:Landroidx/picker/features/composable/ComposableTypeSet;

    move-object v0, v6

    move-object v1, v8

    move-object v2, v15

    move-object v3, v9

    move-object v4, v11

    move-object v5, v13

    move-object v6, v10

    move-object/from16 v7, v16

    filled-new-array/range {v0 .. v7}, [Landroidx/picker/features/composable/ComposableTypeSet;

    move-result-object v0

    sput-object v0, Landroidx/picker/features/composable/ComposableTypeSet;->$VALUES:[Landroidx/picker/features/composable/ComposableTypeSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroidx/picker/features/composable/left/LeftFrame;Landroidx/picker/features/composable/icon/IconFrame;Landroidx/picker/features/composable/widget/WidgetFrame;)V
    .locals 1

    sget-object v0, Landroidx/picker/features/composable/title/TitleFrame;->Title:Landroidx/picker/features/composable/title/TitleFrame;

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Landroidx/picker/features/composable/ComposableTypeSet;->leftFrame:Landroidx/picker/features/composable/left/LeftFrame;

    iput-object p4, p0, Landroidx/picker/features/composable/ComposableTypeSet;->iconFrame:Landroidx/picker/features/composable/icon/IconFrame;

    iput-object v0, p0, Landroidx/picker/features/composable/ComposableTypeSet;->titleFrame:Landroidx/picker/features/composable/title/TitleFrame;

    iput-object p5, p0, Landroidx/picker/features/composable/ComposableTypeSet;->widgetFrame:Landroidx/picker/features/composable/widget/WidgetFrame;

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


# virtual methods
.method public final getIconFrame()Landroidx/picker/features/composable/ComposableFrame;
    .locals 0

    iget-object p0, p0, Landroidx/picker/features/composable/ComposableTypeSet;->iconFrame:Landroidx/picker/features/composable/icon/IconFrame;

    return-object p0
.end method

.method public final getLeftFrame()Landroidx/picker/features/composable/ComposableFrame;
    .locals 0

    iget-object p0, p0, Landroidx/picker/features/composable/ComposableTypeSet;->leftFrame:Landroidx/picker/features/composable/left/LeftFrame;

    return-object p0
.end method

.method public final getTitleFrame()Landroidx/picker/features/composable/ComposableFrame;
    .locals 0

    iget-object p0, p0, Landroidx/picker/features/composable/ComposableTypeSet;->titleFrame:Landroidx/picker/features/composable/title/TitleFrame;

    return-object p0
.end method

.method public final getWidgetFrame()Landroidx/picker/features/composable/ComposableFrame;
    .locals 0

    iget-object p0, p0, Landroidx/picker/features/composable/ComposableTypeSet;->widgetFrame:Landroidx/picker/features/composable/widget/WidgetFrame;

    return-object p0
.end method
