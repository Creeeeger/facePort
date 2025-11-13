.class public Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AutoFitGridLayoutManager;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AutoFitGridLayoutManager"
.end annotation


# instance fields
.field public final mColumnWidth:I

.field public final mSpanCount:I

.field public mTotalSpace:I


# direct methods
.method public constructor <init>(Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;I)V
    .locals 1

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AutoFitGridLayoutManager;->mTotalSpace:I

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0708e0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AutoFitGridLayoutManager;->mColumnWidth:I

    iput p2, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AutoFitGridLayoutManager;->mSpanCount:I

    return-void
.end method


# virtual methods
.method public final onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AutoFitGridLayoutManager;->mTotalSpace:I

    if-ge v1, v0, :cond_0

    iput v0, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AutoFitGridLayoutManager;->mTotalSpace:I

    :cond_0
    iget v0, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AutoFitGridLayoutManager;->mTotalSpace:I

    iget v1, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AutoFitGridLayoutManager;->mColumnWidth:I

    div-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AutoFitGridLayoutManager;->mSpanCount:I

    if-le v0, v1, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void
.end method
