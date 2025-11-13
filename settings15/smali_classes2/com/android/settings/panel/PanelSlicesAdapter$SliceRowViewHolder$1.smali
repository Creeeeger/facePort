.class public final Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$1:Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder$1;->this$1:Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder$1;->this$1:Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;

    iget-object p1, p1, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    sget p2, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->$r8$clinit:I

    const p2, 0x7f0a0cd7

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder$1;->this$1:Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;

    invoke-virtual {p2, p1}, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->setActionLabel(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder$1;->this$1:Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;

    iget-object p1, p1, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method
