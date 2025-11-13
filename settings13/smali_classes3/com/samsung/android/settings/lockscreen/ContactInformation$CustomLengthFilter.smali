.class Lcom/samsung/android/settings/lockscreen/ContactInformation$CustomLengthFilter;
.super Landroid/text/InputFilter$LengthFilter;
.source "ContactInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/ContactInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomLengthFilter"
.end annotation


# instance fields
.field private mMaxLength:I

.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/ContactInformation;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/lockscreen/ContactInformation;I)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation$CustomLengthFilter;->this$0:Lcom/samsung/android/settings/lockscreen/ContactInformation;

    .line 288
    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 289
    iput p2, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation$CustomLengthFilter;->mMaxLength:I

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 1

    .line 294
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p2

    .line 296
    iget-object p3, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation$CustomLengthFilter;->this$0:Lcom/samsung/android/settings/lockscreen/ContactInformation;

    invoke-static {p3}, Lcom/samsung/android/settings/lockscreen/ContactInformation;->-$$Nest$fgetmErrorTextView(Lcom/samsung/android/settings/lockscreen/ContactInformation;)Landroid/widget/TextView;

    move-result-object p3

    if-eqz p3, :cond_4

    if-eqz p2, :cond_2

    .line 298
    iget-object p3, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation$CustomLengthFilter;->this$0:Lcom/samsung/android/settings/lockscreen/ContactInformation;

    .line 299
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/android/settings/R$string;->sec_owner_info_settings_max_character_reached:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x1

    new-array p5, p4, [Ljava/lang/Object;

    iget p6, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation$CustomLengthFilter;->mMaxLength:I

    .line 300
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    const/4 v0, 0x0

    aput-object p6, p5, v0

    .line 298
    invoke-static {p3, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 301
    iget-object p5, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation$CustomLengthFilter;->this$0:Lcom/samsung/android/settings/lockscreen/ContactInformation;

    invoke-static {p5}, Lcom/samsung/android/settings/lockscreen/ContactInformation;->-$$Nest$fgetmErrorTextView(Lcom/samsung/android/settings/lockscreen/ContactInformation;)Landroid/widget/TextView;

    move-result-object p5

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 302
    iget-object p5, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation$CustomLengthFilter;->this$0:Lcom/samsung/android/settings/lockscreen/ContactInformation;

    invoke-static {p5}, Lcom/samsung/android/settings/lockscreen/ContactInformation;->-$$Nest$fgetmErrorTextView(Lcom/samsung/android/settings/lockscreen/ContactInformation;)Landroid/widget/TextView;

    move-result-object p5

    invoke-virtual {p5, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object p3, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation$CustomLengthFilter;->this$0:Lcom/samsung/android/settings/lockscreen/ContactInformation;

    invoke-static {p3}, Lcom/samsung/android/settings/lockscreen/ContactInformation;->-$$Nest$fgetmScrollView(Lcom/samsung/android/settings/lockscreen/ContactInformation;)Landroid/widget/ScrollView;

    move-result-object p3

    const/16 p5, 0x82

    invoke-virtual {p3, p5}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 304
    iget-object p3, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation$CustomLengthFilter;->this$0:Lcom/samsung/android/settings/lockscreen/ContactInformation;

    invoke-static {p3}, Lcom/samsung/android/settings/lockscreen/ContactInformation;->-$$Nest$fgetmOwnerInfoEditText(Lcom/samsung/android/settings/lockscreen/ContactInformation;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 305
    iget-object p3, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation$CustomLengthFilter;->this$0:Lcom/samsung/android/settings/lockscreen/ContactInformation;

    invoke-static {p3}, Lcom/samsung/android/settings/lockscreen/ContactInformation;->-$$Nest$fgetmOwnerInfoEditText(Lcom/samsung/android/settings/lockscreen/ContactInformation;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation$CustomLengthFilter;->this$0:Lcom/samsung/android/settings/lockscreen/ContactInformation;

    .line 306
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p5, Lcom/android/settings/R$color;->red:I

    invoke-virtual {p0, p5}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    sget-object p5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 305
    invoke-virtual {p3, p0, p5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 310
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_4

    .line 311
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p0

    sub-int/2addr p0, p4

    invoke-interface {p1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    const/16 p1, 0x262a

    if-eq p0, p1, :cond_1

    const/16 p1, 0x271d

    if-ne p0, p1, :cond_4

    :cond_1
    const-string p0, ""

    return-object p0

    .line 317
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation$CustomLengthFilter;->this$0:Lcom/samsung/android/settings/lockscreen/ContactInformation;

    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/ContactInformation;->-$$Nest$fgetmOwnerInfoEditText(Lcom/samsung/android/settings/lockscreen/ContactInformation;)Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation$CustomLengthFilter;->this$0:Lcom/samsung/android/settings/lockscreen/ContactInformation;

    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/ContactInformation;->-$$Nest$fgetmOwnerInfoEditText(Lcom/samsung/android/settings/lockscreen/ContactInformation;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 318
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation$CustomLengthFilter;->this$0:Lcom/samsung/android/settings/lockscreen/ContactInformation;

    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/ContactInformation;->-$$Nest$fgetmOwnerInfoEditText(Lcom/samsung/android/settings/lockscreen/ContactInformation;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p3, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation$CustomLengthFilter;->this$0:Lcom/samsung/android/settings/lockscreen/ContactInformation;

    .line 319
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/android/settings/R$color;->dashboard_tab_selected_color:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    sget-object p4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 318
    invoke-virtual {p1, p3, p4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 322
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation$CustomLengthFilter;->this$0:Lcom/samsung/android/settings/lockscreen/ContactInformation;

    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/ContactInformation;->-$$Nest$fgetmErrorTextView(Lcom/samsung/android/settings/lockscreen/ContactInformation;)Landroid/widget/TextView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    return-object p2
.end method
