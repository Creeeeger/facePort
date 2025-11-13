.class public final Landroidx/window/embedding/SplitAttributes$LayoutDirection$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/embedding/SplitAttributes$LayoutDirection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0017\u0010\t\u001a\u00020\u00042\u0008\u0008\u0001\u0010\n\u001a\u00020\u000bH\u0001\u00a2\u0006\u0002\u0008\u000cR\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/window/embedding/SplitAttributes$LayoutDirection$Companion;",
        "",
        "()V",
        "BOTTOM_TO_TOP",
        "Landroidx/window/embedding/SplitAttributes$LayoutDirection;",
        "LEFT_TO_RIGHT",
        "LOCALE",
        "RIGHT_TO_LEFT",
        "TOP_TO_BOTTOM",
        "getLayoutDirectionFromValue",
        "value",
        "",
        "getLayoutDirectionFromValue$window_release",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/window/embedding/SplitAttributes$LayoutDirection$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLayoutDirectionFromValue$window_release(I)Landroidx/window/embedding/SplitAttributes$LayoutDirection;
    .locals 1

    sget-object p0, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->LEFT_TO_RIGHT:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    invoke-virtual {p0}, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->getValue$window_release()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->RIGHT_TO_LEFT:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    invoke-virtual {p0}, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->getValue$window_release()I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->LOCALE:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    invoke-virtual {p0}, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->getValue$window_release()I

    move-result v0

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->TOP_TO_BOTTOM:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    invoke-virtual {p0}, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->getValue$window_release()I

    move-result v0

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object p0, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->BOTTOM_TO_TOP:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    invoke-virtual {p0}, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->getValue$window_release()I

    move-result v0

    if-ne p1, v0, :cond_4

    :goto_0
    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Undefined value:"

    invoke-static {p1, v0}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
