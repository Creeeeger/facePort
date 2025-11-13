.class public final Landroidx/picker3/app/SeslColorPickerDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final mColorPicker:Landroidx/picker3/widget/SeslColorPicker;

.field public mCurrentColor:Ljava/lang/Integer;

.field public final mOnColorSetListener:Landroidx/picker3/app/SeslColorPickerDialog$OnColorSetListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/picker3/app/SeslColorPickerDialog$OnColorSetListener;)V
    .locals 7

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f040354

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_0

    const v0, 0x7f140625

    goto :goto_0

    :cond_0
    const v0, 0x7f140622

    :goto_0
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/picker3/app/SeslColorPickerDialog;->mCurrentColor:Ljava/lang/Integer;

    invoke-static {p1}, Landroidx/picker3/app/SeslColorPickerDialog;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d03e8

    invoke-virtual {v4, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    iput-object v0, v4, Landroidx/appcompat/app/AlertController;->mView:Landroid/view/View;

    const/4 v5, 0x0

    iput v5, v4, Landroidx/appcompat/app/AlertController;->mViewLayoutResId:I

    iput-boolean v5, v4, Landroidx/appcompat/app/AlertController;->mViewSpacingSpecified:Z

    const v4, 0x7f1311a6

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, -0x1

    invoke-virtual {p0, v6, v4, p0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const v4, 0x7f1311a5

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x2

    invoke-virtual {p0, v4, v2, p0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_1

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroidx/picker3/app/SeslColorPickerDialog$1;

    invoke-direct {v4, p0, v2}, Landroidx/picker3/app/SeslColorPickerDialog$1;-><init>(Landroidx/picker3/app/SeslColorPickerDialog;Landroid/view/Window;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_1
    iput-object p2, p0, Landroidx/picker3/app/SeslColorPickerDialog;->mOnColorSetListener:Landroidx/picker3/app/SeslColorPickerDialog$OnColorSetListener;

    const p2, 0x7f0a0b0d

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/picker3/widget/SeslColorPicker;

    iput-object p2, p0, Landroidx/picker3/app/SeslColorPickerDialog;->mColorPicker:Landroidx/picker3/widget/SeslColorPicker;

    const v0, 0x7f0a0b27

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p2, Landroidx/picker3/widget/SeslColorPicker;->mEyeDropperView:Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroidx/picker3/app/SeslColorPickerDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/picker3/app/SeslColorPickerDialog$$ExternalSyntheticLambda0;-><init>(Landroidx/picker3/app/SeslColorPickerDialog;)V

    sput-object v0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mOnColorPickListener:Landroidx/picker3/app/SeslColorPickerDialog$$ExternalSyntheticLambda0;

    new-instance v0, Landroidx/picker3/app/SeslColorPickerDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, v1}, Landroidx/picker3/app/SeslColorPickerDialog$$ExternalSyntheticLambda1;-><init>(Landroidx/picker3/app/SeslColorPickerDialog;Landroid/content/Context;Landroid/app/Activity;)V

    iput-object v0, p2, Landroidx/picker3/widget/SeslColorPicker;->mOnEyeDropperListener:Landroidx/picker3/app/SeslColorPickerDialog$$ExternalSyntheticLambda1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/picker3/app/SeslColorPickerDialog$OnColorSetListener;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/picker3/app/SeslColorPickerDialog;-><init>(Landroid/content/Context;Landroidx/picker3/app/SeslColorPickerDialog$OnColorSetListener;)V

    iget-object p1, p0, Landroidx/picker3/app/SeslColorPickerDialog;->mColorPicker:Landroidx/picker3/widget/SeslColorPicker;

    iget-object p1, p1, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorInfo:Landroidx/picker3/widget/SeslRecentColorInfo;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Landroidx/picker3/widget/SeslRecentColorInfo;->mCurrentColor:Ljava/lang/Integer;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker3/app/SeslColorPickerDialog;->mCurrentColor:Ljava/lang/Integer;

    iget-object p0, p0, Landroidx/picker3/app/SeslColorPickerDialog;->mColorPicker:Landroidx/picker3/widget/SeslColorPicker;

    invoke-virtual {p0}, Landroidx/picker3/widget/SeslColorPicker;->updateRecentColorLayout()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/picker3/app/SeslColorPickerDialog$OnColorSetListener;I[IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/picker3/app/SeslColorPickerDialog;-><init>(Landroid/content/Context;Landroidx/picker3/app/SeslColorPickerDialog$OnColorSetListener;)V

    iget-object p1, p0, Landroidx/picker3/app/SeslColorPickerDialog;->mColorPicker:Landroidx/picker3/widget/SeslColorPicker;

    iget-object p1, p1, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorInfo:Landroidx/picker3/widget/SeslRecentColorInfo;

    invoke-virtual {p1, p4}, Landroidx/picker3/widget/SeslRecentColorInfo;->initRecentColorInfo([I)V

    iget-object p1, p0, Landroidx/picker3/app/SeslColorPickerDialog;->mColorPicker:Landroidx/picker3/widget/SeslColorPicker;

    iget-object p1, p1, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorInfo:Landroidx/picker3/widget/SeslRecentColorInfo;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Landroidx/picker3/widget/SeslRecentColorInfo;->mCurrentColor:Ljava/lang/Integer;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker3/app/SeslColorPickerDialog;->mCurrentColor:Ljava/lang/Integer;

    iget-object p1, p0, Landroidx/picker3/app/SeslColorPickerDialog;->mColorPicker:Landroidx/picker3/widget/SeslColorPicker;

    invoke-virtual {p1}, Landroidx/picker3/widget/SeslColorPicker;->updateRecentColorLayout()V

    iget-object p0, p0, Landroidx/picker3/app/SeslColorPickerDialog;->mColorPicker:Landroidx/picker3/widget/SeslColorPicker;

    invoke-virtual {p0, p5}, Landroidx/picker3/widget/SeslColorPicker;->initOpacitySeekBar(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/picker3/app/SeslColorPickerDialog$OnColorSetListener;[I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/picker3/app/SeslColorPickerDialog;-><init>(Landroid/content/Context;Landroidx/picker3/app/SeslColorPickerDialog$OnColorSetListener;)V

    iget-object p1, p0, Landroidx/picker3/app/SeslColorPickerDialog;->mColorPicker:Landroidx/picker3/widget/SeslColorPicker;

    iget-object p1, p1, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorInfo:Landroidx/picker3/widget/SeslRecentColorInfo;

    invoke-virtual {p1, p3}, Landroidx/picker3/widget/SeslRecentColorInfo;->initRecentColorInfo([I)V

    iget-object p0, p0, Landroidx/picker3/app/SeslColorPickerDialog;->mColorPicker:Landroidx/picker3/widget/SeslColorPicker;

    invoke-virtual {p0}, Landroidx/picker3/widget/SeslColorPicker;->updateRecentColorLayout()V

    return-void
.end method

.method public static scanForActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroidx/picker3/app/SeslColorPickerDialog;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object p1, p0, Landroidx/picker3/app/SeslColorPickerDialog;->mColorPicker:Landroidx/picker3/widget/SeslColorPicker;

    iget-object p2, p1, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    iget-object p2, p2, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    if-eqz p2, :cond_0

    iget-object v0, p1, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorInfo:Landroidx/picker3/widget/SeslRecentColorInfo;

    iput-object p2, v0, Landroidx/picker3/widget/SeslRecentColorInfo;->mSelectedColor:Ljava/lang/Integer;

    :cond_0
    iget-object p2, p1, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorInfo:Landroidx/picker3/widget/SeslRecentColorInfo;

    iget-object p2, p2, Landroidx/picker3/widget/SeslRecentColorInfo;->mSelectedColor:Ljava/lang/Integer;

    iget-object v0, p0, Landroidx/picker3/app/SeslColorPickerDialog;->mOnColorSetListener:Landroidx/picker3/app/SeslColorPickerDialog$OnColorSetListener;

    if-eqz v0, :cond_2

    iget-boolean p1, p1, Landroidx/picker3/widget/SeslColorPicker;->mIsInputFromUser:Z

    if-nez p1, :cond_1

    iget-object p0, p0, Landroidx/picker3/app/SeslColorPickerDialog;->mCurrentColor:Ljava/lang/Integer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$10;

    invoke-virtual {v0, p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$10;->onColorSet(I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$10;

    invoke-virtual {v0, p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$10;->onColorSet(I)V

    :cond_2
    :goto_0
    return-void
.end method
