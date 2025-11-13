.class public final Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final appInfoContainer:Landroid/widget/LinearLayout;

.field public final badge:Landroid/view/View;

.field public final badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

.field public final favRenderer:Lcom/android/systemui/controls/management/adapter/SecFavoritesRenderer;

.field public final favorites:Landroid/widget/TextView;

.field public final icon:Landroid/widget/ImageView;

.field public final isOOBE:Z

.field public final onOff:Landroidx/appcompat/widget/SwitchCompat;

.field public final onOffLayout:Landroid/widget/LinearLayout;

.field public final saLogger:Lcom/android/systemui/controls/util/SALogger;

.field public final switchCallback:Lkotlin/jvm/functions/Function1;

.field public final switchDivider:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/systemui/controls/management/adapter/SecAppAdapter;

.field public final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/adapter/SecAppAdapter;Landroid/view/View;Lcom/android/systemui/controls/management/adapter/SecFavoritesRenderer;Lkotlin/jvm/functions/Function1;ZLcom/android/systemui/controls/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/systemui/controls/management/adapter/SecFavoritesRenderer;",
            "Lkotlin/jvm/functions/Function1;",
            "Z",
            "Lcom/android/systemui/controls/util/SALogger;",
            "Lcom/android/systemui/controls/controller/util/BadgeProvider;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;->this$0:Lcom/android/systemui/controls/management/adapter/SecAppAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p3, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;->favRenderer:Lcom/android/systemui/controls/management/adapter/SecFavoritesRenderer;

    iput-object p4, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;->switchCallback:Lkotlin/jvm/functions/Function1;

    iput-boolean p5, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;->isOOBE:Z

    iput-object p6, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    iput-object p7, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x1020006

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;->icon:Landroid/widget/ImageView;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x1020016

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;->title:Landroid/widget/TextView;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a043e

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;->favorites:Landroid/widget/TextView;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a0837

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;->onOff:Landroidx/appcompat/widget/SwitchCompat;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a0838

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;->onOffLayout:Landroid/widget/LinearLayout;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a0cda

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;->switchDivider:Landroid/view/View;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a00fd

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;->appInfoContainer:Landroid/widget/LinearLayout;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a014a

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;->badge:Landroid/view/View;

    return-void
.end method
