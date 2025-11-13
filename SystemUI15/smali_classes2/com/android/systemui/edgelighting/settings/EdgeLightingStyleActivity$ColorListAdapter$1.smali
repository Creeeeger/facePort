.class public final Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter$1;->this$1:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter$1;->this$1:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColor:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->showColorPickerDialog()V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter$1;->this$1:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

    iget-object v1, v1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    iget v2, v1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColorIndex:I

    if-eq v2, v0, :cond_1

    const v2, 0x7f13057f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter$1;->this$1:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

    iget-object v1, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    iput v0, v1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColorIndex:I

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter$1;->this$1:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " onclick select index : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter$1;->this$1:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

    iget-object v1, v1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    iget v1, v1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColorIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter$1;->this$1:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    iget-object v0, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->-$$Nest$mupdatePreviewEdgeLighting(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->getEdgeLightingColor()I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->showPreviewEdgeLighting([I)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter$1;->this$1:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    iget p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurDuration:I

    invoke-static {p1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingDuration(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->hidePreviewEdgeLighting(I)V

    :cond_3
    :goto_1
    return-void
.end method
