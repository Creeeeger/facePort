.class public final Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$1;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$1;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    iget-object v0, p2, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorAdapter:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->hidePreviewEdgeLighting()V

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p2

    const v0, 0x7f0a0127

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_2

    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$1;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$1;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$1;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setClickable(Z)V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$1;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    iget-object p2, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorAdapter:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

    iput-boolean v1, p2, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->mAreDisabledAll:Z

    iput v2, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColorIndex:I

    invoke-virtual {p2}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$1;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAutoRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0, v2}, Landroid/widget/RadioButton;->setClickable(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    const p2, 0x7f0a02b1

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$1;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAutoRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$1;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAutoRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$1;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAutoRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setClickable(Z)V

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$1;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    iget-object p2, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorAdapter:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

    iput-boolean v2, p2, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->mAreDisabledAll:Z

    iget-boolean p2, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mIsStartByRoutine:Z

    if-nez p2, :cond_4

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingBasicColorIndex(Landroid/content/ContentResolver;)I

    move-result p2

    const/4 v0, 0x3

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColorIndex:I

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$1;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorAdapter:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$1;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0, v2}, Landroid/widget/RadioButton;->setClickable(Z)V

    :cond_5
    :goto_0
    return-void
.end method
