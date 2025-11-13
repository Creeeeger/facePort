.class Landroid/app/Notification$TemplateBindResult$MarginSet;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$TemplateBindResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarginSet"
.end annotation


# instance fields
.field private blacklist mValueIfGone:F

.field private blacklist mValueIfVisible:F

.field final synthetic blacklist this$0:Landroid/app/Notification$TemplateBindResult;


# direct methods
.method private constructor blacklist <init>(Landroid/app/Notification$TemplateBindResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->this$0:Landroid/app/Notification$TemplateBindResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/Notification$TemplateBindResult;Landroid/app/Notification$TemplateBindResult$MarginSet-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/Notification$TemplateBindResult$MarginSet;-><init>(Landroid/app/Notification$TemplateBindResult;)V

    return-void
.end method


# virtual methods
.method public blacklist applyToView(Landroid/widget/RemoteViews;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Notification$TemplateBindResult$MarginSet;->applyToView(Landroid/widget/RemoteViews;IF)V

    return-void
.end method

.method public blacklist applyToView(Landroid/widget/RemoteViews;IF)V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Notification$TemplateBindResult$MarginSet;->getDpValue()F

    move-result v0

    add-float/2addr v0, p3

    const/4 v1, 0x1

    const v2, 0x1020451

    if-ne p2, v2, :cond_0

    const-string/jumbo v3, "setTopLineExtraMarginEndDp"

    invoke-virtual {p1, v2, v3, v0}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    goto :goto_1

    :cond_0
    const v2, 0x102062a

    const/4 v3, 0x5

    if-eq p2, v2, :cond_2

    const v2, 0x102022b

    if-ne p2, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2, v3, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutMargin(IIFI)V

    goto :goto_1

    :cond_2
    :goto_0
    iget v2, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->mValueIfGone:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-nez v2, :cond_4

    const-string/jumbo v2, "setImageEndMarginDp"

    iget v4, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->mValueIfVisible:F

    invoke-virtual {p1, p2, v2, v4}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    iget-object v2, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->this$0:Landroid/app/Notification$TemplateBindResult;

    iget-boolean v2, v2, Landroid/app/Notification$TemplateBindResult;->mRightIconVisible:Z

    const-string/jumbo v4, "setHasImage"

    invoke-virtual {p1, p2, v4, v2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    invoke-virtual {p1, p2, v3, p3, v1}, Landroid/widget/RemoteViews;->setViewLayoutMargin(IIFI)V

    :goto_1
    iget-object v2, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->this$0:Landroid/app/Notification$TemplateBindResult;

    iget-boolean v2, v2, Landroid/app/Notification$TemplateBindResult;->mRightIconVisible:Z

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->mValueIfVisible:F

    add-float/2addr v2, p3

    invoke-static {v2, v1}, Landroid/util/TypedValue;->createComplexDimension(FI)I

    move-result v2

    const v3, 0x102061a

    invoke-virtual {p1, p2, v3, v2}, Landroid/widget/RemoteViews;->setIntTag(III)V

    iget v2, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->mValueIfGone:F

    add-float/2addr v2, p3

    invoke-static {v2, v1}, Landroid/util/TypedValue;->createComplexDimension(FI)I

    move-result v1

    const v2, 0x1020619

    invoke-virtual {p1, p2, v2, v1}, Landroid/widget/RemoteViews;->setIntTag(III)V

    :cond_3
    return-void

    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Programming error: `text` and `big_text` use ImageFloatingTextView which can either show a margin or not; thus mValueIfGone must be 0, but it was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->mValueIfGone:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getDpValue()F
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->this$0:Landroid/app/Notification$TemplateBindResult;

    iget-boolean v0, v0, Landroid/app/Notification$TemplateBindResult;->mRightIconVisible:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->mValueIfVisible:F

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->mValueIfGone:F

    :goto_0
    return v0
.end method

.method public blacklist setValues(FF)V
    .locals 0

    iput p1, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->mValueIfGone:F

    iput p2, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->mValueIfVisible:F

    return-void
.end method
