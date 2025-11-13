.class public final Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder$DrawableInsets;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final b:I

.field public final l:I

.field public final r:I

.field public final t:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p2, p1, p2, p1}, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder$DrawableInsets;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder$DrawableInsets;->l:I

    iput p2, p0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder$DrawableInsets;->t:I

    iput p3, p0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder$DrawableInsets;->r:I

    iput p4, p0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder$DrawableInsets;->b:I

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder$DrawableInsets;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder$DrawableInsets;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder$DrawableInsets;

    iget v1, p1, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder$DrawableInsets;->l:I

    iget v3, p0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder$DrawableInsets;->l:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder$DrawableInsets;->t:I

    iget v3, p1, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder$DrawableInsets;->t:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder$DrawableInsets;->r:I

    iget v3, p1, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder$DrawableInsets;->r:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder$DrawableInsets;->b:I

    iget p1, p1, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder$DrawableInsets;->b:I

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder$DrawableInsets;->l:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder$DrawableInsets;->t:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder$DrawableInsets;->r:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget p0, p0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder$DrawableInsets;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DrawableInsets(l="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder$DrawableInsets;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder$DrawableInsets;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder$DrawableInsets;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder$DrawableInsets;->b:I

    const-string v1, ")"

    invoke-static {p0, v1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
