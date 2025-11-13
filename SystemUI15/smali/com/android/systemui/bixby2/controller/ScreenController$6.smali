.class Lcom/android/systemui/bixby2/controller/ScreenController$6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bixby2/controller/ScreenController;

.field final synthetic val$brightnessSeekBar:Landroid/widget/SeekBar;

.field final synthetic val$brightnessValue:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/bixby2/controller/ScreenController;Landroid/widget/SeekBar;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/ScreenController$6;->this$0:Lcom/android/systemui/bixby2/controller/ScreenController;

    iput-object p2, p0, Lcom/android/systemui/bixby2/controller/ScreenController$6;->val$brightnessSeekBar:Landroid/widget/SeekBar;

    iput p3, p0, Lcom/android/systemui/bixby2/controller/ScreenController$6;->val$brightnessValue:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_FULL_LAYOUT_VOLUME_DIALOG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController$6;->this$0:Lcom/android/systemui/bixby2/controller/ScreenController;

    invoke-static {v0}, Lcom/android/systemui/bixby2/controller/ScreenController;->-$$Nest$misFolderClosed(Lcom/android/systemui/bixby2/controller/ScreenController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController$6;->val$brightnessSeekBar:Landroid/widget/SeekBar;

    iget p0, p0, Lcom/android/systemui/bixby2/controller/ScreenController$6;->val$brightnessValue:I

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController$6;->this$0:Lcom/android/systemui/bixby2/controller/ScreenController;

    invoke-static {v0}, Lcom/android/systemui/bixby2/controller/ScreenController;->-$$Nest$fgetmBrightnessMirrorController(Lcom/android/systemui/bixby2/controller/ScreenController;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/bixby2/controller/ScreenController$6;->val$brightnessValue:I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorListeners:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorListeners:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/bar/BrightnessBar$2;

    iget-object v2, v2, Lcom/android/systemui/qs/bar/BrightnessBar$2;->this$0:Lcom/android/systemui/qs/bar/BrightnessBar;

    iget-object v2, v2, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    invoke-virtual {v2, p0}, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->setValue(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
