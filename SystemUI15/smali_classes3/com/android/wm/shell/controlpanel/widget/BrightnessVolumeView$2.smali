.class public final Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$2;->this$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$2;->this$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$2;->this$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mGridUIManager:Lcom/android/wm/shell/controlpanel/GridUIManager;

    if-eqz v1, :cond_0

    check-cast v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    invoke-virtual {v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->returnToMenu()V

    return-void

    :cond_0
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$2;->this$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$2;->this$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$2;->this$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMediaBrightnessLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$2;->this$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->setDefaultVolumeIcon()V

    return-void
.end method
