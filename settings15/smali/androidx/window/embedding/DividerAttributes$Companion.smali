.class public final Landroidx/window/embedding/DividerAttributes$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/embedding/DividerAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0001\u0010\t\u001a\u00020\u0006H\u0002J\u0010\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u0006H\u0002J\u000c\u0010\u000c\u001a\u00020\u0006*\u00020\u0006H\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/window/embedding/DividerAttributes$Companion;",
        "",
        "()V",
        "NO_DIVIDER",
        "Landroidx/window/embedding/DividerAttributes;",
        "WIDTH_SYSTEM_DEFAULT",
        "",
        "validateColor",
        "",
        "color",
        "validateWidth",
        "widthDp",
        "alpha",
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

    invoke-direct {p0}, Landroidx/window/embedding/DividerAttributes$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$validateColor(Landroidx/window/embedding/DividerAttributes$Companion;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/window/embedding/DividerAttributes$Companion;->validateColor(I)V

    return-void
.end method

.method public static final synthetic access$validateWidth(Landroidx/window/embedding/DividerAttributes$Companion;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/window/embedding/DividerAttributes$Companion;->validateWidth(I)V

    return-void
.end method

.method private final alpha(I)I
    .locals 0

    ushr-int/lit8 p0, p1, 0x18

    return p0
.end method

.method private final validateColor(I)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/window/embedding/DividerAttributes$Companion;->alpha(I)I

    move-result p0

    const/16 v0, 0xff

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Divider color must be opaque. Got: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final validateWidth(I)V
    .locals 0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "widthDp must be greater than or equal to 0 or WIDTH_SYSTEM_DEFAULT. Got: "

    invoke-static {p1, p0}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
