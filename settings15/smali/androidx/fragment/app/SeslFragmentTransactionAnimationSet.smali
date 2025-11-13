.class public final enum Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001R\u001a\u0010\u0003\u001a\u00020\u00028\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u001a\u0010\u0007\u001a\u00020\u00028\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0004\u001a\u0004\u0008\u0008\u0010\u0006R\u001a\u0010\t\u001a\u00020\u00028\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0004\u001a\u0004\u0008\n\u0010\u0006R\u001a\u0010\u000b\u001a\u00020\u00028\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0004\u001a\u0004\u0008\u000c\u0010\u0006\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;",
        "",
        "",
        "enter",
        "I",
        "getEnter$fragment_release",
        "()I",
        "exit",
        "getExit$fragment_release",
        "popEnter",
        "getPopEnter$fragment_release",
        "popExit",
        "getPopExit$fragment_release",
        "fragment_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;


# instance fields
.field private final enter:I

.field private final exit:I

.field private final popEnter:I

.field private final popExit:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v7, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;

    const v2, 0x7f010062

    const v3, 0x7f010064

    const-string v6, "Horizontal"

    const/4 v1, 0x0

    const v4, 0x7f01005e

    const v5, 0x7f010060

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;-><init>(IIIIILjava/lang/String;)V

    new-instance v0, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;

    const v10, 0x7f010063

    const v11, 0x7f010065

    const-string v14, "HorizontalForRTL"

    const/4 v9, 0x1

    const v12, 0x7f01005f

    const v13, 0x7f010061

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;-><init>(IIIIILjava/lang/String;)V

    filled-new-array {v7, v0}, [Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;

    move-result-object v0

    sput-object v0, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;->$VALUES:[Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;

    return-void
.end method

.method public constructor <init>(IIIIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p6, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;->enter:I

    iput p3, p0, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;->exit:I

    iput p4, p0, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;->popEnter:I

    iput p5, p0, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;->popExit:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;
    .locals 1

    const-class v0, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;

    return-object p0
.end method

.method public static values()[Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;
    .locals 1

    sget-object v0, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;->$VALUES:[Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;

    return-object v0
.end method


# virtual methods
.method public final getEnter$fragment_release()I
    .locals 0

    iget p0, p0, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;->enter:I

    return p0
.end method

.method public final getExit$fragment_release()I
    .locals 0

    iget p0, p0, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;->exit:I

    return p0
.end method

.method public final getPopEnter$fragment_release()I
    .locals 0

    iget p0, p0, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;->popEnter:I

    return p0
.end method

.method public final getPopExit$fragment_release()I
    .locals 0

    iget p0, p0, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;->popExit:I

    return p0
.end method
