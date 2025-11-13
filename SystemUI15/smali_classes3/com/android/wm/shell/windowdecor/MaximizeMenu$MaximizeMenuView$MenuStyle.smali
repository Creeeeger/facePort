.class public final Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final backgroundColor:I

.field public final maximizeOption:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$MaximizeOption;

.field public final snapOptions:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;

.field public final textColor:I


# direct methods
.method public constructor <init>(IILcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$MaximizeOption;Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;->backgroundColor:I

    iput p2, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;->textColor:I

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;->maximizeOption:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$MaximizeOption;

    iput-object p4, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;->snapOptions:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;

    iget v1, p1, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;->backgroundColor:I

    iget v3, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;->backgroundColor:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;->textColor:I

    iget v3, p1, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;->textColor:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;->maximizeOption:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$MaximizeOption;

    iget-object v3, p1, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;->maximizeOption:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$MaximizeOption;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;->snapOptions:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;->snapOptions:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;->backgroundColor:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;->textColor:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;->maximizeOption:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$MaximizeOption;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$MaximizeOption;->drawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/StateListDrawable;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;->snapOptions:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->hashCode()I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MenuStyle(backgroundColor="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;->backgroundColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", textColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;->textColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maximizeOption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;->maximizeOption:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$MaximizeOption;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", snapOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;->snapOptions:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
