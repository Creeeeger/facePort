.class public Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MouseCustomPointerColorPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field mCheckView:Landroid/widget/ImageView;

.field mPointerColorView:Landroid/widget/ImageView;

.field final synthetic this$1:Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;Landroid/view/View;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter$ViewHolder;->this$1:Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;

    .line 82
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 83
    sget p1, Lcom/android/settings/R$id;->pointer_color_item:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter$ViewHolder;->mPointerColorView:Landroid/widget/ImageView;

    .line 84
    sget p1, Lcom/android/settings/R$id;->pointer_color_check_img:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter$ViewHolder;->mCheckView:Landroid/widget/ImageView;

    return-void
.end method
