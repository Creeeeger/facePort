.class public Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "VibPickerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field mDeleteItemButton:Landroid/widget/ImageButton;

.field mRadioTextView:Landroid/widget/CheckedTextView;

.field mSubtitle:Landroid/widget/TextView;

.field mSubtitleLayout:Landroid/widget/LinearLayout;

.field private final onDeleteItemListener:Landroid/view/View$OnClickListener;

.field private final onSelectItemListener:Landroid/view/View$OnClickListener;

.field roundMode:I

.field final synthetic this$0:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;


# direct methods
.method public static synthetic $r8$lambda$o5cLtMqiOWGwNtDeQwGtnk8tBzI(Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetonDeleteItemListener(Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->onDeleteItemListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonSelectItemListener(Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->onSelectItemListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public constructor <init>(Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;Landroid/view/View;)V
    .locals 1

    .line 112
    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;

    .line 113
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 125
    new-instance v0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;)V

    iput-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->onDeleteItemListener:Landroid/view/View$OnClickListener;

    .line 150
    new-instance v0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder$1;-><init>(Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;)V

    iput-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->onSelectItemListener:Landroid/view/View$OnClickListener;

    .line 114
    sget v0, Lcom/android/settings/R$id;->radiobutton_checkedtextview:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->mRadioTextView:Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_1

    .line 116
    invoke-static {p1}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getThemeResId()I

    move-result p1

    sget v0, Lcom/android/settings/R$style;->VibrationPickerDefault:I

    if-ne p1, v0, :cond_0

    .line 117
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->mRadioTextView:Landroid/widget/CheckedTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setCheckMarkTintList(Landroid/content/res/ColorStateList;)V

    .line 119
    :cond_0
    sget p1, Lcom/android/settings/R$id;->removebutton:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->mDeleteItemButton:Landroid/widget/ImageButton;

    .line 120
    sget p1, Lcom/android/settings/R$id;->subtitle_layout:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->mSubtitleLayout:Landroid/widget/LinearLayout;

    .line 121
    sget p1, Lcom/android/settings/R$id;->subtitle_textview:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->mSubtitle:Landroid/widget/TextView;

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 5

    .line 126
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    .line 127
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;

    invoke-static {v0}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->-$$Nest$fgetmVibPickerItemList(Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/as/vibration/VibPickerItem;

    .line 129
    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;

    invoke-static {v1}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->-$$Nest$fgetmCustomPatternCount(Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    .line 130
    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;

    invoke-static {v1}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->-$$Nest$fgetmVibPickerItemList(Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/as/vibration/VibPickerItem;

    .line 131
    invoke-virtual {v1}, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->getIsCustom()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 132
    iget-object v4, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;

    invoke-static {v4}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->-$$Nest$fgetmVibPickerItemList(Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;

    invoke-static {v1}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->-$$Nest$fgetmVibPickerItemList(Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 136
    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;

    invoke-static {v1}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->-$$Nest$fgetmCustomPatternCount(Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;)I

    move-result v4

    sub-int/2addr v4, v3

    invoke-static {v1, v4}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->-$$Nest$fputmCustomPatternCount(Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;I)V

    .line 137
    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;

    invoke-static {v1}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->-$$Nest$fgetmSelectedItemPosition(Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;)I

    move-result v1

    if-le v1, p1, :cond_2

    .line 138
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;

    invoke-static {p1}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->-$$Nest$fgetmCustomPatternCount(Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;)I

    move-result p1

    if-nez p1, :cond_1

    .line 139
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;

    invoke-static {p1}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->-$$Nest$fgetmSelectedItemPosition(Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;)I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->-$$Nest$fputmSelectedItemPosition(Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;I)V

    goto :goto_0

    .line 141
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;

    invoke-static {p1}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->-$$Nest$fgetmSelectedItemPosition(Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;)I

    move-result v1

    sub-int/2addr v1, v3

    invoke-static {p1, v1}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->-$$Nest$fputmSelectedItemPosition(Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;I)V

    .line 144
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;

    invoke-static {p1}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->-$$Nest$fgetmListener(Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;)Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 145
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;

    invoke-static {p1}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->-$$Nest$fgetmListener(Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;)Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$OnItemClickListener;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;

    invoke-static {v1}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->-$$Nest$fgetmSelectedItemPosition(Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;)I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->getPattern()I

    move-result v0

    invoke-interface {p1, v1, v0}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$OnItemClickListener;->onItemRemoved(II)V

    .line 147
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
