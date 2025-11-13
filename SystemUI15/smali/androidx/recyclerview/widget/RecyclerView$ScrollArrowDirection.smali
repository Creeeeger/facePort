.class final enum Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;

.field public static final enum DOWN:Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;

.field public static final enum LEFT:Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;

.field public static final enum RIGHT:Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;

.field public static final enum UP:Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;

    const-string v1, "UP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;->UP:Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;

    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;

    const-string v2, "RIGHT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;->RIGHT:Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;

    new-instance v2, Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;

    const-string v3, "DOWN"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;->DOWN:Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;

    new-instance v3, Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;

    const-string v4, "LEFT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;->LEFT:Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;

    filled-new-array {v0, v1, v2, v3}, [Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;

    move-result-object v0

    sput-object v0, Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;->$VALUES:[Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;
    .locals 1

    const-class v0, Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;

    return-object p0
.end method

.method public static values()[Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;
    .locals 1

    sget-object v0, Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;->$VALUES:[Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;

    invoke-virtual {v0}, [Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;

    return-object v0
.end method
