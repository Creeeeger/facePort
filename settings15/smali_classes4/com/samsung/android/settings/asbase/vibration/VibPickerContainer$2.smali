.class public final Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer$2;->this$0:Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;

    return-void
.end method


# virtual methods
.method public final onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer$2;->this$0:Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget v1, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->position:I

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p0

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object p0

    iget p1, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->position:I

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->updateSelectedItemOtherSim()V

    return-void
.end method

.method public final onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2

    iget p1, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->position:I

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer$2;->this$0:Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mPickerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;

    iget-object v1, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V

    :cond_0
    iget-object v0, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mPickerList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibIntensitySeekBar:Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->onPause()V

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibIntensitySeekBar:Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->onResume()V

    :cond_2
    return-void
.end method
