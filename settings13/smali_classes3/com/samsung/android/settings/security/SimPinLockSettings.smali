.class public Lcom/samsung/android/settings/security/SimPinLockSettings;
.super Lcom/android/settings/core/InstrumentedActivity;
.source "SimPinLockSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/security/SimPinLockSettings$LockState;
    }
.end annotation


# instance fields
.field private final MSG_SHOW_SOFTINPUT:I

.field private mActionBar:Landroid/app/ActionBar;

.field private mCancelButton:Landroid/widget/Button;

.field private mCurrentInputLockNumber:Ljava/lang/String;

.field private mExceptionIsNull:Z

.field protected mH:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLockState:Lcom/samsung/android/settings/security/SimPinLockSettings$LockState;

.field private mNewPin:Ljava/lang/String;

.field private mNextButton:Landroid/widget/Button;

.field private mOldPin:Ljava/lang/String;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRes:Landroid/content/res/Resources;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSlotId:I

.field private mToState:Z

.field private num_of_retry:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmExceptionIsNull(Lcom/samsung/android/settings/security/SimPinLockSettings;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mExceptionIsNull:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmExceptionIsNull(Lcom/samsung/android/settings/security/SimPinLockSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mExceptionIsNull:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$miccLockChanged(Lcom/samsung/android/settings/security/SimPinLockSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/security/SimPinLockSettings;->iccLockChanged(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$miccPinChanged(Lcom/samsung/android/settings/security/SimPinLockSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/security/SimPinLockSettings;->iccPinChanged(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowSoftInput(Lcom/samsung/android/settings/security/SimPinLockSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/security/SimPinLockSettings;->showSoftInput()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedActivity;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->num_of_retry:I

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mExceptionIsNull:Z

    .line 91
    new-instance v1, Lcom/samsung/android/settings/security/SimPinLockSettings$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/security/SimPinLockSettings$1;-><init>(Lcom/samsung/android/settings/security/SimPinLockSettings;)V

    iput-object v1, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mHandler:Landroid/os/Handler;

    .line 118
    iput v0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->MSG_SHOW_SOFTINPUT:I

    .line 120
    new-instance v0, Lcom/samsung/android/settings/security/SimPinLockSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/security/SimPinLockSettings$2;-><init>(Lcom/samsung/android/settings/security/SimPinLockSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mH:Landroid/os/Handler;

    .line 150
    new-instance v0, Lcom/samsung/android/settings/security/SimPinLockSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/security/SimPinLockSettings$3;-><init>(Lcom/samsung/android/settings/security/SimPinLockSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private hideSoftInput()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private iccLockChanged(Z)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 199
    iget-boolean p1, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mToState:Z

    if-eqz p1, :cond_0

    .line 200
    iget-object p1, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->sim_lock_is_set:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 201
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 203
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->sim_lock_is_released:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 204
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 207
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_2

    .line 209
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/security/SimPinLockSettings;->hideSoftInput()V

    .line 210
    iget-object p1, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->getLockPinKey()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 211
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard;->getIccPin1RetryCount()I

    move-result p1

    if-lez p1, :cond_4

    .line 212
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 213
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mRes:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->kt_sim_lock_failed:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mRes:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->kt_sim_wrong_pin_chances:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 215
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard;->getIccPin1RetryCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    .line 214
    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 216
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 217
    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticLGTModel()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 218
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mRes:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->zzz_lgt_password_wrong_pin_code1:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 219
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard;->getIccPin1RetryCount()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    .line 218
    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/settings/R$string;->zzz_lgt_password_wrong_pin_code2:I

    .line 220
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 221
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 223
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/settings/R$string;->sim_lock_failed_kor:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 224
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->getIccPin1RetryCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    .line 223
    invoke-virtual {p1, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 225
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 228
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_2
    return-void
.end method

.method private iccPinChanged(Z)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_3

    .line 170
    invoke-direct {p0}, Lcom/samsung/android/settings/security/SimPinLockSettings;->hideSoftInput()V

    .line 171
    iget-object p1, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->getLockPinKey()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 172
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard;->getIccPin1RetryCount()I

    move-result p1

    if-lez p1, :cond_2

    .line 173
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 174
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mRes:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->kt_sim_change_failed:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mRes:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->kt_sim_wrong_pin_chances:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 176
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard;->getIccPin1RetryCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    .line 175
    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 177
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 178
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticLGTModel()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 179
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mRes:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->zzz_lgt_password_wrong_pin_code1:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 180
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard;->getIccPin1RetryCount()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    .line 179
    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/settings/R$string;->zzz_lgt_password_wrong_pin_code2:I

    .line 181
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 182
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 184
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/settings/R$string;->sim_change_failed_kor:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 185
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->getIccPin1RetryCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    .line 184
    invoke-virtual {p1, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 186
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 189
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 191
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->sim_change_succeeded_kor:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 192
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 193
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void
.end method

.method private showSoftInput()V
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 135
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    const-string v1, "SimPinLockSettings"

    if-eqz v0, :cond_0

    const-string p0, "[PPCLP] showSoftInput returned true"

    .line 138
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "[PPCLP] showSoftInput returned false"

    .line 140
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object p0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mH:Landroid/os/Handler;

    const-wide/16 v0, 0x32

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private tryChangePin()V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mOldPin:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {v1, v2, p0, v0}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private updateViews()V
    .locals 5

    .line 305
    sget-object v0, Lcom/samsung/android/settings/security/SimPinLockSettings$4;->$SwitchMap$com$samsung$android$settings$security$SimPinLockSettings$LockState:[I

    iget-object v1, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mLockState:Lcom/samsung/android/settings/security/SimPinLockSettings$LockState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 342
    iget-object v0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccPin1RetryCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->num_of_retry:I

    .line 343
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mHeaderText:Landroid/widget/TextView;

    sget v2, Lcom/android/settings/R$string;->kt_sim_enter_old:I

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->num_of_retry:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 346
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mHeaderText:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->sim_enter_old_kor:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_1
    const-string p0, "SimPinLockSettings"

    const-string v0, "Exception: unexpected state"

    .line 352
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected state"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 323
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->getPinRetry()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->num_of_retry:I

    .line 324
    iget-boolean v0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mToState:Z

    if-eqz v0, :cond_4

    .line 325
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 326
    iget-object v0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mHeaderText:Landroid/widget/TextView;

    sget v2, Lcom/android/settings/R$string;->kt_sim_enable_sim_lock:I

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->num_of_retry:I

    .line 327
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 329
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mHeaderText:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->sim_enable_sim_lock_kor:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 332
    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 333
    iget-object v0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mHeaderText:Landroid/widget/TextView;

    sget v2, Lcom/android/settings/R$string;->kt_sim_disable_sim_lock:I

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->num_of_retry:I

    .line 334
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 336
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mHeaderText:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->sim_disable_sim_lock_kor:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 315
    :cond_6
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 316
    iget-object p0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mHeaderText:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->kt_sim_enter_new_again:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 318
    :cond_7
    iget-object p0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mHeaderText:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->sim_reenter_new_kor:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 307
    :cond_8
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 308
    iget-object p0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mHeaderText:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->kt_sim_enter_new:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 310
    :cond_9
    iget-object p0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mHeaderText:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->sim_enter_new_kor:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x11af

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 375
    invoke-direct {p0}, Lcom/samsung/android/settings/security/SimPinLockSettings;->hideSoftInput()V

    .line 376
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mNextButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 378
    invoke-virtual {p0}, Lcom/samsung/android/settings/security/SimPinLockSettings;->onClickConfirm()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClickConfirm()V
    .locals 4

    .line 384
    iget-object v0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 385
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 387
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    sget v0, Lcom/android/settings/R$string;->kt_sim_no_pin_entered:I

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 390
    :cond_0
    sget v0, Lcom/android/settings/R$string;->sim_no_pin_entered:I

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x4

    if-ge v0, v2, :cond_3

    .line 394
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 395
    sget v0, Lcom/android/settings/R$string;->kt_sim_wrong_pin_length:I

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 397
    :cond_2
    sget v0, Lcom/android/settings/R$string;->sim_wrong_pin_length:I

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void

    :cond_3
    const/16 v3, 0x8

    if-le v0, v3, :cond_5

    .line 401
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 402
    sget v0, Lcom/android/settings/R$string;->kt_sim_wrong_pin_length:I

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 405
    :cond_4
    sget v0, Lcom/android/settings/R$string;->sim_wrong_pin_length:I

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_2
    return-void

    .line 410
    :cond_5
    sget-object v0, Lcom/samsung/android/settings/security/SimPinLockSettings$4;->$SwitchMap$com$samsung$android$settings$security$SimPinLockSettings$LockState:[I

    iget-object v3, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mLockState:Lcom/samsung/android/settings/security/SimPinLockSettings$LockState;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_b

    const/4 v3, 0x2

    if-eq v0, v3, :cond_8

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    if-ne v0, v2, :cond_6

    .line 434
    iget-object v0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mOldPin:Ljava/lang/String;

    .line 435
    sget-object v0, Lcom/samsung/android/settings/security/SimPinLockSettings$LockState;->LOCK_NEW:Lcom/samsung/android/settings/security/SimPinLockSettings$LockState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/security/SimPinLockSettings;->updateStage(Lcom/samsung/android/settings/security/SimPinLockSettings$LockState;)V

    goto/16 :goto_4

    :cond_6
    const-string p0, "SimPinLockSettings"

    const-string v0, "Exception: unexpected click"

    .line 446
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected click event"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 439
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mCurrentInputLockNumber:Ljava/lang/String;

    .line 440
    iget-object v0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 441
    iget-object v1, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mToState:Z

    iget-object v3, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mCurrentInputLockNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_4

    .line 417
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mCurrentInputLockNumber:Ljava/lang/String;

    .line 418
    iget-object v2, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 419
    invoke-direct {p0}, Lcom/samsung/android/settings/security/SimPinLockSettings;->tryChangePin()V

    goto :goto_4

    .line 421
    :cond_9
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 422
    sget v0, Lcom/android/settings/R$string;->kt_sim_pins_dont_match:I

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 423
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 426
    :cond_a
    sget v0, Lcom/android/settings/R$string;->sim_pins_dont_match_kor:I

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 427
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 429
    :goto_3
    sget-object v0, Lcom/samsung/android/settings/security/SimPinLockSettings$LockState;->LOCK_NEW:Lcom/samsung/android/settings/security/SimPinLockSettings$LockState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/security/SimPinLockSettings;->updateStage(Lcom/samsung/android/settings/security/SimPinLockSettings$LockState;)V

    goto :goto_4

    .line 412
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mNewPin:Ljava/lang/String;

    .line 413
    sget-object v0, Lcom/samsung/android/settings/security/SimPinLockSettings$LockState;->LOCK_REENTER:Lcom/samsung/android/settings/security/SimPinLockSettings$LockState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/security/SimPinLockSettings;->updateStage(Lcom/samsung/android/settings/security/SimPinLockSettings$LockState;)V

    .line 449
    :goto_4
    iget-object p0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 239
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 241
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mActionBar:Landroid/app/ActionBar;

    .line 242
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "slotId"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mSlotId:I

    .line 243
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mSlotId:I

    .line 244
    invoke-virtual {p1, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    if-nez p1, :cond_0

    .line 245
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    goto :goto_0

    .line 246
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 247
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mToState:Z

    .line 248
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mRes:Landroid/content/res/Resources;

    const-string p1, "input_method"

    .line 249
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 251
    invoke-virtual {p0}, Lcom/samsung/android/settings/security/SimPinLockSettings;->setupViews()V

    .line 253
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "checkbox"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 254
    iget-object p1, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mActionBar:Landroid/app/ActionBar;

    if-eqz p1, :cond_1

    .line 255
    sget v0, Lcom/android/settings/R$string;->sim_pin_toggle_kor:I

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 256
    :cond_1
    sget-object p1, Lcom/samsung/android/settings/security/SimPinLockSettings$LockState;->LOCK_CONFIRM:Lcom/samsung/android/settings/security/SimPinLockSettings$LockState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/security/SimPinLockSettings;->updateStage(Lcom/samsung/android/settings/security/SimPinLockSettings$LockState;)V

    goto :goto_1

    .line 258
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mActionBar:Landroid/app/ActionBar;

    if-eqz p1, :cond_3

    .line 259
    sget v0, Lcom/android/settings/R$string;->sim_pin_change_kor:I

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 260
    :cond_3
    sget-object p1, Lcom/samsung/android/settings/security/SimPinLockSettings$LockState;->LOCK_CONFIRM_AND_CHANGE:Lcom/samsung/android/settings/security/SimPinLockSettings$LockState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/security/SimPinLockSettings;->updateStage(Lcom/samsung/android/settings/security/SimPinLockSettings$LockState;)V

    .line 262
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/security/SimPinLockSettings;->updateViews()V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-eqz p2, :cond_0

    const/4 p1, 0x6

    if-eq p2, p1, :cond_0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_1

    .line 462
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/security/SimPinLockSettings;->onClickConfirm()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 267
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 272
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 269
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0
.end method

.method public onPause()V
    .locals 1

    .line 359
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onPause()V

    .line 360
    iget-object v0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 365
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onResume()V

    .line 366
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    .line 367
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 368
    iget-object v1, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 369
    iget-object v0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 370
    iget-object p0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mH:Landroid/os/Handler;

    const/4 v0, 0x1

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected setupViews()V
    .locals 4

    .line 280
    sget v0, Lcom/android/settings/R$layout;->sec_sim_pin_portrait:I

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 282
    sget v0, Lcom/android/settings/R$id;->sim_lock_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mScrollView:Landroid/widget/ScrollView;

    const/16 v1, 0xf

    .line 283
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->semSetRoundedCorners(I)V

    .line 284
    iget-object v0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mScrollView:Landroid/widget/ScrollView;

    .line 285
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 284
    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->semSetRoundedCornerColor(II)V

    .line 287
    sget v0, Lcom/android/settings/R$id;->cancel_button:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mCancelButton:Landroid/widget/Button;

    .line 288
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    sget v0, Lcom/android/settings/R$id;->next_button:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mNextButton:Landroid/widget/Button;

    .line 290
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    sget v0, Lcom/android/settings/R$id;->password_entry:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    .line 293
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 294
    iget-object v0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 295
    iget-object v0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImportantForAutofill(I)V

    .line 296
    sget v0, Lcom/android/settings/R$id;->headerText:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mHeaderText:Landroid/widget/TextView;

    .line 297
    iget-object v0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 299
    iget-object p0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public updateStage(Lcom/samsung/android/settings/security/SimPinLockSettings$LockState;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/samsung/android/settings/security/SimPinLockSettings;->mLockState:Lcom/samsung/android/settings/security/SimPinLockSettings$LockState;

    .line 454
    invoke-direct {p0}, Lcom/samsung/android/settings/security/SimPinLockSettings;->updateViews()V

    return-void
.end method
