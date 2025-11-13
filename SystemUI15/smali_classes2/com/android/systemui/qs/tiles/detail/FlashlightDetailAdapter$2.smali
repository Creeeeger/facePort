.class public final Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;

.field public final synthetic val$state:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter$2;->this$0:Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter$2;->val$state:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter$2;->this$0:Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;->mSecFlashlightController:Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mFlashlightLevel:I

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;->mSlider:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter$2;->this$0:Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;->mSlider:Landroid/widget/SeekBar;

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter$2;->val$state:Z

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter$2;->this$0:Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;->mSlider:Landroid/widget/SeekBar;

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter$2;->val$state:Z

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v2, 0x3f19999a    # 0.6f

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter$2;->this$0:Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;->-$$Nest$fgetmSettingsHelper(Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isVoiceAssistantEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter$2;->this$0:Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;->mSlider:Landroid/widget/SeekBar;

    add-int/lit8 v2, v1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter$2;->this$0:Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;->mWarningTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter$2;->val$state:Z

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    const/16 p0, 0x8

    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    return-void
.end method
