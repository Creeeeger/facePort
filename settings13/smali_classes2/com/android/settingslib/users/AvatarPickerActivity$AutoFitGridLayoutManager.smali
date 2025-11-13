.class public Lcom/android/settingslib/users/AvatarPickerActivity$AutoFitGridLayoutManager;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "AvatarPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/users/AvatarPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AutoFitGridLayoutManager"
.end annotation


# instance fields
.field private mColumnWidth:I

.field private mSpanCount:I

.field private mTotalSpace:I

.field final synthetic this$0:Lcom/android/settingslib/users/AvatarPickerActivity;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/users/AvatarPickerActivity;Landroid/content/Context;I)V
    .locals 0

    .line 482
    iput-object p1, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AutoFitGridLayoutManager;->this$0:Lcom/android/settingslib/users/AvatarPickerActivity;

    .line 483
    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x0

    .line 480
    iput p2, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AutoFitGridLayoutManager;->mTotalSpace:I

    .line 484
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settingslib/R$dimen;->sec_avatar_full_size_in_picker:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AutoFitGridLayoutManager;->mColumnWidth:I

    .line 485
    iput p3, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AutoFitGridLayoutManager;->mSpanCount:I

    return-void
.end method


# virtual methods
.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 3

    .line 490
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 491
    iget v1, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AutoFitGridLayoutManager;->mTotalSpace:I

    if-ge v1, v0, :cond_0

    .line 492
    iput v0, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AutoFitGridLayoutManager;->mTotalSpace:I

    :cond_0
    const/4 v0, 0x1

    .line 494
    iget v1, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AutoFitGridLayoutManager;->mTotalSpace:I

    iget v2, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AutoFitGridLayoutManager;->mColumnWidth:I

    div-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 495
    iget v1, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AutoFitGridLayoutManager;->mSpanCount:I

    if-le v0, v1, :cond_1

    move v0, v1

    .line 498
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 499
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void
.end method
