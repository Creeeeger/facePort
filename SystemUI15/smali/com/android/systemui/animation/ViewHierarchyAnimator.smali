.class public final Lcom/android/systemui/animation/ViewHierarchyAnimator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;

.field public static final DEFAULT_FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final PROPERTIES:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator;->Companion:Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;

    sget-object v0, Lcom/android/app/animation/Interpolators;->STANDARD:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    sget-object v0, Lcom/android/app/animation/Interpolators;->EMPHASIZED:Landroid/view/animation/Interpolator;

    sget-object v0, Lcom/android/app/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator;->DEFAULT_FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    sget-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->LEFT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$LEFT;

    invoke-virtual {v0}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->getLabel()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createViewProperty$1;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createViewProperty$1;-><init>(Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;Ljava/lang/String;)V

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->TOP:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$TOP;

    invoke-virtual {v0}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->getLabel()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createViewProperty$1;

    invoke-direct {v3, v0, v2}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createViewProperty$1;-><init>(Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;Ljava/lang/String;)V

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v0, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->RIGHT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$RIGHT;

    invoke-virtual {v0}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->getLabel()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createViewProperty$1;

    invoke-direct {v4, v0, v3}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createViewProperty$1;-><init>(Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;Ljava/lang/String;)V

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v0, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->BOTTOM:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$BOTTOM;

    invoke-virtual {v0}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->getLabel()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createViewProperty$1;

    invoke-direct {v5, v0, v4}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createViewProperty$1;-><init>(Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;Ljava/lang/String;)V

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v0, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1, v2, v3, v4}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator;->PROPERTIES:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
