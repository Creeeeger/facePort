.class public final enum Landroidx/picker/features/composable/left/LeftFrame;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/picker/features/composable/ComposableFrame;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/picker/features/composable/left/LeftFrame;",
        ">;",
        "Landroidx/picker/features/composable/ComposableFrame;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0080\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002R\u001a\u0010\u0004\u001a\u00020\u00038\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007R\"\u0010\n\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\t0\u00088\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/picker/features/composable/left/LeftFrame;",
        "",
        "Landroidx/picker/features/composable/ComposableFrame;",
        "",
        "layoutResId",
        "I",
        "getLayoutResId",
        "()I",
        "Ljava/lang/Class;",
        "Landroidx/picker/features/composable/ComposableViewHolder;",
        "viewHolderClass",
        "Ljava/lang/Class;",
        "getViewHolderClass",
        "()Ljava/lang/Class;",
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
.field public static final synthetic $VALUES:[Landroidx/picker/features/composable/left/LeftFrame;

.field public static final enum CheckBox:Landroidx/picker/features/composable/left/LeftFrame;

.field public static final enum Radio:Landroidx/picker/features/composable/left/LeftFrame;


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
    .locals 6

    new-instance v0, Landroidx/picker/features/composable/left/LeftFrame;

    const v1, 0x7f0d04e9

    const-class v2, Landroidx/picker/features/composable/left/ComposableRadioButtonViewHolder;

    const-string v3, "Radio"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroidx/picker/features/composable/left/LeftFrame;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Landroidx/picker/features/composable/left/LeftFrame;->Radio:Landroidx/picker/features/composable/left/LeftFrame;

    new-instance v1, Landroidx/picker/features/composable/left/LeftFrame;

    const v2, 0x7f0d04e6

    const-class v3, Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;

    const-string v4, "CheckBox"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Landroidx/picker/features/composable/left/LeftFrame;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v1, Landroidx/picker/features/composable/left/LeftFrame;->CheckBox:Landroidx/picker/features/composable/left/LeftFrame;

    filled-new-array {v0, v1}, [Landroidx/picker/features/composable/left/LeftFrame;

    move-result-object v0

    sput-object v0, Landroidx/picker/features/composable/left/LeftFrame;->$VALUES:[Landroidx/picker/features/composable/left/LeftFrame;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroidx/picker/features/composable/left/LeftFrame;->layoutResId:I

    iput-object p4, p0, Landroidx/picker/features/composable/left/LeftFrame;->viewHolderClass:Ljava/lang/Class;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/picker/features/composable/left/LeftFrame;
    .locals 1

    const-class v0, Landroidx/picker/features/composable/left/LeftFrame;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/picker/features/composable/left/LeftFrame;

    return-object p0
.end method

.method public static values()[Landroidx/picker/features/composable/left/LeftFrame;
    .locals 1

    sget-object v0, Landroidx/picker/features/composable/left/LeftFrame;->$VALUES:[Landroidx/picker/features/composable/left/LeftFrame;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/picker/features/composable/left/LeftFrame;

    return-object v0
.end method


# virtual methods
.method public final getLayoutResId()I
    .locals 0

    iget p0, p0, Landroidx/picker/features/composable/left/LeftFrame;->layoutResId:I

    return p0
.end method

.method public final getViewHolderClass()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Landroidx/picker/features/composable/left/LeftFrame;->viewHolderClass:Ljava/lang/Class;

    return-object p0
.end method
