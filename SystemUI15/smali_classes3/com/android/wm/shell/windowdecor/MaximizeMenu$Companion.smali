.class public final Lcom/android/wm/shell/windowdecor/MaximizeMenu$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/windowdecor/MaximizeMenu$Companion;-><init>()V

    return-void
.end method

.method public static isMaximizeMenuView(I)Z
    .locals 1

    const v0, 0x7f0a06ad

    if-eq p0, v0, :cond_1

    const v0, 0x7f0a06ae

    if-eq p0, v0, :cond_1

    const v0, 0x7f0a06b0

    if-eq p0, v0, :cond_1

    const v0, 0x7f0a06b2

    if-eq p0, v0, :cond_1

    const v0, 0x7f0a06b1

    if-eq p0, v0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
