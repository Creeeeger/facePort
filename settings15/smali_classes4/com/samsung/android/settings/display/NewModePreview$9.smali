.class public final Lcom/samsung/android/settings/display/NewModePreview$9;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/display/NewModePreview;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/display/NewModePreview;Landroid/os/Handler;I)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/settings/display/NewModePreview$9;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$9;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    iget p1, p0, Lcom/samsung/android/settings/display/NewModePreview$9;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$9;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    iget-object p1, p1, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string/jumbo v2, "sec_display_preset_index"

    invoke-static {p1, v2, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview$9;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    iget-object v0, v0, Lcom/samsung/android/settings/display/NewModePreview;->mPresetSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    rsub-int/lit8 p1, p1, 0x4

    if-eq v0, p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$9;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    iget-object p1, p1, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview$9;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a091b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview$9;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/display/NewModePreview;->createScreenModeView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview$9;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    sget-object p1, Lcom/samsung/android/settings/display/NewModePreview;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NewModePreview;->setEnabledExclusiveSettings()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview$9;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    sget-object p1, Lcom/samsung/android/settings/display/NewModePreview;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NewModePreview;->setEnabledExclusiveSettings()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
