.class public final Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

.field public final dropDownLayout:I

.field public final layoutInflater:Landroid/view/LayoutInflater;

.field public mSelectedIndex:I

.field public final parentContext:Landroid/content/Context;

.field public final viewLayout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/android/systemui/controls/controller/util/BadgeProvider;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;->parentContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;->viewLayout:I

    iput p3, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;->dropDownLayout:I

    iput-object p4, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;->mSelectedIndex:I

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;->dropDownLayout:I

    invoke-virtual {p2, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f0a00f4

    invoke-virtual {p2, p3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p3, 0x7f0a0300

    invoke-virtual {p2, p3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;->getAppName()Ljava/lang/CharSequence;

    move-result-object v2

    :cond_2
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const v4, 0x7f0a014a

    invoke-virtual {p2, v4}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v2, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;

    iget-object v5, v2, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeRequiredSet:Ljava/util/Set;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;->getAppName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v1, p2, v0}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->setDescription(Landroid/content/ComponentName;Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_4
    iget v0, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;->mSelectedIndex:I

    if-ne v0, p1, :cond_5

    iget-object p0, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;->parentContext:Landroid/content/Context;

    const p1, 0x7f0600d2

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    const p1, 0x7f0a0284

    invoke-virtual {p2, p1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f080b18

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    return-object p2
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    iget p0, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;->viewLayout:I

    const/4 v0, 0x0

    invoke-virtual {p2, p0, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p0, 0x7f0a0300

    invoke-virtual {p2, p0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;->getAppName()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p1, Lcom/android/systemui/controls/util/ControlsUtil;->Companion:Lcom/android/systemui/controls/util/ControlsUtil$Companion;

    const p3, 0x7f070271

    invoke-static {p1, p0, p3}, Lcom/android/systemui/controls/util/ControlsUtil$Companion;->updateFontSize$default(Lcom/android/systemui/controls/util/ControlsUtil$Companion;Landroid/widget/TextView;I)V

    return-object p2
.end method
