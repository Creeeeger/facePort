.class Landroid/text/DynamicLayout$ChangeWatcher;
.super Ljava/lang/Object;
.source "DynamicLayout.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/text/SpanWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/DynamicLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChangeWatcher"
.end annotation


# instance fields
.field private greylist-max-o mLayout:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/text/DynamicLayout;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTransformedTextUpdate:Landroid/text/method/OffsetMapping$TextUpdate;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/text/DynamicLayout;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/text/DynamicLayout$ChangeWatcher;->mLayout:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private greylist-max-o reflow(Ljava/lang/CharSequence;III)V
    .locals 2

    iget-object v0, p0, Landroid/text/DynamicLayout$ChangeWatcher;->mLayout:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/DynamicLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/text/DynamicLayout;->reflow(Ljava/lang/CharSequence;III)V

    goto :goto_0

    :cond_0
    instance-of v1, p1, Landroid/text/Spannable;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/text/Spannable;

    invoke-interface {v1, p0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist transformAndReflow(Landroid/text/Spannable;II)V
    .locals 3

    iget-object v0, p0, Landroid/text/DynamicLayout$ChangeWatcher;->mLayout:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/DynamicLayout;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/DynamicLayout;->-$$Nest$fgetmDisplay(Landroid/text/DynamicLayout;)Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v1, v1, Landroid/text/method/OffsetMapping;

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/DynamicLayout;->-$$Nest$fgetmDisplay(Landroid/text/DynamicLayout;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/method/OffsetMapping;

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Landroid/text/method/OffsetMapping;->originalToTransformed(II)I

    move-result p2

    invoke-interface {v1, p3, v2}, Landroid/text/method/OffsetMapping;->originalToTransformed(II)I

    move-result p3

    :cond_0
    sub-int v1, p3, p2

    sub-int v2, p3, p2

    invoke-direct {p0, p1, p2, v1, v2}, Landroid/text/DynamicLayout$ChangeWatcher;->reflow(Ljava/lang/CharSequence;III)V

    return-void
.end method


# virtual methods
.method public whitelist afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public whitelist beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    iget-object v0, p0, Landroid/text/DynamicLayout$ChangeWatcher;->mLayout:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/DynamicLayout;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/DynamicLayout;->-$$Nest$fgetmDisplay(Landroid/text/DynamicLayout;)Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v1, v1, Landroid/text/method/OffsetMapping;

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/DynamicLayout;->-$$Nest$fgetmDisplay(Landroid/text/DynamicLayout;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/method/OffsetMapping;

    iget-object v2, p0, Landroid/text/DynamicLayout$ChangeWatcher;->mTransformedTextUpdate:Landroid/text/method/OffsetMapping$TextUpdate;

    if-nez v2, :cond_0

    new-instance v2, Landroid/text/method/OffsetMapping$TextUpdate;

    invoke-direct {v2, p2, p3, p4}, Landroid/text/method/OffsetMapping$TextUpdate;-><init>(III)V

    iput-object v2, p0, Landroid/text/DynamicLayout$ChangeWatcher;->mTransformedTextUpdate:Landroid/text/method/OffsetMapping$TextUpdate;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/text/DynamicLayout$ChangeWatcher;->mTransformedTextUpdate:Landroid/text/method/OffsetMapping$TextUpdate;

    iput p2, v2, Landroid/text/method/OffsetMapping$TextUpdate;->where:I

    iget-object v2, p0, Landroid/text/DynamicLayout$ChangeWatcher;->mTransformedTextUpdate:Landroid/text/method/OffsetMapping$TextUpdate;

    iput p3, v2, Landroid/text/method/OffsetMapping$TextUpdate;->before:I

    iget-object v2, p0, Landroid/text/DynamicLayout$ChangeWatcher;->mTransformedTextUpdate:Landroid/text/method/OffsetMapping$TextUpdate;

    iput p4, v2, Landroid/text/method/OffsetMapping$TextUpdate;->after:I

    :goto_0
    iget-object v2, p0, Landroid/text/DynamicLayout$ChangeWatcher;->mTransformedTextUpdate:Landroid/text/method/OffsetMapping$TextUpdate;

    invoke-interface {v1, v2}, Landroid/text/method/OffsetMapping;->originalToTransformed(Landroid/text/method/OffsetMapping$TextUpdate;)V

    :cond_1
    return-void
.end method

.method public whitelist onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 1

    instance-of v0, p2, Landroid/text/style/UpdateLayout;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p3, p4}, Landroid/text/DynamicLayout$ChangeWatcher;->transformAndReflow(Landroid/text/Spannable;II)V

    :cond_0
    return-void
.end method

.method public whitelist onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .locals 3

    instance-of v0, p2, Landroid/text/style/UpdateLayout;

    if-eqz v0, :cond_3

    if-le p3, p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-static {}, Lcom/android/text/flags/Flags;->insertModeCrashWhenDelete()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/text/DynamicLayout$ChangeWatcher;->mLayout:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/DynamicLayout;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/DynamicLayout;->-$$Nest$fgetmDisplay(Landroid/text/DynamicLayout;)Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v1, v1, Landroid/text/method/OffsetMapping;

    if-eqz v1, :cond_1

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v2, v1}, Landroid/text/DynamicLayout$ChangeWatcher;->reflow(Ljava/lang/CharSequence;III)V

    goto :goto_0

    :cond_1
    sub-int v1, p4, p3

    sub-int v2, p4, p3

    invoke-direct {p0, p1, p3, v1, v2}, Landroid/text/DynamicLayout$ChangeWatcher;->reflow(Ljava/lang/CharSequence;III)V

    sub-int v1, p6, p5

    sub-int v2, p6, p5

    invoke-direct {p0, p1, p5, v1, v2}, Landroid/text/DynamicLayout$ChangeWatcher;->reflow(Ljava/lang/CharSequence;III)V

    :goto_0
    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, p3, p4}, Landroid/text/DynamicLayout$ChangeWatcher;->transformAndReflow(Landroid/text/Spannable;II)V

    invoke-direct {p0, p1, p5, p6}, Landroid/text/DynamicLayout$ChangeWatcher;->transformAndReflow(Landroid/text/Spannable;II)V

    :cond_3
    :goto_1
    return-void
.end method

.method public whitelist onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 3

    instance-of v0, p2, Landroid/text/style/UpdateLayout;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/text/flags/Flags;->insertModeCrashWhenDelete()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/text/DynamicLayout$ChangeWatcher;->mLayout:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/DynamicLayout;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/DynamicLayout;->-$$Nest$fgetmDisplay(Landroid/text/DynamicLayout;)Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v1, v1, Landroid/text/method/OffsetMapping;

    if-eqz v1, :cond_0

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v2, v1}, Landroid/text/DynamicLayout$ChangeWatcher;->reflow(Ljava/lang/CharSequence;III)V

    goto :goto_0

    :cond_0
    sub-int v1, p4, p3

    sub-int v2, p4, p3

    invoke-direct {p0, p1, p3, v1, v2}, Landroid/text/DynamicLayout$ChangeWatcher;->reflow(Ljava/lang/CharSequence;III)V

    :goto_0
    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, p3, p4}, Landroid/text/DynamicLayout$ChangeWatcher;->transformAndReflow(Landroid/text/Spannable;II)V

    :cond_2
    :goto_1
    return-void
.end method

.method public whitelist onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    iget-object v0, p0, Landroid/text/DynamicLayout$ChangeWatcher;->mLayout:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/DynamicLayout;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/DynamicLayout;->-$$Nest$fgetmDisplay(Landroid/text/DynamicLayout;)Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v1, v1, Landroid/text/method/OffsetMapping;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/text/DynamicLayout$ChangeWatcher;->mTransformedTextUpdate:Landroid/text/method/OffsetMapping$TextUpdate;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/text/DynamicLayout$ChangeWatcher;->mTransformedTextUpdate:Landroid/text/method/OffsetMapping$TextUpdate;

    iget v1, v1, Landroid/text/method/OffsetMapping$TextUpdate;->where:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Landroid/text/DynamicLayout$ChangeWatcher;->mTransformedTextUpdate:Landroid/text/method/OffsetMapping$TextUpdate;

    iget p2, v1, Landroid/text/method/OffsetMapping$TextUpdate;->where:I

    iget-object v1, p0, Landroid/text/DynamicLayout$ChangeWatcher;->mTransformedTextUpdate:Landroid/text/method/OffsetMapping$TextUpdate;

    iget p3, v1, Landroid/text/method/OffsetMapping$TextUpdate;->before:I

    iget-object v1, p0, Landroid/text/DynamicLayout$ChangeWatcher;->mTransformedTextUpdate:Landroid/text/method/OffsetMapping$TextUpdate;

    iget p4, v1, Landroid/text/method/OffsetMapping$TextUpdate;->after:I

    iget-object v1, p0, Landroid/text/DynamicLayout$ChangeWatcher;->mTransformedTextUpdate:Landroid/text/method/OffsetMapping$TextUpdate;

    const/4 v2, -0x1

    iput v2, v1, Landroid/text/method/OffsetMapping$TextUpdate;->where:I

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->getLineEnd(I)I

    move-result p3

    invoke-static {v0}, Landroid/text/DynamicLayout;->-$$Nest$fgetmDisplay(Landroid/text/DynamicLayout;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/text/DynamicLayout$ChangeWatcher;->reflow(Ljava/lang/CharSequence;III)V

    return-void
.end method
