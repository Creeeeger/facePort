.class public final Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public button:Landroid/view/View;

.field public dot:Landroid/widget/RadioButton;

.field public imgIcon:Landroid/widget/ImageView;

.field public splashView:Landroid/widget/ImageView;

.field public textView:Landroid/widget/TextView;

.field public waveL:Landroid/widget/ImageView;

.field public waveS:Landroid/widget/ImageView;


# virtual methods
.method public final bindView(Lcom/samsung/android/settings/asbase/widget/SecSoundMode;I)V
    .locals 3

    const-string/jumbo v0, "null cannot be cast to non-null type android.view.View"

    const-string/jumbo v1, "requireViewById(...)"

    if-eqz p2, :cond_2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const p2, 0x7f0a0759

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->button:Landroid/view/View;

    const p2, 0x7f0a075f

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->textView:Landroid/widget/TextView;

    const p2, 0x7f0a0a19

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->imgIcon:Landroid/widget/ImageView;

    const p2, 0x7f0a1119

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->splashView:Landroid/widget/ImageView;

    const p2, 0x7f0a075a

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->dot:Landroid/widget/RadioButton;

    goto/16 :goto_0

    :cond_1
    const p2, 0x7f0a096d

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->button:Landroid/view/View;

    const p2, 0x7f0a0973

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->textView:Landroid/widget/TextView;

    const p2, 0x7f0a10f9

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->imgIcon:Landroid/widget/ImageView;

    const p2, 0x7f0a096e

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->dot:Landroid/widget/RadioButton;

    goto :goto_0

    :cond_2
    const p2, 0x7f0a0907

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->button:Landroid/view/View;

    const p2, 0x7f0a090d

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->textView:Landroid/widget/TextView;

    const p2, 0x7f0a1121

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->imgIcon:Landroid/widget/ImageView;

    const p2, 0x7f0a1129

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->waveS:Landroid/widget/ImageView;

    const p2, 0x7f0a1128

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->waveL:Landroid/widget/ImageView;

    const p2, 0x7f0a0908

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->dot:Landroid/widget/RadioButton;

    :goto_0
    return-void
.end method

.method public final getDot()Landroid/widget/RadioButton;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->dot:Landroid/widget/RadioButton;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "dot"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final setSelected(Z)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    const-string/jumbo v2, "textView"

    if-eqz v0, :cond_2

    const-string/jumbo v3, "sec"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    if-eqz p1, :cond_0

    const/16 v5, 0x258

    goto :goto_0

    :cond_0
    const/16 v5, 0x190

    :goto_0
    invoke-static {v3, v5, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-static {v0, p1}, Lcom/samsung/android/settings/asbase/utils/SelectionColorUpdater;->updateColor(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->imgIcon:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/asbase/utils/SelectionColorUpdater;->updateColor(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->waveS:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/asbase/utils/SelectionColorUpdater;->updateColor(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->waveL:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/asbase/utils/SelectionColorUpdater;->updateColor(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->splashView:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/asbase/utils/SelectionColorUpdater;->updateColor(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->getDot()Landroid/widget/RadioButton;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "str"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->textView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string/jumbo p0, "textView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
