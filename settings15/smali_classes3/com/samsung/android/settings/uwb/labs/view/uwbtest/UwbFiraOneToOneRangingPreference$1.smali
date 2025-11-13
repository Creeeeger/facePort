.class public final Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference$1;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference$1;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mViewHolder:Landroidx/preference/PreferenceViewHolder;

    const v1, 0x7f0a0feb

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference$1;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;

    iget v1, v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->distance:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference$1;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mViewHolder:Landroidx/preference/PreferenceViewHolder;

    const v1, 0x7f0a0fef

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference$1;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;

    iget v1, v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->rssi:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference$1;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mViewHolder:Landroidx/preference/PreferenceViewHolder;

    const v1, 0x7f0a0fee

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference$1;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;

    iget v1, v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mRangingCnt:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference$1;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mViewHolder:Landroidx/preference/PreferenceViewHolder;

    const v1, 0x7f0a0ff0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference$1;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;

    iget v1, v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mSuccessCnt:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference$1;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->status:I

    const v1, 0x7f0a07ca

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mViewHolder:Landroidx/preference/PreferenceViewHolder;

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    const-string v0, "#F44336"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->nlos:I

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mViewHolder:Landroidx/preference/PreferenceViewHolder;

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    const-string v0, "#21D633"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mViewHolder:Landroidx/preference/PreferenceViewHolder;

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    const-string v0, "#D3FF9800"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference$1;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;

    iget-object v1, v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mDistChart:Lcom/github/mikephil/charting/charts/LineChart;

    iget-object v0, v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mDistLineData:Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setData(Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;)V

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference$1;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mDistChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
