.class public final Landroidx/preference/SeekBarPreference$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic this$0:Landroidx/preference/SeekBarPreference;


# direct methods
.method public constructor <init>(Landroidx/preference/SeekBarPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/preference/SeekBarPreference$1;->this$0:Landroidx/preference/SeekBarPreference;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 1

    iget-object p0, p0, Landroidx/preference/SeekBarPreference$1;->this$0:Landroidx/preference/SeekBarPreference;

    if-eqz p3, :cond_1

    iget-boolean v0, p0, Landroidx/preference/SeekBarPreference;->mUpdatesContinuously:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/preference/SeekBarPreference;->mTrackingTouch:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p0, p1}, Landroidx/preference/SeekBarPreference;->access$000(Landroidx/preference/SeekBarPreference;Landroidx/appcompat/widget/SeslSeekBar;)V

    :cond_1
    iget-object p0, p0, Landroidx/preference/SeekBarPreference;->mOnSeekBarPreferenceChangeListener:Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V

    :cond_2
    return-void
.end method

.method public final onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 1

    const/4 v0, 0x1

    iget-object p0, p0, Landroidx/preference/SeekBarPreference$1;->this$0:Landroidx/preference/SeekBarPreference;

    iput-boolean v0, p0, Landroidx/preference/SeekBarPreference;->mTrackingTouch:Z

    iget-object p0, p0, Landroidx/preference/SeekBarPreference;->mOnSeekBarPreferenceChangeListener:Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V

    :cond_0
    return-void
.end method

.method public final onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 2

    iget-object p0, p0, Landroidx/preference/SeekBarPreference$1;->this$0:Landroidx/preference/SeekBarPreference;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/preference/SeekBarPreference;->mTrackingTouch:Z

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Landroidx/preference/SeekBarPreference;->mMin:I

    add-int/2addr v0, v1

    iget v1, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValue:I

    if-eq v0, v1, :cond_0

    invoke-static {p0, p1}, Landroidx/preference/SeekBarPreference;->access$000(Landroidx/preference/SeekBarPreference;Landroidx/appcompat/widget/SeslSeekBar;)V

    :cond_0
    iget-object p0, p0, Landroidx/preference/SeekBarPreference;->mOnSeekBarPreferenceChangeListener:Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V

    :cond_1
    return-void
.end method
