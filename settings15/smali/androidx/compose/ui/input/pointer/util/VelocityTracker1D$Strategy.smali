.class public final enum Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\u0008\u0080\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "androidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy",
        "",
        "Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;",
        "ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;

.field public static final enum Lsq2:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;

    const-string v1, "Lsq2"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;->Lsq2:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;

    new-instance v1, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;

    const-string v2, "Impulse"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1}, [Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;->$VALUES:[Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;
    .locals 1

    const-class v0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;

    return-object p0
.end method

.method public static values()[Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;
    .locals 1

    sget-object v0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;->$VALUES:[Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;

    return-object v0
.end method
