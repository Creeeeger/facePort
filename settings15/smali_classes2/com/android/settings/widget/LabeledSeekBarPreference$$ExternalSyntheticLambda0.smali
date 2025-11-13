.class public final synthetic Lcom/android/settings/widget/LabeledSeekBarPreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/widget/LabeledSeekBarPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/widget/LabeledSeekBarPreference;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/widget/LabeledSeekBarPreference$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/widget/LabeledSeekBarPreference$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/widget/LabeledSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lcom/android/settings/widget/LabeledSeekBarPreference$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/widget/LabeledSeekBarPreference$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/widget/LabeledSeekBarPreference;

    packed-switch p1, :pswitch_data_0

    iget p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    if-lez p1, :cond_0

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(IZ)V

    :cond_0
    return-void

    :pswitch_0
    iget p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    if-ge p1, v0, :cond_1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(IZ)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
