.class public final synthetic Lcom/samsung/android/settings/taskbar/TaskBarSettings$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/taskbar/TaskBarSettings;

.field public final synthetic f$1:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/taskbar/TaskBarSettings;Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/taskbar/TaskBarSettings$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/taskbar/TaskBarSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/taskbar/TaskBarSettings$$ExternalSyntheticLambda2;->f$1:Landroidx/recyclerview/widget/RecyclerView;

    iput p3, p0, Lcom/samsung/android/settings/taskbar/TaskBarSettings$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/taskbar/TaskBarSettings$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/taskbar/TaskBarSettings;

    iget-object v1, p0, Lcom/samsung/android/settings/taskbar/TaskBarSettings$$ExternalSyntheticLambda2;->f$1:Landroidx/recyclerview/widget/RecyclerView;

    iget p0, p0, Lcom/samsung/android/settings/taskbar/TaskBarSettings$$ExternalSyntheticLambda2;->f$2:I

    sget-object v2, Lcom/samsung/android/settings/taskbar/TaskBarSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, p0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    :cond_2
    :goto_0
    return-void
.end method
