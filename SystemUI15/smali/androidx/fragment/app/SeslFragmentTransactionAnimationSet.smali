.class public final enum Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;

.field public static final Companion:Landroidx/fragment/app/SeslFragmentTransactionAnimationSet$Companion;


# instance fields
.field private final enter:I

.field private final exit:I

.field private final popEnter:I

.field private final popExit:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v7, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;

    const v3, 0x7f010234

    const v4, 0x7f010236

    const-string v1, "Horizontal"

    const/4 v2, 0x0

    const v5, 0x7f010230

    const v6, 0x7f010232

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;-><init>(Ljava/lang/String;IIIII)V

    new-instance v0, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;

    const v11, 0x7f010235

    const v12, 0x7f010237

    const-string v9, "HorizontalForRTL"

    const/4 v10, 0x1

    const v13, 0x7f010231

    const v14, 0x7f010233

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;-><init>(Ljava/lang/String;IIIII)V

    filled-new-array {v7, v0}, [Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;

    move-result-object v0

    sput-object v0, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;->$VALUES:[Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;

    new-instance v0, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;->Companion:Landroidx/fragment/app/SeslFragmentTransactionAnimationSet$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;->enter:I

    iput p4, p0, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;->exit:I

    iput p5, p0, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;->popEnter:I

    iput p6, p0, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;->popExit:I

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
