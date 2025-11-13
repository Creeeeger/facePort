.class public Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FingerprintSettingsMultiSelect.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field checkBoxRunnable:Ljava/lang/Runnable;

.field private mActionBar:Landroidx/appcompat/app/ActionBar;

.field private mCheckBoxRelativeLayout:Landroid/widget/RelativeLayout;

.field private mDeleteAllDialog:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;

.field private mDeleteDialog:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;

.field private mEnrolledFingerCount:I

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private final mHandler:Landroid/os/Handler;

.field private mIsAllFingerprintRemove:Z

.field private mIsInMultiWindowMode:Z

.field private mIsSelectedIDSaved:Z

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation
.end field

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOriginalContentStart:I

.field private mRemoveButtonLayout:Landroid/widget/RelativeLayout;

.field private mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

.field private mSelectAllCheckbox:Landroid/widget/CheckBox;

.field private mSelectedCount:I

.field private mSelectedFingerprintTextView:Landroid/widget/TextView;

.field private mSelectedId:I

.field private mSelectedIdArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectionChecklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mUserId:I


# direct methods
.method public static synthetic $r8$lambda$8Lk9NLmHEoC5fI4AAreb5nuZt34(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->lambda$setBottomButtonForRemove$0(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$9wDZxe_qtleogU5SmTsBNNlHEvo(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$c2YfraOeFyFYP8dmehf7T00o9GE(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->lambda$createActionbarLayout$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iASSbUligPONOMHvxrbR5JsXMsA(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->lambda$createActionbarLayout$1(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmFingerprintManager(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsAllFingerprintRemove(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mIsAllFingerprintRemove:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectedCount(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectedCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectionChecklist(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDeleteAllDialog(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mDeleteAllDialog:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDeleteDialog(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mDeleteDialog:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsAllFingerprintRemove(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mIsAllFingerprintRemove:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckFinishDeleteOperation(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;Landroid/hardware/fingerprint/Fingerprint;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->checkFinishDeleteOperation(Landroid/hardware/fingerprint/Fingerprint;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdeleteFingerprintOperation(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;Z)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->deleteFingerprintOperation(Z)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdeleteFingerprintSequentially(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->deleteFingerprintSequentially()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfinishSelectMode(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->finishSelectMode()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetNumOfCheckedList(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->getNumOfCheckedList()I

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 81
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    .line 91
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mItems:Ljava/util/List;

    .line 93
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 95
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    .line 96
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectedFingerprintTextView:Landroid/widget/TextView;

    .line 97
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mCheckBoxRelativeLayout:Landroid/widget/RelativeLayout;

    .line 99
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mDeleteAllDialog:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;

    .line 100
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mDeleteDialog:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;

    .line 103
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectedIdArray:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 104
    iput v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectedCount:I

    .line 105
    iput v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mEnrolledFingerCount:I

    const/4 v1, -0x1

    .line 108
    iput v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mOriginalContentStart:I

    .line 110
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mIsAllFingerprintRemove:Z

    .line 111
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mIsInMultiWindowMode:Z

    .line 112
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mIsSelectedIDSaved:Z

    .line 114
    new-instance v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$1;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mHandler:Landroid/os/Handler;

    .line 437
    new-instance v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->checkBoxRunnable:Ljava/lang/Runnable;

    .line 712
    new-instance v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$3;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    return-void
.end method

.method private addFingerprintItemPreferences(Landroidx/preference/PreferenceGroup;)V
    .locals 8

    .line 216
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mItems:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 217
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mItems:Ljava/util/List;

    .line 220
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mUserId:I

    invoke-virtual {p1, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mItems:Ljava/util/List;

    const-string v1, "Finger "

    const-string v2, "FpstFingerprintSettingsMultiSelect"

    const/4 v3, 0x0

    if-eqz p1, :cond_8

    .line 223
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mEnrolledFingerCount:I

    .line 225
    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isJdmModel()Z

    move-result p1

    if-nez p1, :cond_2

    move p1, v3

    .line 227
    :goto_0
    iget v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mEnrolledFingerCount:I

    if-ge p1, v4, :cond_2

    move v4, p1

    :goto_1
    if-lez v4, :cond_1

    .line 229
    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mItems:Ljava/util/List;

    add-int/lit8 v6, v4, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v5}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v5

    iget-object v7, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mItems:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v7}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v7

    if-le v5, v7, :cond_1

    .line 231
    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mItems:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/fingerprint/Fingerprint;

    invoke-interface {v5, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 232
    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mItems:Ljava/util/List;

    add-int/lit8 v6, v4, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 238
    :cond_2
    iget p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mEnrolledFingerCount:I

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq p1, v4, :cond_3

    const-string p1, "addFingerprintItemPreferences : Sort Error"

    .line 239
    invoke-static {v2, p1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mItems:Ljava/util/List;

    .line 241
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mItems:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 243
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mEnrolledFingerCount:I

    .line 248
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addFingerprintItemPreferences : mEnrolledFingerCount["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mEnrolledFingerCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mItems:Ljava/util/List;

    if-eqz p1, :cond_7

    move p1, v3

    .line 251
    :goto_2
    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mEnrolledFingerCount:I

    if-ge p1, v0, :cond_4

    .line 252
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    .line 253
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addFingerprintItemPreferences : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    invoke-static {v2, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    move p1, v3

    .line 257
    :goto_3
    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mEnrolledFingerCount:I

    if-ge p1, v0, :cond_9

    .line 258
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    .line 259
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/CheckBoxPreference;

    if-eqz v4, :cond_5

    .line 261
    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->genKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 264
    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 265
    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 266
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mIsSelectedIDSaved:Z

    if-nez v0, :cond_6

    .line 269
    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectedId:I

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mItems:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v4

    if-ne v0, v4, :cond_6

    .line 270
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectedIdArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 275
    :cond_7
    iput v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mEnrolledFingerCount:I

    const-string p1, "addFingerprintItemPreferences : mFingerprintManager.getEnrolledFingerprints() return null after sorting"

    .line 276
    invoke-static {v2, p1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 279
    :cond_8
    iput v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mEnrolledFingerCount:I

    const-string p1, "addFingerprintItemPreferences : mFingerprintManager.getEnrolledFingerprints() return null before sorting"

    .line 280
    invoke-static {v2, p1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_9
    :goto_4
    iget p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mEnrolledFingerCount:I

    :goto_5
    const/4 v0, 0x4

    if-ge p1, v0, :cond_b

    .line 284
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_a

    .line 286
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateFingerList [Select] : Remove CheckBoxPreference, key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_a
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_b
    return-void
.end method

.method private backToFingerList()V
    .locals 0

    .line 524
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method private cancelAndSessionEnd()V
    .locals 3

    const-string v0, "FpstFingerprintSettingsMultiSelect"

    const-string v1, "Cancel session"

    .line 474
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "reason"

    const-string v2, "cancelsession"

    .line 476
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 477
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setResult(ILandroid/content/Intent;)V

    .line 479
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->closeAllDialog()V

    .line 481
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method

.method private checkAllToggle(Z)V
    .locals 2

    .line 430
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    .line 431
    invoke-virtual {v1, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 434
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->updateActionbarState()V

    return-void
.end method

.method private checkFinishDeleteOperation(Landroid/hardware/fingerprint/Fingerprint;)Z
    .locals 7

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    move v4, v2

    .line 745
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 746
    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 747
    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mItems:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v5}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v5

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v6

    if-ne v5, v6, :cond_0

    move v3, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 751
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkFinishDeleteOperation remainingNum index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", remainingNum: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "FpstFingerprintSettingsMultiSelect"

    invoke-static {v6, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eq v3, v0, :cond_3

    .line 757
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mItems:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 758
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    if-nez v4, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method private clearSelectionChecklist()V
    .locals 3

    .line 517
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    const/4 v2, 0x0

    .line 518
    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 520
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private closeAllDialog()V
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mDeleteAllDialog:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;

    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->cancelDeleteDialog()V

    .line 491
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mDeleteDialog:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;

    if-eqz p0, :cond_1

    .line 492
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->cancelDeleteDialog()V

    :cond_1
    return-void
.end method

.method private createActionbarLayout()V
    .locals 5

    .line 385
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mActionBar:Landroidx/appcompat/app/ActionBar;

    .line 386
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->sec_fingerprint_selectionutils_actionbar_tablet:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 387
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mActionBar:Landroidx/appcompat/app/ActionBar;

    if-eqz v1, :cond_3

    const/16 v2, 0x10

    .line 388
    invoke-virtual {v1, v2, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(II)V

    .line 389
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mActionBar:Landroidx/appcompat/app/ActionBar;

    new-instance v3, Landroidx/appcompat/app/ActionBar$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4, v2}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v0, v3}, Landroidx/appcompat/app/ActionBar;->setCustomView(Landroid/view/View;Landroidx/appcompat/app/ActionBar$LayoutParams;)V

    .line 391
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mActionBar:Landroidx/appcompat/app/ActionBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 392
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 394
    sget v1, Lcom/android/settings/R$id;->number_selected_fingerprint_all:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v3, 0x1

    .line 395
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 396
    new-instance v3, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    sget v1, Lcom/android/settings/R$id;->toggle_selection_fingerprint_check:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    .line 401
    new-instance v3, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;)V

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    sget v1, Lcom/android/settings/R$id;->number_selected_fingerprint_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectedFingerprintTextView:Landroid/widget/TextView;

    .line 403
    sget v1, Lcom/android/settings/R$id;->fingerprint_select_all_wrapper:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mCheckBoxRelativeLayout:Landroid/widget/RelativeLayout;

    .line 405
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 407
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/settings/R$dimen;->sec_fingerprint_actionbar_insets_marginleft:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/Toolbar;->setContentInsetsAbsolute(II)V

    goto :goto_0

    .line 410
    :cond_0
    invoke-virtual {v0, v2, v2}, Landroidx/appcompat/widget/Toolbar;->setContentInsetsAbsolute(II)V

    .line 413
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 414
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mCheckBoxRelativeLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isWinnerProduct()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 415
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mCheckBoxRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 416
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->sec_fingerprint_multi_selection_actionbar_title_paddingStart_land:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 417
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mCheckBoxRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 421
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->sec_fingerprint_actionbar_all_checkbox_margintop_port:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 422
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_3
    const-string p0, "FpstFingerprintSettingsMultiSelect"

    const-string v0, "updateSelectMenu null!!"

    .line 425
    invoke-static {p0, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method private createPreferenceHierarchy()Landroidx/preference/PreferenceScreen;
    .locals 2

    .line 205
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 209
    :cond_0
    sget v1, Lcom/android/settings/R$xml;->sec_fingerprint_select_list:I

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 210
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->addFingerprintItemPreferences(Landroidx/preference/PreferenceGroup;)V

    return-object v0
.end method

.method private deleteAllFingerPrint()V
    .locals 11

    .line 765
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->getNumOfCheckedList()I

    move-result v0

    .line 766
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteAllFingerPrint : selectedCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FpstFingerprintSettingsMultiSelect"

    invoke-static {v2, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    sget v1, Lcom/android/settings/R$string;->sec_fingerprint_delete_n_fingerprints_title:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0, v1, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 772
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v7, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mUserId:I

    invoke-static {v4, v6, v7}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintUnlockEnabled(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v4

    .line 773
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->getFingerprintSupportingFeatures()Z

    move-result v6

    .line 775
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mUserId:I

    invoke-static {v7, v8}, Lcom/samsung/android/settings/knox/KnoxUtils;->isKnoxOrganizationOwnedDevice(Landroid/content/Context;I)Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, -0x1

    if-eqz v7, :cond_1

    .line 776
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    iget v10, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mUserId:I

    invoke-static {v7, v10}, Lcom/samsung/android/settings/knox/KnoxUtils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v4, :cond_1

    .line 777
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_7

    if-ne v0, v2, :cond_0

    .line 779
    sget v0, Lcom/android/settings/R$string;->knox_fp_delete_1_with_warning_popup_message_body:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 782
    :cond_0
    sget v0, Lcom/android/settings/R$string;->knox_fp_delete_all_with_warning_popup_message_body:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v3, v0

    .line 784
    sget v0, Lcom/android/settings/R$string;->knox_fp_delete_with_warning_popup_message_title:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 785
    sget v9, Lcom/android/settings/R$string;->knox_fp_cant_delete_popup_positive_button:I

    goto :goto_3

    .line 788
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 789
    sget v0, Lcom/android/settings/R$string;->sec_fingerprint_delete_case3_fingerprints_msg_chn:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_2
    if-nez v4, :cond_5

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    if-ne v0, v2, :cond_4

    .line 801
    sget v0, Lcom/android/settings/R$string;->sec_fingerprint_delete_1_fingerprint_title:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_4
    new-array v2, v2, [Ljava/lang/Object;

    .line 803
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_5
    :goto_1
    if-ne v0, v2, :cond_6

    .line 793
    sget v0, Lcom/android/settings/R$string;->sec_fingerprint_delete_1_fingerprint_title_feature:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 795
    :cond_6
    sget v0, Lcom/android/settings/R$string;->sec_fingerprint_delete_all_fingerprints_title:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v8, v0

    .line 797
    sget v0, Lcom/android/settings/R$string;->sec_fingerprint_delete_case3_fingerprints_msg:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 809
    :cond_7
    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x2025

    invoke-static {v0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;I)V

    .line 811
    new-instance v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;

    new-instance v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$4;

    invoke-direct {v1, p0, v4, v6}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$4;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;ZZ)V

    invoke-direct {v0, v8, v3, v9, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mDeleteAllDialog:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;

    .line 845
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v1, "fpstDeleteAllDialog"

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private deleteFingerprintOperation(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 853
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->resetFingerprintSupportingFeatures()V

    .line 856
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->deleteFingerprintSequentially()V

    const/4 p0, 0x1

    return p0
.end method

.method private deleteFingerprintSequentially()V
    .locals 4

    .line 691
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->getNumOfCheckedList()I

    move-result v0

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 695
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 696
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 698
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    .line 699
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteFingerprintSequencially delete index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", id: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FpstFingerprintSettingsMultiSelect"

    invoke-static {v2, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->removeFingerPrint(Landroid/hardware/fingerprint/Fingerprint;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private disableContentsStart()V
    .locals 2

    .line 325
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x10201bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 328
    iget p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mOriginalContentStart:I

    const/4 v1, -0x1

    if-eq p0, v1, :cond_1

    .line 329
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetEnd()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroidx/appcompat/widget/Toolbar;->setContentInsetsRelative(II)V

    goto :goto_0

    :cond_0
    const-string p0, "FpstFingerprintSettingsMultiSelect"

    const-string v0, "setContentsStart mToolbar Null"

    .line 332
    invoke-static {p0, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private enableContentsStart()V
    .locals 2

    .line 314
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x10201bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mOriginalContentStart:I

    const/16 v1, 0x10

    .line 318
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->convertDpToPixel(ILandroid/content/Context;)I

    move-result p0

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetEnd()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroidx/appcompat/widget/Toolbar;->setContentInsetsRelative(II)V

    goto :goto_0

    :cond_0
    const-string p0, "FpstFingerprintSettingsMultiSelect"

    const-string v0, "setContentsStart mToolbar Null"

    .line 320
    invoke-static {p0, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private finishSelectMode()V
    .locals 0

    .line 512
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->clearSelectionChecklist()V

    .line 513
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->backToFingerList()V

    return-void
.end method

.method private static genKey(I)Ljava/lang/String;
    .locals 2

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_fingerprint_item_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getFingerprintSupportingFeatures()Z
    .locals 4

    .line 863
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_secret_box"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 865
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 866
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "fingerprint_webpass"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 867
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "fingerprint_samsungaccount_confirmed"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    return v2
.end method

.method private getNumOfCheckedList()I
    .locals 2

    .line 576
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 578
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    .line 579
    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private synthetic lambda$createActionbarLayout$1(Landroid/view/View;)V
    .locals 1

    .line 397
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 398
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->checkAllToggle(Z)V

    return-void
.end method

.method private synthetic lambda$createActionbarLayout$2(Landroid/view/View;)V
    .locals 0

    .line 401
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->checkAllToggle(Z)V

    return-void
.end method

.method private synthetic lambda$new$3()V
    .locals 4

    .line 438
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectedIdArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 439
    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mEnrolledFingerCount:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v1, v0, :cond_0

    .line 440
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->checkAllToggle(Z)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 442
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectedIdArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 443
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectedIdArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 444
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->updateActionbarState()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 447
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectedIdArray:Ljava/util/ArrayList;

    :cond_2
    return-void
.end method

.method private synthetic lambda$setBottomButtonForRemove$0(Landroid/view/MenuItem;)Z
    .locals 2

    .line 193
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x2019

    const/16 v1, 0x2024

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;II)V

    .line 194
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->deleteFingerprint()Z

    const/4 p0, 0x0

    return p0
.end method

.method private removeFingerPrint(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 3

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteFingerPrint : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FpstFingerprintSettingsMultiSelect"

    .line 707
    invoke-static {v1, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mUserId:I

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    invoke-virtual {v0, p1, v1, p0}, Landroid/hardware/fingerprint/FingerprintManager;->remove(Landroid/hardware/fingerprint/Fingerprint;ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    return-void
.end method

.method private resetFingerprintSupportingFeatures()V
    .locals 3

    .line 873
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_secret_box"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 875
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_webpass"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 877
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_fingerIndex"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 879
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_used_samsungaccount"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 881
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_samsungaccount_confirmed"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 883
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->setFingerprintScreenLockDisable()V

    return-void
.end method

.method private setFingerprintScreenLockDisable()V
    .locals 2

    const-string v0, "FpstFingerprintSettingsMultiSelect"

    const-string v1, "setFingerprintScreenLockDisable"

    .line 887
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mUserId:I

    invoke-static {v0, v1, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->removeFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    return-void
.end method

.method private showAlertMessage(Z)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 899
    sget p1, Lcom/android/settings/R$string;->knox_fp_cant_delete_popup_message_body:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 900
    sget v0, Lcom/android/settings/R$string;->knox_fp_cant_delete_popup_message_title:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 902
    :cond_0
    sget p1, Lcom/android/settings/R$string;->knox_fp_cant_delete_all_popup_message_body:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 903
    sget v0, Lcom/android/settings/R$string;->knox_fp_cant_delete_all_popup_message_title:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 906
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 907
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 908
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x104000a

    const/4 v0, 0x0

    .line 909
    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 910
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    const/4 p0, 0x0

    return p0
.end method

.method private updateActionbarState()V
    .locals 7

    .line 592
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->getNumOfCheckedList()I

    move-result v0

    .line 594
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mActionBar:Landroidx/appcompat/app/ActionBar;

    const-string v2, "FpstFingerprintSettingsMultiSelect"

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroidx/appcompat/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 599
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateActionbarState checked: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    .line 602
    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectedFingerprintTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$string;->sec_fingerprint_selected_count:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 604
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectedFingerprintTextView:Landroid/widget/TextView;

    sget v4, Lcom/android/settings/R$string;->sec_fingerprint_select_fingerprints:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 607
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 608
    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 610
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    goto :goto_2

    .line 621
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mRemoveButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2

    .line 615
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mRemoveButtonLayout:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_2
    return-void

    :cond_5
    :goto_3
    const-string p0, "updateActionbarState: no custom actionbar"

    .line 595
    invoke-static {v2, p0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updatePreferences()V
    .locals 0

    .line 201
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->createPreferenceHierarchy()Landroidx/preference/PreferenceScreen;

    return-void
.end method


# virtual methods
.method public deleteFingerprint()Z
    .locals 5

    .line 629
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mDeleteAllDialog:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mDeleteDialog:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 632
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->getNumOfCheckedList()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectedCount:I

    .line 634
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_3

    .line 636
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mUserId:I

    invoke-static {v0, v2, v4}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintUnlockEnabled(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v0

    .line 637
    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mUserId:I

    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 638
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mUserId:I

    invoke-static {v2, v4}, Lcom/samsung/android/settings/knox/KnoxUtils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 639
    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectedCount:I

    if-ne v0, v3, :cond_1

    move v1, v3

    :cond_1
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->showAlertMessage(Z)Z

    return v3

    .line 644
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->deleteAllFingerPrint()V

    goto :goto_1

    .line 646
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0x2025

    invoke-static {v0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;I)V

    .line 648
    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectedCount:I

    if-ne v0, v3, :cond_4

    .line 649
    sget v0, Lcom/android/settings/R$string;->sec_fingerprint_delete_case1_1_fingerprint_msg:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 651
    :cond_4
    sget v2, Lcom/android/settings/R$string;->sec_fingerprint_delete_case1_n_fingerprints_msg:I

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-virtual {p0, v2, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 654
    :goto_0
    new-instance v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;

    new-instance v2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$2;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;)V

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;-><init>(Ljava/lang/String;Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;)V

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mDeleteDialog:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;

    .line 684
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "fpstDeleteSomeDialog"

    invoke-virtual {v1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_1
    return v3

    :cond_5
    :goto_2
    return v1
.end method

.method protected finishFingerprintSettings(ILandroid/content/Intent;)V
    .locals 2

    const-string v0, "FpstFingerprintSettingsMultiSelect"

    const-string v1, "finishFingerprintSettings()"

    .line 497
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->setResult(ILandroid/content/Intent;)V

    .line 500
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method public getHelpResource()I
    .locals 0

    .line 529
    sget p0, Lcom/android/settings/R$string;->help_url_fingerprint:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2019

    return p0
.end method

.method public isHomeButtonEnabled(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 538
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "FpstFingerprintSettingsMultiSelect"

    const-string v1, "=====onConfigurationChanged"

    .line 539
    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->createActionbarLayout()V

    .line 541
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->updateActionbarState()V

    .line 542
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 543
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mCheckBoxRelativeLayout:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isWinnerProduct()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 544
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mCheckBoxRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 545
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->sec_fingerprint_multi_selection_actionbar_title_paddingStart_land:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v1, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v2, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v3, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 546
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mCheckBoxRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 549
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_2

    .line 550
    invoke-virtual {p1}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 551
    iget v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->sec_fingerprint_actionbar_all_checkbox_margintop_port:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 552
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 555
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_2

    .line 556
    invoke-virtual {p1}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 557
    iget v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->sec_fingerprint_actionbar_all_checkbox_margintop_port:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 558
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 141
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "FpstFingerprintSettingsMultiSelect"

    const-string v1, "onCreate"

    .line 142
    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->bio_fingerprint_sanner_title:I

    invoke-static {v1, v2, v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 149
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 151
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isInMultiWindow(Landroid/app/Activity;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mIsInMultiWindowMode:Z

    .line 153
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectedIdArray:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    const-string v2, "key_select_fingerprint"

    .line 155
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectedIdArray:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 156
    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mIsSelectedIDSaved:Z

    :cond_1
    if-eqz v1, :cond_2

    .line 159
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mUserId:I

    const-string p1, "selected_id"

    .line 160
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 161
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectedId:I

    .line 162
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate selectedIndex: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectedId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    const-string v0, "fingerprint"

    .line 167
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 168
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 170
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    .line 171
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->updatePreferences()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    const-string v0, "FpstFingerprintSettingsMultiSelect"

    const-string v1, "onCreateOptionsMenu"

    .line 372
    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 375
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->createActionbarLayout()V

    .line 377
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectedIdArray:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_0

    .line 378
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->checkBoxRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 380
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->updateActionbarState()V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 505
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    .line 506
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->disableContentsStart()V

    .line 507
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->checkBoxRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string p0, "FpstFingerprintSettingsMultiSelect"

    const-string v0, "onDestroy"

    .line 508
    invoke-static {p0, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    .line 921
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    .line 922
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isInMultiWindow(Landroid/app/Activity;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mIsInMultiWindowMode:Z

    .line 923
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onMultiWindowModeChanged: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mIsInMultiWindowMode:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FpstFingerprintSettingsMultiSelect"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 926
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->cancelAndSessionEnd()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 459
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    const-string v0, "FpstFingerprintSettingsMultiSelect"

    const-string v1, "onPause"

    .line 460
    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mIsInMultiWindowMode:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isInMultiWindow(Landroid/app/Activity;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 463
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_fingerprint_doesnt_support_multi_window_text:I

    .line 464
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 463
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 465
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 468
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    .line 469
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->cancelAndSessionEnd()V

    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 565
    instance-of v0, p1, Landroidx/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    .line 566
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    .line 569
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->updateActionbarState()V

    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 1

    .line 453
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string p0, "FpstFingerprintSettingsMultiSelect"

    const-string v0, "onResume"

    .line 454
    invoke-static {p0, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 176
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 178
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 179
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "key_select_fingerprint"

    .line 183
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "FpstFingerprintSettingsMultiSelect"

    const-string v1, "onViewCreated"

    .line 298
    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->setBottomButtonForRemove()V

    .line 302
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 303
    instance-of v1, v0, Lcom/android/settings/core/SettingsBaseActivity;

    if-eqz v1, :cond_0

    .line 304
    check-cast v0, Lcom/android/settings/core/SettingsBaseActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->disableExtendedAppBar(Z)V

    .line 307
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->enableContentsStart()V

    .line 309
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 310
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->setDivider()V

    return-void
.end method

.method public setBottomButtonForRemove()V
    .locals 4

    .line 187
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 188
    sget v1, Lcom/android/settings/R$id;->button_bar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mRemoveButtonLayout:Landroid/widget/RelativeLayout;

    const-string v1, "layout_inflater"

    .line 189
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 190
    sget v1, Lcom/android/settings/R$layout;->sec_biometrics_bottom_navigation_remove_layout:I

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mRemoveButtonLayout:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 192
    new-instance v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V

    .line 197
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mRemoveButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setDivider()V
    .locals 10

    .line 338
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 339
    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v0, 0x0

    .line 343
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroidx/preference/R$styleable;->PreferenceFragment:[I

    .line 345
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Landroidx/preference/R$attr;->preferenceFragmentStyle:I

    const v7, 0x1010506

    invoke-static {v5, v6, v7}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v5

    .line 343
    invoke-virtual {v3, v0, v4, v5, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 348
    sget v1, Landroidx/preference/R$styleable;->PreferenceFragment_android_divider:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 349
    sget v1, Landroidx/preference/R$styleable;->PreferenceFragment_android_dividerHeight:I

    const/4 v9, -0x1

    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    if-nez v2, :cond_1

    .line 353
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/android/settings/R$dimen;->sec_fingerprint_checkbox_width_for_divider_inset:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_1

    .line 355
    :cond_1
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/android/settings/R$dimen;->sec_fingerprint_checkbox_width_for_divider_inset:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 357
    :goto_1
    invoke-super {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    if-eq v1, v9, :cond_2

    .line 359
    invoke-super {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->setDividerHeight(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 362
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 365
    :cond_2
    :goto_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    return-void

    :goto_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 367
    :cond_4
    throw p0
.end method
