.class public final Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mImageDescriptions:Ljava/util/List;

.field public final mImageDrawables:Ljava/util/List;

.field public final mPreselectedImages:Landroid/content/res/TypedArray;

.field public mSelectedPosition:I

.field public final mUserIconColors:[I

.field public final synthetic this$0:Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;)V
    .locals 5

    iput-object p1, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter;->this$0:Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter;->mSelectedPosition:I

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter;->mPreselectedImages:Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/UserIcons;->getUserIconColors(Landroid/content/res/Resources;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter;->mUserIconColors:[I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter;->mPreselectedImages:Landroid/content/res/TypedArray;

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    iget-object v3, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter;->this$0:Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter;->mPreselectedImages:Landroid/content/res/TypedArray;

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v4, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_0

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;

    invoke-direct {v4, v3, v2}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;->setCircular()V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Avatar drawables must be bitmaps"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter;->mUserIconColors:[I

    array-length v2, v1

    if-ge v0, v2, :cond_3

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    aget v1, v1, v0

    invoke-static {v2, v1}, Lcom/android/internal/util/UserIcons;->getDefaultUserIconInColor(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iput-object p1, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter;->mImageDrawables:Ljava/util/List;

    iget-object p1, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter;->mPreselectedImages:Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result p1

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter;->this$0:Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030030

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    iput-object p1, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter;->mImageDescriptions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter;->mImageDrawables:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    check-cast p1, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarViewHolder;

    if-ltz p2, :cond_2

    iget v0, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter;->mSelectedPosition:I

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter;->mImageDrawables:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter;->mImageDescriptions:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter;->mImageDescriptions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter;->this$0:Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;

    const v1, 0x7f140c1a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    new-instance v0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter;I)V

    iget-object p0, p1, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    const p0, 0x7f0d007c

    const/4 p2, 0x0

    invoke-static {p1, p0, p1, p2}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarViewHolder;

    invoke-direct {p1, p0}, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
