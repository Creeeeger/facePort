.class Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;
.super Lcom/android/internal/widget/RecyclerView$ViewHolder;
.source "ChooserTargetActionsDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserTargetActionsDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VH"
.end annotation


# instance fields
.field blacklist mIcon:Landroid/widget/ImageView;

.field blacklist mLabel:Landroid/widget/TextView;

.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserTargetActionsDialogFragment;


# direct methods
.method public static synthetic blacklist $r8$lambda$P_0N-sYh3Yp8Vp6pd7ZHI04EHkM(Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;->lambda$bind$0(ILandroid/view/View;)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/app/ChooserTargetActionsDialogFragment;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;->this$0:Lcom/android/internal/app/ChooserTargetActionsDialogFragment;

    invoke-direct {p0, p2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x102062a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;->mLabel:Landroid/widget/TextView;

    const v0, 0x1020006

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;->mIcon:Landroid/widget/ImageView;

    return-void
.end method

.method private synthetic blacklist lambda$bind$0(ILandroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;->this$0:Lcom/android/internal/app/ChooserTargetActionsDialogFragment;

    iget-object v1, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;->this$0:Lcom/android/internal/app/ChooserTargetActionsDialogFragment;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public blacklist bind(Landroid/util/Pair;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/CharSequence;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;->mLabel:Landroid/widget/TextView;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;->mIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;->mIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
