.class public final Lcom/android/settings/Utils$EmojiInputFilter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/Utils$EmojiInputFilter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 6

    const/4 p2, 0x1

    iget-object p0, p0, Lcom/android/settings/Utils$EmojiInputFilter;->mContext:Landroid/content/Context;

    sget-object p3, Lcom/android/settings/Utils;->sBuilder:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p3, :cond_4

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->getType(C)I

    move-result v4

    const/16 v5, 0x13

    if-ne v5, v4, :cond_1

    :cond_0
    :goto_1
    :pswitch_0
    :sswitch_0
    move v2, p2

    goto :goto_2

    :cond_1
    const v4, 0xd800

    if-lt v3, v4, :cond_2

    const v4, 0xdbff

    if-gt v3, v4, :cond_2

    goto :goto_1

    :cond_2
    const/16 v4, 0x2600

    if-eq v3, v4, :cond_0

    const/16 v4, 0x2601

    if-eq v3, v4, :cond_0

    const/16 v4, 0x2614

    if-eq v3, v4, :cond_0

    const/16 v4, 0x2615

    if-eq v3, v4, :cond_0

    const/16 v4, 0x2665

    if-eq v3, v4, :cond_0

    const/16 v4, 0x2666

    if-eq v3, v4, :cond_0

    const/16 v4, 0x26a0

    if-eq v3, v4, :cond_0

    const/16 v4, 0x26a1

    if-eq v3, v4, :cond_0

    const/16 v4, 0x26aa

    if-eq v3, v4, :cond_0

    const/16 v4, 0x26ab

    if-eq v3, v4, :cond_0

    sparse-switch v3, :sswitch_data_0

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    packed-switch v3, :pswitch_data_2

    packed-switch v3, :pswitch_data_3

    :goto_2
    if-eqz v2, :cond_3

    new-instance p1, Landroid/view/ContextThemeWrapper;

    const p2, 0x103012b

    invoke-direct {p1, p0, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const p2, 0x7f1423e1

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    invoke-interface {p4, p5, p6}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_3

    :cond_3
    add-int/2addr v1, p2

    goto :goto_0

    :cond_4
    :goto_3
    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x2049 -> :sswitch_0
        0x2139 -> :sswitch_0
        0x21aa -> :sswitch_0
        0x231b -> :sswitch_0
        0x23f0 -> :sswitch_0
        0x23f3 -> :sswitch_0
        0x24c2 -> :sswitch_0
        0x25ab -> :sswitch_0
        0x25b6 -> :sswitch_0
        0x25c0 -> :sswitch_0
        0x2611 -> :sswitch_0
        0x261d -> :sswitch_0
        0x2648 -> :sswitch_0
        0x2649 -> :sswitch_0
        0x264a -> :sswitch_0
        0x264b -> :sswitch_0
        0x264c -> :sswitch_0
        0x264d -> :sswitch_0
        0x264e -> :sswitch_0
        0x264f -> :sswitch_0
        0x2650 -> :sswitch_0
        0x2651 -> :sswitch_0
        0x2652 -> :sswitch_0
        0x2653 -> :sswitch_0
        0x2660 -> :sswitch_0
        0x2663 -> :sswitch_0
        0x2668 -> :sswitch_0
        0x267b -> :sswitch_0
        0x267f -> :sswitch_0
        0x26bd -> :sswitch_0
        0x26be -> :sswitch_0
        0x26c4 -> :sswitch_0
        0x26c5 -> :sswitch_0
        0x26ce -> :sswitch_0
        0x26d4 -> :sswitch_0
        0x26f3 -> :sswitch_0
        0x26f5 -> :sswitch_0
        0x26fa -> :sswitch_0
        0x26fd -> :sswitch_0
        0x2702 -> :sswitch_0
        0x2705 -> :sswitch_0
        0x2708 -> :sswitch_0
        0x270a -> :sswitch_0
        0x270b -> :sswitch_0
        0x270c -> :sswitch_0
        0x270d -> :sswitch_0
        0x2712 -> :sswitch_0
        0x2714 -> :sswitch_0
        0x2716 -> :sswitch_0
        0x2728 -> :sswitch_0
        0x2733 -> :sswitch_0
        0x2734 -> :sswitch_0
        0x2744 -> :sswitch_0
        0x2747 -> :sswitch_0
        0x274c -> :sswitch_0
        0x274e -> :sswitch_0
        0x2753 -> :sswitch_0
        0x2754 -> :sswitch_0
        0x2755 -> :sswitch_0
        0x2757 -> :sswitch_0
        0x2763 -> :sswitch_0
        0x2764 -> :sswitch_0
        0x2795 -> :sswitch_0
        0x2796 -> :sswitch_0
        0x2797 -> :sswitch_0
        0x27b0 -> :sswitch_0
        0x27bf -> :sswitch_0
        0x2934 -> :sswitch_0
        0x2935 -> :sswitch_0
        0x2b05 -> :sswitch_0
        0x2b06 -> :sswitch_0
        0x2b07 -> :sswitch_0
        0x2b1b -> :sswitch_0
        0x2b1c -> :sswitch_0
        0x2b50 -> :sswitch_0
        0x2b55 -> :sswitch_0
        0x3030 -> :sswitch_0
        0x303d -> :sswitch_0
        0x3297 -> :sswitch_0
        0x3299 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2194
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x23e9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x25fb
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2639
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
