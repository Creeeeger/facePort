.class public final Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mButton:Landroid/view/View;

.field public mDot:Landroid/widget/RadioButton;

.field public mImgIcon:Landroid/widget/ImageView;

.field public mImgIconBg:Landroid/widget/ImageView;

.field public mTextView:Landroid/widget/TextView;

.field public final selectedColor:I

.field public final selectedIcon4Color:I

.field public final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

.field public final unSelectedColor:I

.field public final unSelectedIcon4Color:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    iget-object v0, p1, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mContext:Landroid/content/Context;

    const v1, 0x7f060729

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->selectedColor:I

    iget-object v0, p1, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mContext:Landroid/content/Context;

    const v1, 0x7f06072b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->unSelectedColor:I

    iget-object v0, p1, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mContext:Landroid/content/Context;

    const v1, 0x7f060740

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    iget-object v0, p1, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mContext:Landroid/content/Context;

    const v1, 0x7f0600c3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->unSelectedIcon4Color:I

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mContext:Landroid/content/Context;

    const v0, 0x7f060099

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->selectedIcon4Color:I

    return-void
.end method


# virtual methods
.method public final bindView(Landroid/view/View;I)V
    .locals 3

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    if-eqz p2, :cond_3

    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    const-string p0, "BluetoothMultiButtonPreference"

    const-string p1, "Wrong type in bindView()"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_0
    const p2, 0x7f0a0562

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mButton:Landroid/view/View;

    const p2, 0x7f0a0566

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mTextView:Landroid/widget/TextView;

    const p2, 0x7f0a0564

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mImgIcon:Landroid/widget/ImageView;

    const p2, 0x7f0a0565

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mImgIconBg:Landroid/widget/ImageView;

    iget v1, v1, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->m4IconBg:I

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const p2, 0x7f0a0563

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mDot:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto/16 :goto_0

    :cond_1
    const p2, 0x7f0a0759

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mButton:Landroid/view/View;

    const p2, 0x7f0a075f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mTextView:Landroid/widget/TextView;

    const p2, 0x7f0a075b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mImgIcon:Landroid/widget/ImageView;

    const p2, 0x7f0a075c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mImgIconBg:Landroid/widget/ImageView;

    iget v1, v1, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->m4IconBg:I

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const p2, 0x7f0a075a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mDot:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    const p2, 0x7f0a096d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mButton:Landroid/view/View;

    const p2, 0x7f0a0973

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mTextView:Landroid/widget/TextView;

    const p2, 0x7f0a096f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mImgIcon:Landroid/widget/ImageView;

    const p2, 0x7f0a0970

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mImgIconBg:Landroid/widget/ImageView;

    iget v1, v1, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->m4IconBg:I

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const p2, 0x7f0a096e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mDot:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const p2, 0x7f0a0907

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mButton:Landroid/view/View;

    const p2, 0x7f0a090d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mTextView:Landroid/widget/TextView;

    const p2, 0x7f0a090a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mImgIconBg:Landroid/widget/ImageView;

    iget v1, v1, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->m4IconBg:I

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const p2, 0x7f0a0909

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mImgIcon:Landroid/widget/ImageView;

    const p2, 0x7f0a0908

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mDot:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final setSelected(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->selectedColor:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->unSelectedColor:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mImgIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    iget v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->selectedIcon4Color:I

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->unSelectedIcon4Color:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mImgIconBg:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    const v1, 0x7f080889

    goto :goto_2

    :cond_2
    const v1, 0x7f08088a

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mDot:Landroid/widget/RadioButton;

    invoke-virtual {p0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method
