.class public Lcom/android/settings/display/FoldLockBehaviorSettings;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SETTING_VALUES:Ljava/util/HashSet;


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mFoldGracePeriodProvider:Lcom/android/internal/foldables/FoldGracePeriodProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "selective_stay_awake_key"

    const-string v2, "sleep_on_fold_key"

    const-string v3, "stay_awake_on_fold_key"

    invoke-static {v3, v1, v2}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/settings/display/FoldLockBehaviorSettings;->SETTING_VALUES:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    new-instance v0, Lcom/android/internal/foldables/FoldGracePeriodProvider;

    invoke-direct {v0}, Lcom/android/internal/foldables/FoldGracePeriodProvider;-><init>()V

    iput-object v0, p0, Lcom/android/settings/display/FoldLockBehaviorSettings;->mFoldGracePeriodProvider:Lcom/android/internal/foldables/FoldGracePeriodProvider;

    return-void
.end method


# virtual methods
.method public final bindPreferenceExtra(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;)V
    .locals 0

    instance-of p0, p3, Lcom/android/settings/utils/CandidateInfoExtra;

    if-nez p0, :cond_0

    return-void

    :cond_0
    check-cast p3, Lcom/android/settings/utils/CandidateInfoExtra;

    iget-object p0, p3, Lcom/android/settings/utils/CandidateInfoExtra;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final getCandidates()Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/settings/utils/CandidateInfoExtra;

    const v2, 0x7f142d5a

    invoke-virtual {p0, v2}, Lcom/android/settings/display/FoldLockBehaviorSettings;->resourceToString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f142d59

    invoke-virtual {p0, v3}, Lcom/android/settings/display/FoldLockBehaviorSettings;->resourceToString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "stay_awake_on_fold_key"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings/utils/CandidateInfoExtra;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/settings/display/FoldLockBehaviorSettings;->mFoldGracePeriodProvider:Lcom/android/internal/foldables/FoldGracePeriodProvider;

    invoke-virtual {v1}, Lcom/android/internal/foldables/FoldGracePeriodProvider;->isEnabled()Z

    move-result v1

    const-string v2, "selective_stay_awake_key"

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/settings/utils/CandidateInfoExtra;

    const v3, 0x7f142d5c

    invoke-virtual {p0, v3}, Lcom/android/settings/display/FoldLockBehaviorSettings;->resourceToString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f142d5b

    invoke-virtual {p0, v4}, Lcom/android/settings/display/FoldLockBehaviorSettings;->resourceToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4, v2}, Lcom/android/settings/utils/CandidateInfoExtra;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/settings/utils/CandidateInfoExtra;

    const v3, 0x7f142a97

    invoke-virtual {p0, v3}, Lcom/android/settings/display/FoldLockBehaviorSettings;->resourceToString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f142a96

    invoke-virtual {p0, v4}, Lcom/android/settings/display/FoldLockBehaviorSettings;->resourceToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4, v2}, Lcom/android/settings/utils/CandidateInfoExtra;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance v1, Lcom/android/settings/utils/CandidateInfoExtra;

    const v2, 0x7f142c7a

    invoke-virtual {p0, v2}, Lcom/android/settings/display/FoldLockBehaviorSettings;->resourceToString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f142c79

    invoke-virtual {p0, v3}, Lcom/android/settings/display/FoldLockBehaviorSettings;->resourceToString(I)Ljava/lang/String;

    move-result-object p0

    const-string v3, "sleep_on_fold_key"

    invoke-direct {v1, v2, p0, v3}, Lcom/android/settings/utils/CandidateInfoExtra;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final getDefaultKey()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/android/settings/display/FoldLockBehaviorSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "fold_lock_behavior_setting"

    const/4 v1, -0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "selective_stay_awake_key"

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    sget-object v1, Lcom/android/settings/display/FoldLockBehaviorSettings;->SETTING_VALUES:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "FoldLockBehaviorSetting"

    const-string v1, "getDefaultKey: Invalid setting value, returning default setting value"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move-object v0, p0

    :goto_1
    return-object v0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x7f6

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1700a7

    return p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onAttach(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/display/FoldLockBehaviorSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/display/FoldLockBehaviorSettings;->getDefaultKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/display/FoldLockBehaviorSettings;->setIllustrationLottieAnimation(Ljava/lang/String;)V

    return-void
.end method

.method public final onSelectionPerformed(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/display/FoldLockBehaviorSettings;->getDefaultKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/display/FoldLockBehaviorSettings;->setIllustrationLottieAnimation(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->updateCandidates()V

    :cond_0
    return-void
.end method

.method public final resourceToString(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/display/FoldLockBehaviorSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final setDefaultKey(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/android/settings/display/FoldLockBehaviorSettings;->SETTING_VALUES:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "setDefaultKey: Can not set invalid key: "

    const-string v1, "FoldLockBehaviorSetting"

    invoke-static {v0, p1, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "selective_stay_awake_key"

    :cond_0
    iget-object p0, p0, Lcom/android/settings/display/FoldLockBehaviorSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "fold_lock_behavior_setting"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    const/4 p0, 0x1

    return p0
.end method

.method public final setIllustrationLottieAnimation(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/settings/widget/RadioButtonPickerFragment$IllustrationType;->LOTTIE_ANIMATION:Lcom/android/settings/widget/RadioButtonPickerFragment$IllustrationType;

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "selective_stay_awake_key"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v2, "sleep_on_fold_key"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "stay_awake_on_fold_key"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/display/FoldLockBehaviorSettings;->mFoldGracePeriodProvider:Lcom/android/internal/foldables/FoldGracePeriodProvider;

    invoke-virtual {p1}, Lcom/android/internal/foldables/FoldGracePeriodProvider;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f13002b

    iput p1, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mIllustrationId:I

    iput-object v0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mIllustrationType:Lcom/android/settings/widget/RadioButtonPickerFragment$IllustrationType;

    goto :goto_1

    :cond_3
    const p1, 0x7f13002c

    iput p1, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mIllustrationId:I

    iput-object v0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mIllustrationType:Lcom/android/settings/widget/RadioButtonPickerFragment$IllustrationType;

    goto :goto_1

    :pswitch_1
    const p1, 0x7f13002d

    iput p1, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mIllustrationId:I

    iput-object v0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mIllustrationType:Lcom/android/settings/widget/RadioButtonPickerFragment$IllustrationType;

    goto :goto_1

    :pswitch_2
    const p1, 0x7f13002e

    iput p1, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mIllustrationId:I

    iput-object v0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mIllustrationType:Lcom/android/settings/widget/RadioButtonPickerFragment$IllustrationType;

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f5e9c9f -> :sswitch_2
        -0x3834bde7 -> :sswitch_1
        -0x283fe57e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
