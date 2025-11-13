.class abstract enum Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

.field public static final enum BOTTOM:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$BOTTOM;

.field public static final enum LEFT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$LEFT;

.field public static final enum RIGHT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$RIGHT;

.field public static final enum TOP:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$TOP;


# instance fields
.field private final label:Ljava/lang/String;

.field private final overrideTag:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$LEFT;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$LEFT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->LEFT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$LEFT;

    new-instance v1, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$TOP;

    const-string v2, "TOP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$TOP;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->TOP:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$TOP;

    new-instance v2, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$RIGHT;

    const-string v3, "RIGHT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$RIGHT;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->RIGHT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$RIGHT;

    new-instance v3, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$BOTTOM;

    const-string v4, "BOTTOM"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$BOTTOM;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->BOTTOM:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$BOTTOM;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->$VALUES:[Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->label:Ljava/lang/String;

    iput p4, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->overrideTag:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;
    .locals 1

    const-class v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;
    .locals 1

    sget-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->$VALUES:[Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    return-object v0
.end method


# virtual methods
.method public final getLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->label:Ljava/lang/String;

    return-object p0
.end method

.method public final getOverrideTag()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->overrideTag:I

    return p0
.end method

.method public abstract getValue(Landroid/view/View;)I
.end method

.method public abstract setValue(Landroid/view/View;I)V
.end method
