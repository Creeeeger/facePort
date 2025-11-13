.class final enum Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0082\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007R\u0017\u0010\u0008\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u0005\u001a\u0004\u0008\t\u0010\u0007R\u0017\u0010\n\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u0005\u001a\u0004\u0008\u000b\u0010\u0007R\u0017\u0010\u000c\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\u0005\u001a\u0004\u0008\r\u0010\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "androidx/picker/features/composable/ComposableFactory$PaddingStrategy",
        "",
        "Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;",
        "",
        "start",
        "I",
        "getStart",
        "()I",
        "top",
        "getTop",
        "end",
        "getEnd",
        "bottom",
        "getBottom",
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
.field public static final synthetic $VALUES:[Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;

.field public static final enum IconFramePadding:Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;

.field public static final enum LeftFramePadding:Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;

.field public static final enum TitleFramePadding:Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;


# instance fields
.field private final bottom:I

.field private final end:I

.field private final start:I

.field private final top:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;

    const/4 v1, 0x0

    const v2, 0x7f0707ef

    const-string v3, "IconFramePadding"

    invoke-direct {v0, v3, v1, v2}, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;->IconFramePadding:Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;

    new-instance v1, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;

    const/4 v2, 0x1

    const v3, 0x7f0707f5

    const-string v4, "LeftFramePadding"

    invoke-direct {v1, v4, v2, v3}, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;->LeftFramePadding:Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;

    new-instance v2, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;

    const/4 v3, 0x2

    const v4, 0x7f0707fb

    const-string v5, "TitleFramePadding"

    invoke-direct {v2, v5, v3, v4}, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v2, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;->TitleFramePadding:Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;

    filled-new-array {v0, v1, v2}, [Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;

    move-result-object v0

    sput-object v0, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;->$VALUES:[Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;->start:I

    const/4 p1, 0x0

    iput p1, p0, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;->top:I

    const p2, 0x7f0707f2

    iput p2, p0, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;->end:I

    iput p1, p0, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;->bottom:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;
    .locals 1

    const-class v0, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;

    return-object p0
.end method

.method public static values()[Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;
    .locals 1

    sget-object v0, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;->$VALUES:[Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;

    return-object v0
.end method


# virtual methods
.method public final applyToView(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy$applyToView$getDimenOrZero$1;

    invoke-direct {v1, v0}, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy$applyToView$getDimenOrZero$1;-><init>(Landroid/content/res/Resources;)V

    iget v0, p0, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;->start:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy$applyToView$getDimenOrZero$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget v2, p0, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;->top:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy$applyToView$getDimenOrZero$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iget v3, p0, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;->end:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy$applyToView$getDimenOrZero$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    iget p0, p0, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy;->bottom:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/picker/features/composable/ComposableFactory$PaddingStrategy$applyToView$getDimenOrZero$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p1, v0, v2, v3, p0}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method
