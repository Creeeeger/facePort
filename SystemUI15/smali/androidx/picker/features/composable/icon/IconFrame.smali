.class public final enum Landroidx/picker/features/composable/icon/IconFrame;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/picker/features/composable/icon/IconFrame;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Landroidx/picker/features/composable/icon/IconFrame;

.field public static final enum Icon:Landroidx/picker/features/composable/icon/IconFrame;


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
    .locals 5

    new-instance v0, Landroidx/picker/features/composable/icon/IconFrame;

    const v1, 0x7f0d02a4

    const-class v2, Landroidx/picker/features/composable/icon/ComposableIconViewHolder;

    const-string v3, "Icon"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroidx/picker/features/composable/icon/IconFrame;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Landroidx/picker/features/composable/icon/IconFrame;->Icon:Landroidx/picker/features/composable/icon/IconFrame;

    filled-new-array {v0}, [Landroidx/picker/features/composable/icon/IconFrame;

    move-result-object v0

    sput-object v0, Landroidx/picker/features/composable/icon/IconFrame;->$VALUES:[Landroidx/picker/features/composable/icon/IconFrame;

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

    iput p3, p0, Landroidx/picker/features/composable/icon/IconFrame;->layoutResId:I

    iput-object p4, p0, Landroidx/picker/features/composable/icon/IconFrame;->viewHolderClass:Ljava/lang/Class;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/picker/features/composable/icon/IconFrame;
    .locals 1

    const-class v0, Landroidx/picker/features/composable/icon/IconFrame;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/picker/features/composable/icon/IconFrame;

    return-object p0
.end method

.method public static values()[Landroidx/picker/features/composable/icon/IconFrame;
    .locals 1

    sget-object v0, Landroidx/picker/features/composable/icon/IconFrame;->$VALUES:[Landroidx/picker/features/composable/icon/IconFrame;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/picker/features/composable/icon/IconFrame;

    return-object v0
.end method
