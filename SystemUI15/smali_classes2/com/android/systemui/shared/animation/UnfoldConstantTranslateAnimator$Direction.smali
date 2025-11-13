.class public final enum Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;

.field public static final enum END:Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;

.field public static final enum START:Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;


# instance fields
.field private final multiplier:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const-string v3, "START"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;->START:Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;

    new-instance v1, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const-string v4, "END"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;-><init>(Ljava/lang/String;IF)V

    sput-object v1, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;->END:Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;

    filled-new-array {v0, v1}, [Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;->$VALUES:[Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;->multiplier:F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;
    .locals 1

    const-class v0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;
    .locals 1

    sget-object v0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;->$VALUES:[Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;

    return-object v0
.end method


# virtual methods
.method public final getMultiplier()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;->multiplier:F

    return p0
.end method
