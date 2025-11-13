.class Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$5;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;-><init>(Lcom/android/internal/app/ChooserActivity$GalleryAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

.field final synthetic blacklist val$this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;Lcom/android/internal/app/ChooserActivity$GalleryAdapter;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    .line 14911
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$5;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$5;->val$this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "button"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .line 14914
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$5;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$5;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserActivity;->semIsOnlyOneCheckedItem(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14915
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 14917
    :cond_0
    return-void
.end method
