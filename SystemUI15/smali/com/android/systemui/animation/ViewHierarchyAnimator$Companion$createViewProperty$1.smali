.class public final Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createViewProperty$1;
.super Landroid/util/IntProperty;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $bound:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createViewProperty$1;->$bound:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-direct {p0, p2}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroid/view/View;

    sget-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator;->Companion:Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;

    iget-object v1, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createViewProperty$1;->$bound:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {v0, p1, v1}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->access$getBound(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createViewProperty$1;->$bound:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-virtual {p0, p1}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->getValue(Landroid/view/View;)I

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;I)V
    .locals 1

    check-cast p1, Landroid/view/View;

    sget-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator;->Companion:Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;

    iget-object p0, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createViewProperty$1;->$bound:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p0, p2}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->setBound(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;I)V

    return-void
.end method
