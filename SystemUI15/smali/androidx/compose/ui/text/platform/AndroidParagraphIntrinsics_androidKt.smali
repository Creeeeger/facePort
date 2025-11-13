.class public abstract Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics_androidKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final access$getHasEmojiCompat(Landroidx/compose/ui/text/TextStyle;)Z
    .locals 3

    iget-object p0, p0, Landroidx/compose/ui/text/TextStyle;->platformStyle:Landroidx/compose/ui/text/PlatformTextStyle;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/text/PlatformTextStyle;->paragraphStyle:Landroidx/compose/ui/text/PlatformParagraphStyle;

    if-eqz p0, :cond_0

    iget p0, p0, Landroidx/compose/ui/text/PlatformParagraphStyle;->emojiSupportMatch:I

    invoke-static {p0}, Landroidx/compose/ui/text/EmojiSupportMatch;->box-impl(I)Landroidx/compose/ui/text/EmojiSupportMatch;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sget-object v0, Landroidx/compose/ui/text/EmojiSupportMatch;->Companion:Landroidx/compose/ui/text/EmojiSupportMatch$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/text/EmojiSupportMatch;->None:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    iget p0, p0, Landroidx/compose/ui/text/EmojiSupportMatch;->value:I

    if-ne p0, v0, :cond_2

    move v2, v1

    :cond_2
    :goto_1
    xor-int/lit8 p0, v2, 0x1

    return p0
.end method
