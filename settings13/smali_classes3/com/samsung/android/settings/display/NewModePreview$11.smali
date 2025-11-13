.class Lcom/samsung/android/settings/display/NewModePreview$11;
.super Landroid/database/ContentObserver;
.source "NewModePreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/NewModePreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/NewModePreview;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/NewModePreview;Landroid/os/Handler;)V
    .locals 0

    .line 976
    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$11;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 979
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$11;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p1}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "sec_display_preset_index"

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    .line 980
    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview$11;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {v0}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmPresetSeekBar(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    rsub-int/lit8 p1, p1, 0x4

    if-eq v0, p1, :cond_0

    .line 981
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$11;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p1}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 982
    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview$11;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->main_content:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 983
    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview$11;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p0, p1, v0}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$mcreateScreenModeView(Lcom/samsung/android/settings/display/NewModePreview;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    :cond_0
    return-void
.end method
