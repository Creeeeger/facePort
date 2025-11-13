.class public Lcom/samsung/android/settings/security/SimPersoLockSettings;
.super Lcom/android/settings/core/InstrumentedActivity;
.source "SimPersoLockSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/security/SimPersoLockSettings$LockState;
    }
.end annotation


# static fields
.field private static final MAX_PASSWD:I

.field private static mNum_Retry:I


# instance fields
.field private final MSG_SHOW_SOFTINPUT:I

.field private mCancelButton:Landroid/widget/Button;

.field protected mH:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLockState:Lcom/samsung/android/settings/security/SimPersoLockSettings$LockState;

.field private mNewPasswd:Ljava/lang/String;

.field private mNextButton:Landroid/widget/Button;

.field private mOldPasswd:Ljava/lang/String;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field protected mProgressDialog:Landroid/app/ProgressDialog;

.field private mRes:Landroid/content/res/Resources;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSlotId:I

.field private mToState:Z


# direct methods
.method static bridge synthetic -$$Nest$mshowSoftInput(Lcom/samsung/android/settings/security/SimPersoLockSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/security/SimPersoLockSettings;->showSoftInput()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msimLockChanged(Lcom/samsung/android/settings/security/SimPersoLockSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/security/SimPersoLockSettings;->simLockChanged(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msimLockPasswdChanged(Lcom/samsung/android/settings/security/SimPersoLockSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/security/SimPersoLockSettings;->simLockPasswdChanged(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 81
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigUsimPersonalLockPwdLength"

    const/16 v2, 0x8

    .line 82
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->MAX_PASSWD:I

    const/4 v0, 0x0

    .line 90
    sput v0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mNum_Retry:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedActivity;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 76
    iput-object v0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 95
    new-instance v0, Lcom/samsung/android/settings/security/SimPersoLockSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/security/SimPersoLockSettings$1;-><init>(Lcom/samsung/android/settings/security/SimPersoLockSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 129
    iput v0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->MSG_SHOW_SOFTINPUT:I

    .line 131
    new-instance v0, Lcom/samsung/android/settings/security/SimPersoLockSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/security/SimPersoLockSettings$2;-><init>(Lcom/samsung/android/settings/security/SimPersoLockSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mH:Landroid/os/Handler;

    .line 157
    new-instance v0, Lcom/samsung/android/settings/security/SimPersoLockSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/security/SimPersoLockSettings$3;-><init>(Lcom/samsung/android/settings/security/SimPersoLockSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private showSoftInput()V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 146
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    const-string v1, "SimPersoLockSettings"

    if-eqz v0, :cond_0

    const-string p0, "[PPCLP] showSoftInput returned true"

    .line 149
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "[PPCLP] showSoftInput returned false"

    .line 151
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object p0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mH:Landroid/os/Handler;

    const-wide/16 v0, 0x32

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private simLockChanged(Z)V
    .locals 2

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "simLockChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimPersoLockSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 200
    sput v0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mNum_Retry:I

    .line 201
    iget-boolean p1, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mToState:Z

    if-eqz p1, :cond_0

    .line 202
    iget-object p1, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->sim_perso_set_succeeded:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 203
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 205
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->sim_perso_unset_succeeded:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 206
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 208
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 210
    :cond_1
    sget p1, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mNum_Retry:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mNum_Retry:I

    .line 211
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mNum_Retry:I

    const/4 v1, 0x5

    if-lt p1, v1, :cond_2

    .line 212
    sget p1, Lcom/android/settings/R$string;->kt_sim_perso_exceed_max_retry_count:I

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 213
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 215
    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 216
    iget-object p1, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->kt_sim_perso_bad_passwd:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 217
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 219
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->sim_perso_bad_passwd:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 220
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 223
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_2
    return-void
.end method

.method private simLockPasswdChanged(Z)V
    .locals 2

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "simLockPasswdChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimPersoLockSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 175
    sget p1, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mNum_Retry:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mNum_Retry:I

    .line 176
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mNum_Retry:I

    const/4 v1, 0x5

    if-lt p1, v1, :cond_0

    .line 177
    sget p1, Lcom/android/settings/R$string;->kt_sim_perso_exceed_max_retry_count:I

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 178
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 180
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 181
    iget-object p1, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->kt_sim_perso_bad_passwd:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 182
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 184
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->sim_perso_bad_passwd:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 185
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 188
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 190
    :cond_2
    sput v0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mNum_Retry:I

    .line 191
    iget-object p1, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->sim_perso_pw_change_succeeded:I

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

.method private tryChangeSimLockPasswd()V
    .locals 3

    .line 167
    invoke-virtual {p0}, Lcom/samsung/android/settings/security/SimPersoLockSettings;->getProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 168
    iget-object v0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mOldPasswd:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mNewPasswd:Ljava/lang/String;

    invoke-virtual {v1, v2, p0, v0}, Lcom/android/internal/telephony/IccCard;->changeIccSimPersoPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private updateViews()V
    .locals 3

    .line 302
    sget-object v0, Lcom/samsung/android/settings/security/SimPersoLockSettings$4;->$SwitchMap$com$samsung$android$settings$security$SimPersoLockSettings$LockState:[I

    iget-object v1, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mLockState:Lcom/samsung/android/settings/security/SimPersoLockSettings$LockState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-eq v0, v1, :cond_c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 341
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->MAX_PASSWD:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 344
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->sim_perso_enter_old:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 342
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->kt_sim_perso_enter_old:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    :cond_2
    const-string p0, "SimPersoLockSettings"

    const-string v0, "Exception: unexpected state"

    .line 350
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected state"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 321
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mToState:Z

    if-eqz v0, :cond_6

    .line 322
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 323
    iget-object p0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->kt_sim_enable_sim_perso:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 324
    :cond_4
    sget v0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->MAX_PASSWD:I

    if-ne v0, v2, :cond_5

    .line 325
    iget-object p0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->skt_sim_enable_sim_perso:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 327
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->sim_enable_sim_perso:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 330
    :cond_6
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 331
    iget-object p0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->kt_sim_disable_sim_perso:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 332
    :cond_7
    sget v0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->MAX_PASSWD:I

    if-ne v0, v2, :cond_8

    .line 333
    iget-object p0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->skt_sim_disable_sim_perso:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 335
    :cond_8
    iget-object p0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->sim_disable_sim_perso:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 313
    :cond_9
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result v0

    if-nez v0, :cond_b

    sget v0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->MAX_PASSWD:I

    if-ne v0, v2, :cond_a

    goto :goto_1

    .line 316
    :cond_a
    iget-object p0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->sim_perso_enter_new_again:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 314
    :cond_b
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->kt_sim_perso_enter_new_again:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 304
    :cond_c
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result v0

    if-nez v0, :cond_e

    sget v0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->MAX_PASSWD:I

    if-ne v0, v2, :cond_d

    goto :goto_2

    .line 307
    :cond_d
    iget-object p0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->sim_perso_enter_new:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 305
    :cond_e
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->kt_sim_perso_enter_new:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_3
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x11b0

    return p0
.end method

.method protected getProgressDialog()Landroid/app/Dialog;
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 373
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 374
    sget v1, Lcom/android/settings/R$string;->sim_perso_checking:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 376
    iget-object v0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 377
    iget-object v0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 379
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 383
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mNum_Retry:I

    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    .line 384
    sget p1, Lcom/android/settings/R$string;->kt_sim_perso_exceed_max_retry_count:I

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 385
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 389
    iget-object p1, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 390
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mNextButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 392
    invoke-virtual {p0}, Lcom/samsung/android/settings/security/SimPersoLockSettings;->onClickConfirm()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onClickConfirm()V
    .locals 4

    .line 398
    iget-object v0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 399
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 401
    sget v0, Lcom/android/settings/R$string;->sim_perso_no_passwd_entered:I

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const/4 v2, 0x4

    if-lt v0, v2, :cond_8

    .line 403
    sget v3, Lcom/samsung/android/settings/security/SimPersoLockSettings;->MAX_PASSWD:I

    if-le v0, v3, :cond_1

    goto/16 :goto_2

    .line 414
    :cond_1
    sget-object v0, Lcom/samsung/android/settings/security/SimPersoLockSettings$4;->$SwitchMap$com$samsung$android$settings$security$SimPersoLockSettings$LockState:[I

    iget-object v3, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mLockState:Lcom/samsung/android/settings/security/SimPersoLockSettings$LockState;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    if-ne v0, v2, :cond_2

    .line 438
    iget-object v0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mOldPasswd:Ljava/lang/String;

    .line 439
    sget-object v0, Lcom/samsung/android/settings/security/SimPersoLockSettings$LockState;->LOCK_NEW:Lcom/samsung/android/settings/security/SimPersoLockSettings$LockState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/security/SimPersoLockSettings;->updateStage(Lcom/samsung/android/settings/security/SimPersoLockSettings$LockState;)V

    goto/16 :goto_1

    :cond_2
    const-string p0, "SimPersoLockSettings"

    const-string v0, "Exception: unexpected click"

    .line 452
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected click event"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 443
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/security/SimPersoLockSettings;->getProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 444
    iget-object v0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 445
    iget-object v1, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 446
    iget-object v2, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mToState:Z

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/telephony/IccCard;->setIccSimPersoEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 421
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 422
    iget-object v2, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mNewPasswd:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 423
    invoke-direct {p0}, Lcom/samsung/android/settings/security/SimPersoLockSettings;->tryChangeSimLockPasswd()V

    goto :goto_1

    .line 425
    :cond_5
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 427
    sget v0, Lcom/android/settings/R$string;->kt_sim_perso_passwd_dont_match:I

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 428
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 430
    :cond_6
    sget v0, Lcom/android/settings/R$string;->sim_perso_passwd_dont_match:I

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 431
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 433
    :goto_0
    sget-object v0, Lcom/samsung/android/settings/security/SimPersoLockSettings$LockState;->LOCK_NEW:Lcom/samsung/android/settings/security/SimPersoLockSettings$LockState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/security/SimPersoLockSettings;->updateStage(Lcom/samsung/android/settings/security/SimPersoLockSettings$LockState;)V

    goto :goto_1

    .line 416
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mNewPasswd:Ljava/lang/String;

    .line 417
    sget-object v0, Lcom/samsung/android/settings/security/SimPersoLockSettings$LockState;->LOCK_REENTER:Lcom/samsung/android/settings/security/SimPersoLockSettings$LockState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/security/SimPersoLockSettings;->updateStage(Lcom/samsung/android/settings/security/SimPersoLockSettings$LockState;)V

    .line 455
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 404
    :cond_8
    :goto_2
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result v0

    if-nez v0, :cond_a

    sget v0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->MAX_PASSWD:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_9

    goto :goto_3

    .line 408
    :cond_9
    sget v0, Lcom/android/settings/R$string;->sim_perso_wrong_passwd_length:I

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 409
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 405
    :cond_a
    :goto_3
    sget v0, Lcom/android/settings/R$string;->kt_sim_perso_wrong_passwd_length:I

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 406
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_4
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 234
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 236
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    .line 237
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "slotId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mSlotId:I

    .line 238
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mSlotId:I

    .line 239
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 240
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_0

    .line 241
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 242
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccUsimPersoEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mToState:Z

    .line 243
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    const-string v0, "input_method"

    .line 244
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 246
    invoke-virtual {p0}, Lcom/samsung/android/settings/security/SimPersoLockSettings;->setupViews()V

    .line 248
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "checkbox"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "SimPersoLockSettings"

    if-eqz v0, :cond_2

    const-string v0, "Change USIM lock state"

    .line 249
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 251
    sget v0, Lcom/android/settings/R$string;->sim_perso_toggle:I

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 252
    :cond_1
    sget-object p1, Lcom/samsung/android/settings/security/SimPersoLockSettings$LockState;->LOCK_CONFIRM:Lcom/samsung/android/settings/security/SimPersoLockSettings$LockState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/security/SimPersoLockSettings;->updateStage(Lcom/samsung/android/settings/security/SimPersoLockSettings$LockState;)V

    goto :goto_1

    :cond_2
    const-string v0, "Change USIM lock password"

    .line 254
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    .line 256
    sget v0, Lcom/android/settings/R$string;->sim_perso_change:I

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 257
    :cond_3
    sget-object p1, Lcom/samsung/android/settings/security/SimPersoLockSettings$LockState;->LOCK_CONFIRM_AND_CHANGE:Lcom/samsung/android/settings/security/SimPersoLockSettings$LockState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/security/SimPersoLockSettings;->updateStage(Lcom/samsung/android/settings/security/SimPersoLockSettings$LockState;)V

    .line 259
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/security/SimPersoLockSettings;->updateViews()V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-eqz p2, :cond_1

    const/4 p1, 0x6

    if-eq p2, p1, :cond_1

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 470
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mNextButton:Landroid/widget/Button;

    if-eqz p1, :cond_2

    .line 471
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/security/SimPersoLockSettings;->onClick(Landroid/view/View;)V

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 264
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 269
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 266
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0
.end method

.method public onPause()V
    .locals 1

    .line 357
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onPause()V

    .line 358
    iget-object v0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 363
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onResume()V

    .line 364
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    .line 365
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 366
    iget-object v1, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 367
    iget-object v0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 368
    iget-object p0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mH:Landroid/os/Handler;

    const/4 v0, 0x1

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected setupViews()V
    .locals 4

    .line 277
    sget v0, Lcom/android/settings/R$layout;->sec_sim_pin_portrait:I

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 279
    sget v0, Lcom/android/settings/R$id;->sim_lock_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mScrollView:Landroid/widget/ScrollView;

    const/16 v1, 0xf

    .line 280
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->semSetRoundedCorners(I)V

    .line 281
    iget-object v0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mScrollView:Landroid/widget/ScrollView;

    .line 282
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 281
    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->semSetRoundedCornerColor(II)V

    .line 284
    sget v0, Lcom/android/settings/R$id;->cancel_button:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mCancelButton:Landroid/widget/Button;

    .line 285
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    sget v0, Lcom/android/settings/R$id;->next_button:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mNextButton:Landroid/widget/Button;

    .line 287
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    sget v0, Lcom/android/settings/R$id;->password_entry:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    .line 290
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 291
    iget-object v0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 292
    iget-object v0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImportantForAutofill(I)V

    .line 293
    sget v0, Lcom/android/settings/R$id;->headerText:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    .line 294
    iget-object v0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 296
    iget-object p0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    sget v2, Lcom/samsung/android/settings/security/SimPersoLockSettings;->MAX_PASSWD:I

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public updateStage(Lcom/samsung/android/settings/security/SimPersoLockSettings$LockState;)V
    .locals 1

    .line 459
    iput-object p1, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mLockState:Lcom/samsung/android/settings/security/SimPersoLockSettings$LockState;

    .line 461
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateStage : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mLockState:Lcom/samsung/android/settings/security/SimPersoLockSettings$LockState;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SimPersoLockSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-direct {p0}, Lcom/samsung/android/settings/security/SimPersoLockSettings;->updateViews()V

    return-void
.end method
