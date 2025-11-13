.class Lcom/android/internal/app/ChooserActivity$SemShareStarTargetComparator;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SemShareStarTargetComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/internal/app/ResolverActivity$ShareStarTarget;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 10184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Lcom/android/internal/app/ResolverActivity$ShareStarTarget;Lcom/android/internal/app/ResolverActivity$ShareStarTarget;)I
    .locals 2
    .param p1, "lhs"    # Lcom/android/internal/app/ResolverActivity$ShareStarTarget;
    .param p2, "rhs"    # Lcom/android/internal/app/ResolverActivity$ShareStarTarget;

    .line 10188
    iget v0, p2, Lcom/android/internal/app/ResolverActivity$ShareStarTarget;->mShareStarScore:F

    iget v1, p1, Lcom/android/internal/app/ResolverActivity$ShareStarTarget;->mShareStarScore:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 10189
    iget-object v0, p2, Lcom/android/internal/app/ResolverActivity$ShareStarTarget;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v0}, Landroid/service/chooser/ChooserTarget;->getScore()F

    move-result v0

    iget-object v1, p1, Lcom/android/internal/app/ResolverActivity$ShareStarTarget;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v1}, Landroid/service/chooser/ChooserTarget;->getScore()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    return v0

    .line 10192
    :cond_0
    iget v0, p2, Lcom/android/internal/app/ResolverActivity$ShareStarTarget;->mShareStarScore:F

    iget v1, p1, Lcom/android/internal/app/ResolverActivity$ShareStarTarget;->mShareStarScore:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 10184
    check-cast p1, Lcom/android/internal/app/ResolverActivity$ShareStarTarget;

    check-cast p2, Lcom/android/internal/app/ResolverActivity$ShareStarTarget;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity$SemShareStarTargetComparator;->compare(Lcom/android/internal/app/ResolverActivity$ShareStarTarget;Lcom/android/internal/app/ResolverActivity$ShareStarTarget;)I

    move-result p1

    return p1
.end method
