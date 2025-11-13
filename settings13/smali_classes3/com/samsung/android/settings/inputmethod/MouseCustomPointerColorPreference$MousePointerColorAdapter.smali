.class public Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MouseCustomPointerColorPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MousePointerColorAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field mColorType:[Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mPointerColorList:[I

.field mRes:I

.field final synthetic this$0:Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference;Landroid/content/Context;[II)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;->this$0:Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 70
    iput-object p3, p0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;->mPointerColorList:[I

    .line 71
    iput p4, p0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;->mRes:I

    .line 72
    iput-object p2, p0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;->mContext:Landroid/content/Context;

    .line 73
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$array;->mouse_pointer_color_type:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;->mColorType:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;->mPointerColorList:[I

    array-length p0, p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .line 96
    instance-of v0, p1, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter$ViewHolder;

    if-eqz v0, :cond_4

    .line 97
    check-cast p1, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter$ViewHolder;

    .line 98
    iget-object v0, p1, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter$ViewHolder;->mPointerColorView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;->mPointerColorList:[I

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 99
    iget-object v0, p1, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter$ViewHolder;->mPointerColorView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;->mColorType:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;->mPointerColorList:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const-string v3, "mouse_pointer_color"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 103
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;->this$0:Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference;->-$$Nest$mgetPositionByColor(Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne p2, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    .line 105
    iget-object v4, p1, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter$ViewHolder;->mCheckView:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;->mPointerColorList:[I

    aget v2, v2, v3

    if-ne v0, v2, :cond_1

    .line 107
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$color;->mouse_pointer_color_check_img_white:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$color;->mouse_pointer_color_check_img_black:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 109
    :goto_1
    iget-object v2, p1, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter$ViewHolder;->mCheckView:Landroid/widget/ImageView;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    .line 111
    :cond_2
    iget-object v0, p1, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter$ViewHolder;->mCheckView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    :goto_2
    iget-object v0, p1, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter$ViewHolder;->mPointerColorView:Landroid/widget/ImageView;

    new-instance v2, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter$1;

    invoke-direct {v2, p0, p2}, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter$1;-><init>(Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object p2, p1, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter$ViewHolder;->mPointerColorView:Landroid/widget/ImageView;

    new-instance v0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter$2;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter$2;-><init>(Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;Z)V

    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 134
    iget-object p1, p1, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter$ViewHolder;->mPointerColorView:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 135
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$string;->selected:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_3

    .line 136
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$string;->not_selected:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 134
    :goto_3
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setStateDescription(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 90
    iget-object p2, p0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;->mRes:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 91
    new-instance p2, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter$ViewHolder;-><init>(Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;Landroid/view/View;)V

    return-object p2
.end method
