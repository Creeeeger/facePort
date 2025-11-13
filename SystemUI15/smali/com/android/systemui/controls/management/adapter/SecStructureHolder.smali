.class public final Lcom/android/systemui/controls/management/adapter/SecStructureHolder;
.super Lcom/android/systemui/controls/management/adapter/SecHolder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public displayName:Ljava/lang/CharSequence;

.field public final favoriteCallback:Lkotlin/jvm/functions/Function2;

.field public final selectAllItems:Ljava/lang/String;

.field public final structureAll:Landroid/widget/CheckBox;

.field public final structureAllLayout:Landroid/widget/FrameLayout;

.field public structureName:Ljava/lang/CharSequence;

.field public final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function2;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controls/management/adapter/SecHolder;-><init>(Landroid/view/View;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/SecStructureHolder;->favoriteCallback:Lkotlin/jvm/functions/Function2;

    const p2, 0x7f0a04e5

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    sget-object v0, Lcom/android/systemui/controls/util/ControlsUtil;->Companion:Lcom/android/systemui/controls/util/ControlsUtil$Companion;

    const v1, 0x7f070277

    invoke-static {v0, p2, v1}, Lcom/android/systemui/controls/util/ControlsUtil$Companion;->updateFontSize$default(Lcom/android/systemui/controls/util/ControlsUtil$Companion;Landroid/widget/TextView;I)V

    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/SecStructureHolder;->title:Landroid/widget/TextView;

    const p2, 0x7f0a0281

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/SecStructureHolder;->structureAll:Landroid/widget/CheckBox;

    const p2, 0x7f0a0282

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/SecStructureHolder;->structureAllLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f13047c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/controls/management/adapter/SecStructureHolder;->selectAllItems:Ljava/lang/String;

    new-instance v0, Lcom/android/systemui/controls/management/adapter/SecStructureHolder$accessibilityDelegate$1;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/controls/management/adapter/SecStructureHolder$accessibilityDelegate$1;-><init>(Landroid/view/View;Lcom/android/systemui/controls/management/adapter/SecStructureHolder;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    const/4 p1, 0x2

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method


# virtual methods
.method public final bindData(Lcom/android/systemui/controls/management/model/SecElementWrapper;)V
    .locals 3

    check-cast p1, Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;

    iget-object v0, p1, Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;->structureName:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/systemui/controls/management/adapter/SecStructureHolder;->structureName:Ljava/lang/CharSequence;

    iget-object v0, p1, Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;->displayName:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/systemui/controls/management/adapter/SecStructureHolder;->displayName:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    iget-boolean v2, p1, Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;->needStructureName:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070278

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/SecStructureHolder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/SecStructureHolder;->displayName:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/SecStructureHolder;->structureAll:Landroid/widget/CheckBox;

    iget-boolean p1, p1, Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;->favorite:Z

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/SecStructureHolder;->structureAll:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/SecStructureHolder;->displayName:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/SecStructureHolder;->selectAllItems:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/SecStructureHolder;->structureAllLayout:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/android/systemui/controls/management/adapter/SecStructureHolder$bindData$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/management/adapter/SecStructureHolder$bindData$2;-><init>(Lcom/android/systemui/controls/management/adapter/SecStructureHolder;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final updateFavorite(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/SecStructureHolder;->structureAll:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
