.class Landroid/widget/ListView$FocusSelector;
.super Ljava/lang/Object;
.source "ListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FocusSelector"
.end annotation


# static fields
.field private static final greylist-max-o STATE_REQUEST_FOCUS:I = 0x3

.field private static final greylist-max-o STATE_SET_SELECTION:I = 0x1

.field private static final greylist-max-o STATE_WAIT_FOR_LAYOUT:I = 0x2


# instance fields
.field private greylist-max-o mAction:I

.field private greylist-max-o mPosition:I

.field private greylist-max-o mPositionTop:I

.field final synthetic blacklist this$0:Landroid/widget/ListView;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/ListView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/ListView$FocusSelector;->this$0:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/ListView;Landroid/widget/ListView$FocusSelector-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ListView$FocusSelector;-><init>(Landroid/widget/ListView;)V

    return-void
.end method


# virtual methods
.method greylist-max-o onLayoutComplete()V
    .locals 2

    iget v0, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    :cond_0
    return-void
.end method

.method public whitelist test-api run()V
    .locals 3

    iget v0, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/ListView$FocusSelector;->this$0:Landroid/widget/ListView;

    iget v1, p0, Landroid/widget/ListView$FocusSelector;->mPosition:I

    iget v2, p0, Landroid/widget/ListView$FocusSelector;->mPositionTop:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroid/widget/ListView$FocusSelector;->mPosition:I

    iget-object v1, p0, Landroid/widget/ListView$FocusSelector;->this$0:Landroid/widget/ListView;

    iget v1, v1, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/ListView$FocusSelector;->this$0:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_1
    const/4 v2, -0x1

    iput v2, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    :cond_2
    :goto_0
    return-void
.end method

.method greylist-max-o setupFocusIfValid(I)Ljava/lang/Runnable;
    .locals 2

    iget v0, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/widget/ListView$FocusSelector;->mPosition:I

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    return-object p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method greylist-max-o setupForSetSelection(II)Landroid/widget/ListView$FocusSelector;
    .locals 1

    iput p1, p0, Landroid/widget/ListView$FocusSelector;->mPosition:I

    iput p2, p0, Landroid/widget/ListView$FocusSelector;->mPositionTop:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    return-object p0
.end method
