.class public Landroid/text/method/LinkMovementMethod;
.super Landroid/text/method/ScrollingMovementMethod;
.source "LinkMovementMethod.java"


# static fields
.field private static final greylist-max-o CLICK:I = 0x1

.field private static final greylist-max-o DOWN:I = 0x3

.field private static greylist-max-o FROM_BELOW:Ljava/lang/Object; = null

.field private static final greylist-max-o HIDE_FLOATING_TOOLBAR_DELAY_MS:I = 0xc8

.field private static final greylist-max-o UP:I = 0x2

.field private static greylist sInstance:Landroid/text/method/LinkMovementMethod;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    return-void
.end method

.method private greylist-max-o action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 21

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->isOffsetMappingAvailable()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return v4

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getScrollY()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    add-int/2addr v6, v5

    sub-int/2addr v6, v3

    invoke-virtual {v2, v5}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v7

    invoke-virtual {v2, v6}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v8

    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineStart(I)I

    move-result v9

    invoke-virtual {v2, v8}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v10

    const-class v11, Landroid/text/style/ClickableSpan;

    invoke-interface {v1, v9, v10, v11}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/text/style/ClickableSpan;

    invoke-static/range {p3 .. p3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v12

    invoke-static/range {p3 .. p3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v15

    if-gez v14, :cond_1

    sget-object v4, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    invoke-interface {v1, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_1

    invoke-interface/range {p3 .. p3}, Landroid/text/Spannable;->length()I

    move-result v4

    move v15, v4

    move v14, v4

    :cond_1
    const v4, 0x7fffffff

    if-le v14, v10, :cond_2

    move v15, v4

    move v14, v4

    :cond_2
    if-ge v15, v9, :cond_3

    const/16 v16, -0x1

    move/from16 v15, v16

    move/from16 v14, v16

    :cond_3
    packed-switch p1, :pswitch_data_0

    move-object/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v5

    move/from16 v16, v6

    goto/16 :goto_4

    :pswitch_0
    const v17, 0x7fffffff

    const v18, 0x7fffffff

    const/16 v19, 0x0

    move/from16 v4, v17

    move-object/from16 v17, v2

    move/from16 v2, v18

    move/from16 v18, v3

    move/from16 v3, v19

    :goto_0
    move/from16 v19, v5

    array-length v5, v11

    if-ge v3, v5, :cond_6

    aget-object v5, v11, v3

    invoke-interface {v1, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    if-gt v5, v14, :cond_4

    if-ne v14, v15, :cond_5

    :cond_4
    if-ge v5, v4, :cond_5

    move v4, v5

    move/from16 v20, v4

    aget-object v4, v11, v3

    invoke-interface {v1, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    move/from16 v4, v20

    :cond_5
    add-int/lit8 v3, v3, 0x1

    move/from16 v5, v19

    goto :goto_0

    :cond_6
    const v3, 0x7fffffff

    if-ge v2, v3, :cond_7

    invoke-static {v1, v4, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    const/4 v3, 0x1

    return v3

    :cond_7
    move/from16 v16, v6

    goto/16 :goto_4

    :pswitch_1
    move-object/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v5

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_1
    array-length v5, v11

    if-ge v4, v5, :cond_b

    aget-object v5, v11, v4

    invoke-interface {v1, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    if-lt v5, v15, :cond_9

    if-ne v14, v15, :cond_8

    goto :goto_2

    :cond_8
    move/from16 v16, v6

    goto :goto_3

    :cond_9
    :goto_2
    if-le v5, v3, :cond_a

    move/from16 v16, v6

    aget-object v6, v11, v4

    invoke-interface {v1, v6}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    move v3, v5

    goto :goto_3

    :cond_a
    move/from16 v16, v6

    :goto_3
    add-int/lit8 v4, v4, 0x1

    move/from16 v6, v16

    goto :goto_1

    :cond_b
    move/from16 v16, v6

    if-ltz v2, :cond_f

    invoke-static {v1, v3, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    const/4 v4, 0x1

    return v4

    :pswitch_2
    move-object/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v5

    move/from16 v16, v6

    if-ne v14, v15, :cond_c

    const/4 v2, 0x0

    return v2

    :cond_c
    const/4 v2, 0x0

    const-class v3, Landroid/text/style/ClickableSpan;

    invoke-interface {v1, v14, v15, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ClickableSpan;

    array-length v4, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_d

    return v2

    :cond_d
    aget-object v4, v3, v2

    instance-of v2, v4, Landroid/view/textclassifier/TextLinks$TextLinkSpan;

    if-eqz v2, :cond_e

    move-object v2, v4

    check-cast v2, Landroid/view/textclassifier/TextLinks$TextLinkSpan;

    invoke-virtual {v2, v0, v5}, Landroid/view/textclassifier/TextLinks$TextLinkSpan;->onClick(Landroid/view/View;I)V

    goto :goto_4

    :cond_e
    invoke-virtual {v4, v0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    nop

    :cond_f
    :goto_4
    const/4 v2, 0x0

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static whitelist getInstance()Landroid/text/method/MovementMethod;
    .locals 1

    sget-object v0, Landroid/text/method/LinkMovementMethod;->sInstance:Landroid/text/method/LinkMovementMethod;

    if-nez v0, :cond_0

    new-instance v0, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    sput-object v0, Landroid/text/method/LinkMovementMethod;->sInstance:Landroid/text/method/LinkMovementMethod;

    :cond_0
    sget-object v0, Landroid/text/method/LinkMovementMethod;->sInstance:Landroid/text/method/LinkMovementMethod;

    return-object v0
.end method


# virtual methods
.method public whitelist canSelectArbitrarily()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected whitelist down(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->down(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method protected whitelist handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z
    .locals 2

    sparse-switch p3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p5}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p5}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    :goto_0
    invoke-super/range {p0 .. p5}, Landroid/text/method/ScrollingMovementMethod;->handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .locals 1

    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    sget-object v0, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    invoke-interface {p2, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method

.method protected whitelist left(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->left(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method public whitelist onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V
    .locals 3

    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    const/16 v1, 0x22

    const/4 v2, 0x0

    invoke-interface {p2, v0, v2, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    invoke-interface {p2, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_a

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    if-ltz v3, :cond_4

    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v5

    if-le v3, v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v5

    int-to-float v6, v2

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v7

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_3

    int-to-float v6, v2

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineRight(I)F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    goto :goto_0

    :cond_2
    int-to-float v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v6

    const-class v7, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v6, v6, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/ClickableSpan;

    goto :goto_2

    :cond_3
    :goto_0
    const/4 v7, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_9

    array-length v5, v7

    if-eqz v5, :cond_9

    const/4 v5, 0x0

    aget-object v6, v7, v5

    if-ne v0, v1, :cond_6

    instance-of v8, v6, Landroid/view/textclassifier/TextLinks$TextLinkSpan;

    if-eqz v8, :cond_5

    move-object v8, v6

    check-cast v8, Landroid/view/textclassifier/TextLinks$TextLinkSpan;

    invoke-virtual {v8, p1, v5}, Landroid/view/textclassifier/TextLinks$TextLinkSpan;->onClick(Landroid/view/View;I)V

    goto :goto_3

    :cond_5
    invoke-virtual {v6, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    goto :goto_3

    :cond_6
    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0x1c

    if-lt v5, v8, :cond_7

    const/16 v5, 0xc8

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->hideFloatingToolbar(I)V

    :cond_7
    nop

    invoke-interface {p2, v6}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p2, v6}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    invoke-static {p2, v5, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_8
    :goto_3
    return v1

    :cond_9
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    :cond_a
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/ScrollingMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected whitelist right(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->right(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method protected whitelist up(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->up(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method
