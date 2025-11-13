.class public final Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mResourceId:I

.field public mSelectedItem:I

.field public final synthetic this$0:Lcom/android/systemui/assist/AssistManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/assist/AssistManager;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput p3, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;->mResourceId:I

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    check-cast p2, Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;->this$0:Lcom/android/systemui/assist/AssistManager;

    iget-object p2, p2, Lcom/android/systemui/assist/AssistManager;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;->mResourceId:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;

    if-eqz p3, :cond_4

    const v1, 0x7f0a0283

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    const v2, 0x7f0a00f4

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0a0101

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v4, p3, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->mAssistanceAppName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz v2, :cond_2

    iget-object p3, p3, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->mAssistanceAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    if-eqz v1, :cond_4

    iget p0, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;->mSelectedItem:I

    if-ne p0, p1, :cond_3

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_4
    :goto_0
    return-object p2
.end method
