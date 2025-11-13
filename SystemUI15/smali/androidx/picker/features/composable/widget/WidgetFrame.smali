.class public final enum Landroidx/picker/features/composable/widget/WidgetFrame;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/picker/features/composable/widget/WidgetFrame;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Landroidx/picker/features/composable/widget/WidgetFrame;

.field public static final enum Action:Landroidx/picker/features/composable/widget/WidgetFrame;

.field public static final enum AllAppsSwitch:Landroidx/picker/features/composable/widget/WidgetFrame;

.field public static final enum Expander:Landroidx/picker/features/composable/widget/WidgetFrame;

.field public static final enum Switch:Landroidx/picker/features/composable/widget/WidgetFrame;


# instance fields
.field private final layoutResId:I

.field private final viewHolderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroidx/picker/features/composable/ComposableViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Landroidx/picker/features/composable/widget/WidgetFrame;

    const-class v1, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;

    const-string v2, "Switch"

    const/4 v3, 0x0

    const v4, 0x7f0d02a6

    invoke-direct {v0, v2, v3, v4, v1}, Landroidx/picker/features/composable/widget/WidgetFrame;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Landroidx/picker/features/composable/widget/WidgetFrame;->Switch:Landroidx/picker/features/composable/widget/WidgetFrame;

    new-instance v1, Landroidx/picker/features/composable/widget/WidgetFrame;

    const/4 v2, 0x1

    const-class v3, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;

    const-string v5, "AllAppsSwitch"

    invoke-direct {v1, v5, v2, v4, v3}, Landroidx/picker/features/composable/widget/WidgetFrame;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v1, Landroidx/picker/features/composable/widget/WidgetFrame;->AllAppsSwitch:Landroidx/picker/features/composable/widget/WidgetFrame;

    new-instance v2, Landroidx/picker/features/composable/widget/WidgetFrame;

    const v3, 0x7f0d02a1

    const-class v4, Landroidx/picker/features/composable/widget/ComposableActionViewHolder;

    const-string v5, "Action"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v3, v4}, Landroidx/picker/features/composable/widget/WidgetFrame;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v2, Landroidx/picker/features/composable/widget/WidgetFrame;->Action:Landroidx/picker/features/composable/widget/WidgetFrame;

    new-instance v3, Landroidx/picker/features/composable/widget/WidgetFrame;

    const v4, 0x7f0d02a3

    const-class v5, Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;

    const-string v6, "Expander"

    const/4 v7, 0x3

    invoke-direct {v3, v6, v7, v4, v5}, Landroidx/picker/features/composable/widget/WidgetFrame;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v3, Landroidx/picker/features/composable/widget/WidgetFrame;->Expander:Landroidx/picker/features/composable/widget/WidgetFrame;

    filled-new-array {v0, v1, v2, v3}, [Landroidx/picker/features/composable/widget/WidgetFrame;

    move-result-object v0

    sput-object v0, Landroidx/picker/features/composable/widget/WidgetFrame;->$VALUES:[Landroidx/picker/features/composable/widget/WidgetFrame;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/picker/features/composable/ComposableViewHolder;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroidx/picker/features/composable/widget/WidgetFrame;->layoutResId:I

    iput-object p4, p0, Landroidx/picker/features/composable/widget/WidgetFrame;->viewHolderClass:Ljava/lang/Class;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/picker/features/composable/widget/WidgetFrame;
    .locals 1

    const-class v0, Landroidx/picker/features/composable/widget/WidgetFrame;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/picker/features/composable/widget/WidgetFrame;

    return-object p0
.end method

.method public static values()[Landroidx/picker/features/composable/widget/WidgetFrame;
    .locals 1

    sget-object v0, Landroidx/picker/features/composable/widget/WidgetFrame;->$VALUES:[Landroidx/picker/features/composable/widget/WidgetFrame;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/picker/features/composable/widget/WidgetFrame;

    return-object v0
.end method
