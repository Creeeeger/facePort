.class public final synthetic Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda21;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda21;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda21;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda21;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerNewSelectionBg:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-object v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSelectedRingerContainer:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;->mClickedRingerMode:I

    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getTranslationInDrawerForRingerMode(I)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-object v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSelectedRingerContainer:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;->mClickedRingerMode:I

    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getTranslationInDrawerForRingerMode(I)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSelectedRingerContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->hideRingerDrawer()V

    return-void

    :pswitch_0
    check-cast p0, Landroid/widget/ImageButton;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setPressed(Z)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
