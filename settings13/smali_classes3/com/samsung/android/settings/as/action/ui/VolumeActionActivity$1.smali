.class Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity$1;
.super Ljava/lang/Object;
.source "VolumeActionActivity.java"

# interfaces
.implements Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->initSeekBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity$1;->this$0:Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 0

    .line 109
    iget-object p1, p0, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity$1;->this$0:Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->-$$Nest$fgetmVolumeMin(Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;)I

    move-result p1

    if-ge p2, p1, :cond_0

    .line 110
    iget-object p1, p0, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity$1;->this$0:Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->-$$Nest$fgetmSeekBar(Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;)Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity$1;->this$0:Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;

    invoke-static {p2}, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->-$$Nest$fgetmVolumeMin(Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    .line 111
    iget-object p0, p0, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity$1;->this$0:Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;

    invoke-static {p0}, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->-$$Nest$fgetmVolumeMin(Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->-$$Nest$fputmVolumeLevel(Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;I)V

    return-void

    .line 114
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity$1;->this$0:Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->-$$Nest$fgetmIcon(Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p3, p0, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity$1;->this$0:Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;

    if-eqz p2, :cond_1

    invoke-static {p3}, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->-$$Nest$fgetmIconActiveColor(Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;)Landroid/content/res/ColorStateList;

    move-result-object p3

    goto :goto_0

    :cond_1
    invoke-static {p3}, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->-$$Nest$fgetmIconMutedColor(Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;)Landroid/content/res/ColorStateList;

    move-result-object p3

    :goto_0
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 115
    iget-object p0, p0, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity$1;->this$0:Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;

    invoke-static {p0, p2}, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->-$$Nest$fputmVolumeLevel(Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    return-void
.end method
