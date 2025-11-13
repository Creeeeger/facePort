.class Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PaymentDropDownPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimListArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;Landroid/content/Context;I[Ljava/lang/CharSequence;I)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    .line 326
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 327
    invoke-static {p1, p5}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-$$Nest$fputmIndex(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;I)V

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 332
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 337
    iget-object p2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {p2}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->onUpdateAdapter()V

    .line 339
    iget-object p2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {p2}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/android/settings/R$layout;->sec_nfc_sim_dropdown_list_view_row:I

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 341
    sget p3, Lcom/android/settings/R$id;->nfc_sim_list_view_row_image_view:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 342
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-$$Nest$fgetsimIcon(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-$$Nest$fgetsimIcon(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 347
    :cond_0
    sget v0, Lcom/android/settings/R$id;->nfc_sim_list_view_radio_text_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 348
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-$$Nest$fgetentries(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-$$Nest$misMultiSim(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 351
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-$$Nest$mgetPhonePLMNName(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-$$Nest$msetPLMNName(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;Ljava/lang/String;I)V

    .line 352
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v2, v3}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-$$Nest$mgetPhonePLMNName(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-$$Nest$msetPLMNName(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;Ljava/lang/String;I)V

    .line 354
    :cond_1
    sget v2, Lcom/android/settings/R$id;->nfc_sim_list_summary:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_5

    .line 356
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-$$Nest$fgetsimIcon(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aget-object v4, v4, p1

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-$$Nest$fgetmPlmnSIM(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_4

    .line 358
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-$$Nest$misMultiSim(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 359
    rem-int/lit8 v4, p1, 0x2

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-$$Nest$fgetmPlmnSIM(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-$$Nest$fgetmPlmnSIM(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v3

    goto :goto_0

    .line 361
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-$$Nest$fgetmPlmnSIM(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    .line 363
    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    const/16 v4, 0x8

    .line 366
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 370
    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-$$Nest$fgetmIndex(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)I

    move-result v4

    if-ne p1, v4, :cond_6

    .line 371
    move-object v4, v0

    check-cast v4, Landroid/widget/CheckedTextView;

    invoke-virtual {v4, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    if-eqz v2, :cond_6

    .line 373
    invoke-virtual {v4}, Landroid/widget/CheckedTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 374
    move-object v4, v2

    check-cast v4, Landroid/widget/CheckedTextView;

    invoke-virtual {v4, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 378
    :cond_6
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v4, p1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->isOffSlot(I)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 379
    invoke-virtual {p2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 380
    invoke-virtual {p2, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 381
    invoke-virtual {p2, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    const p1, 0x3ecccccd    # 0.4f

    .line 382
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    if-eqz v2, :cond_7

    .line 384
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->nfc_payment_no_sim_card:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 387
    :cond_7
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_8
    return-object p2
.end method
