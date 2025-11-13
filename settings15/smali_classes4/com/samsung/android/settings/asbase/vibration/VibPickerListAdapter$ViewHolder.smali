.class public final Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mDeleteItemButton:Landroid/widget/ImageButton;

.field public final mRadioTextView:Landroid/widget/CheckedTextView;

.field public final mSubtitle:Landroid/widget/TextView;

.field public final mSubtitleLayout:Landroid/widget/LinearLayout;

.field public final onDeleteItemListener:Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder$$ExternalSyntheticLambda0;

.field public final onSelectItemListener:Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder$1;

.field public roundMode:I

.field public final synthetic this$0:Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;->this$0:Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    new-instance v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;)V

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;->onDeleteItemListener:Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder$1;-><init>(Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;)V

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;->onSelectItemListener:Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder$1;

    const v0, 0x7f0a0c3a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;->mRadioTextView:Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getThemeResId()I

    move-result p1

    const v1, 0x7f15072c

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setCheckMarkTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    const p1, 0x7f0a0c87

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;->mDeleteItemButton:Landroid/widget/ImageButton;

    const p1, 0x7f0a0f3c

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;->mSubtitleLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0f3d

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;->mSubtitle:Landroid/widget/TextView;

    new-instance p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$RoleDescriptionAccessibilityDelegate;

    invoke-direct {p0}, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$RoleDescriptionAccessibilityDelegate;-><init>()V

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    :cond_1
    return-void
.end method
