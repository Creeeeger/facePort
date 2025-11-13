.class public final Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder$1;->this$1:Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder$1;->this$1:Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;

    iget-object v0, p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;->mRadioTextView:Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v0

    iget-object p1, p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;->this$0:Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->getItem(I)Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder$1;->this$1:Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;

    iget-object v1, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;->this$0:Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v0

    iput v0, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->mSelectedItemPosition:I

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder$1;->this$1:Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;

    iget-object v0, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;->mRadioTextView:Landroid/widget/CheckedTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;->mCategory:Ljava/lang/String;

    const-string v2, "Custom"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder$1;->this$1:Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;

    iget-object v0, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;->this$0:Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;

    iget v3, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->mSelectedItemPosition:I

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder$1;->this$1:Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;->this$0:Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->mListener:Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity$2;

    if-eqz v0, :cond_12

    iget p0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->mSelectedItemPosition:I

    iget-object v0, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity$2;->this$0:Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;

    iget v3, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mCheckedPos:I

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eq v3, v5, :cond_4

    if-eq v3, p0, :cond_4

    iget-object v6, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v6, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v7, 0x7f0a0c3a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckedTextView;

    if-eqz v6, :cond_1

    invoke-virtual {v6, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_1
    iget-object v6, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibPickerListAdapter:Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;

    iget v7, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mCheckedPos:I

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->getItem(I)Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;

    move-result-object v6

    iget-object v7, v6, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;->mCategory:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v3, 0x7f0a0c87

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iget-object v3, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;

    iget-boolean v3, v3, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mIsFromContact:Z

    if-nez v3, :cond_2

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_2
    iget-object v3, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mSelectedItemOtherSim:Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;

    if-eqz v3, :cond_4

    iget v6, v6, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;->mPattern:I

    iget v3, v3, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;->mPattern:I

    if-ne v3, v6, :cond_4

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v2, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibPickerListAdapter:Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;

    if-eqz v2, :cond_4

    iget v3, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mCheckedPos:I

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_4
    :goto_0
    iput p0, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mCheckedPos:I

    iget-object p0, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibPickerListAdapter:Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;

    if-eqz p0, :cond_12

    iget-object p0, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibrator:Landroid/os/Vibrator;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/os/Vibrator;->cancel()V

    :cond_5
    iget-object p0, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mRingtone:Landroid/media/Ringtone;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/media/Ringtone;->stop()V

    :cond_6
    sget-boolean p0, Lcom/samsung/android/settings/asbase/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    iget p1, p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;->mPattern:I

    const-string v2, "VibPickerActivity"

    const v3, 0xc350

    if-eqz p0, :cond_b

    iget-object v6, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;

    iget-boolean v6, v6, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mHasDefaultItem:Z

    if-eqz v6, :cond_7

    iget v6, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mCheckedPos:I

    iget v7, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mStaticItemCount:I

    sub-int/2addr v6, v7

    if-ne v6, v5, :cond_7

    iget-object v6, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mResolver:Landroid/content/ContentResolver;

    iget-object v7, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mSyncWithHapticDbName:Ljava/lang/String;

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v1, :cond_7

    iget-boolean v6, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mHasHapticChannels:Z

    if-nez v6, :cond_8

    :cond_7
    if-ne p1, v3, :cond_b

    :cond_8
    invoke-static {}, Landroid/media/AudioManager;->isHapticPlaybackSupported()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mSoundUri:Landroid/net/Uri;

    if-nez p1, :cond_9

    goto :goto_1

    :cond_9
    iget-object v6, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mContext:Landroid/content/Context;

    invoke-static {v6, v4, p1}, Landroid/media/RingtoneManager;->semGetRingtone(Landroid/content/Context;ILandroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mRingtone:Landroid/media/Ringtone;

    if-eqz p1, :cond_c

    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget-object v6, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;

    iget-object v6, v6, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mVibType:Lcom/samsung/android/settings/asbase/vibration/IVibPickerType;

    invoke-interface {v6}, Lcom/samsung/android/settings/asbase/vibration/IVibPickerType;->getAudioUsage()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    iget-boolean v6, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mHasHapticChannels:Z

    xor-int/2addr v6, v1

    invoke-virtual {p1, v6}, Landroid/media/AudioAttributes$Builder;->setHapticChannelsMuted(Z)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    iget-object v6, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v6, p1}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    iget-object p1, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mRingtone:Landroid/media/Ringtone;

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/media/Ringtone;->setVolume(F)V

    iget-object p1, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {p1}, Landroid/media/Ringtone;->play()V

    goto :goto_1

    :cond_a
    iget-object p1, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mResolver:Landroid/content/ContentResolver;

    iget-object v6, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mSepIndexDbName:Ljava/lang/String;

    iget v7, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mDefaultPatternSepIndex:I

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const-string v6, "HapticPlayback is not supported"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v6, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;

    iget-object v6, v6, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mVibType:Lcom/samsung/android/settings/asbase/vibration/IVibPickerType;

    invoke-interface {v6}, Lcom/samsung/android/settings/asbase/vibration/IVibPickerType;->getRepeat()I

    move-result v6

    invoke-static {p1, v6}, Landroid/os/VibrationEffect;->semCreateHaptic(II)Landroid/os/VibrationEffect;

    move-result-object p1

    new-instance v6, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v6}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    iget-object v7, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;

    iget-object v7, v7, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mVibType:Lcom/samsung/android/settings/asbase/vibration/IVibPickerType;

    invoke-interface {v7}, Lcom/samsung/android/settings/asbase/vibration/IVibPickerType;->getVibrationUsage()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v6

    iget-object v7, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v7, p1, v6}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V

    :cond_c
    :goto_1
    iget-object p1, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;

    iget-boolean p1, p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mHasDefaultItem:Z

    if-eqz p1, :cond_d

    iget p1, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mCheckedPos:I

    iget v6, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mStaticItemCount:I

    sub-int/2addr p1, v6

    if-ne p1, v5, :cond_d

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->setResultBySelection(I)V

    goto :goto_3

    :cond_d
    iget-object p1, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibPickerListAdapter:Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;

    iget v5, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mCheckedPos:I

    invoke-virtual {p1, v5}, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->getItem(I)Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;

    move-result-object p1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;

    iget-object v6, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;

    iget-boolean v6, v6, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mIsSecondSim:Z

    iget-object v7, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibPickerListAdapter:Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;

    iget v8, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mCheckedPos:I

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->getItem(I)Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;

    move-result-object v7

    invoke-virtual {v5}, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->isMultiSimEnabled()Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, v5, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mSelectedItemList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_e

    iget-object v5, v5, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mSelectedItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, v6, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_e
    iget p1, p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;->mPattern:I

    iget-object v5, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;

    iget-boolean v5, v5, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mIsFromContact:Z

    if-eqz v5, :cond_f

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->setResultBySelection(I)V

    goto :goto_2

    :cond_f
    if-eqz p0, :cond_11

    if-ne p1, v3, :cond_10

    iget-object p0, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mResolver:Landroid/content/ContentResolver;

    iget-object v0, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mSyncWithHapticDbName:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_10
    iget-object p0, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mSyncWithHapticDbName:Ljava/lang/String;

    invoke-static {p0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mResolver:Landroid/content/ContentResolver;

    iget-object v0, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mSepIndexDbName:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_11
    iget-object p0, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mResolver:Landroid/content/ContentResolver;

    iget-object v0, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mSepIndexDbName:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_2
    const-string p0, "Current selected pattern index : "

    invoke-static {p1, p0, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_3
    return-void
.end method
