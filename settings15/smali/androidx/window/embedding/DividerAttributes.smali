.class public abstract Landroidx/window/embedding/DividerAttributes;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/embedding/DividerAttributes$Companion;,
        Landroidx/window/embedding/DividerAttributes$DragRange;,
        Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;,
        Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008&\u0018\u0000 \u000b2\u00020\u0001:\u0004\u000b\u000c\r\u000eB\u001b\u0008\u0002\u0012\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\t\u001a\u00020\nH\u0016R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroidx/window/embedding/DividerAttributes;",
        "",
        "widthDp",
        "",
        "color",
        "(II)V",
        "getColor",
        "()I",
        "getWidthDp",
        "toString",
        "",
        "Companion",
        "DragRange",
        "DraggableDividerAttributes",
        "FixedDividerAttributes",
        "window_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Landroidx/window/embedding/DividerAttributes$Companion;

.field public static final NO_DIVIDER:Landroidx/window/embedding/DividerAttributes;

.field public static final WIDTH_SYSTEM_DEFAULT:I = -0x1


# instance fields
.field private final color:I

.field private final widthDp:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/window/embedding/DividerAttributes$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/embedding/DividerAttributes$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/window/embedding/DividerAttributes;->Companion:Landroidx/window/embedding/DividerAttributes$Companion;

    new-instance v0, Landroidx/window/embedding/DividerAttributes$Companion$NO_DIVIDER$1;

    invoke-direct {v0}, Landroidx/window/embedding/DividerAttributes$Companion$NO_DIVIDER$1;-><init>()V

    sput-object v0, Landroidx/window/embedding/DividerAttributes;->NO_DIVIDER:Landroidx/window/embedding/DividerAttributes;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/window/embedding/DividerAttributes;->widthDp:I

    iput p2, p0, Landroidx/window/embedding/DividerAttributes;->color:I

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, -0x1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/high16 p2, -0x1000000

    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/window/embedding/DividerAttributes;-><init>(II)V

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/window/embedding/DividerAttributes;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final getColor()I
    .locals 0

    iget p0, p0, Landroidx/window/embedding/DividerAttributes;->color:I

    return p0
.end method

.method public final getWidthDp()I
    .locals 0

    iget p0, p0, Landroidx/window/embedding/DividerAttributes;->widthDp:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DividerAttributes{width="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/window/embedding/DividerAttributes;->widthDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/window/embedding/DividerAttributes;->color:I

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroidx/activity/BackEventCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
