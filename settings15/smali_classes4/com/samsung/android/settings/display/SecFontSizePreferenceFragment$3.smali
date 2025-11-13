.class public final Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$3;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$3;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$3;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$3;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$3;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMax()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$3;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgressInternal(IZZ)Z

    :cond_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$3;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$3;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMin()I

    move-result v0

    if-le p1, v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$3;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgressInternal(IZZ)Z

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
