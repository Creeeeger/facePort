.class public Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SecVolumeLimiterSettings.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;,
        Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mFirstPin:Ljava/lang/String;

.field private mHeaderText:Landroid/widget/TextView;

.field private mIsCheckedMainSwitch:Z

.field private mIsCheckedPassword:Z

.field private mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mMaximumVolume:Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;

.field private mNextButton:Landroid/widget/Button;

.field private mOrientation:I

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordMaxLength:I

.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field mUiStage:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;

.field private mUsePassword:Landroidx/preference/SwitchPreference;


# direct methods
.method public static synthetic $r8$lambda$7Nj4cl8RXDwZG6JrJfB94_KrjXg(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->lambda$showSetPasswordDialog$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$McxPVjrUHOEhLY5dUWA6LMCyWic(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->lambda$showSetPasswordDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContentResolver(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDialog(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHeaderText(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mHeaderText:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsCheckedMainSwitch(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mIsCheckedMainSwitch:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsCheckedPassword(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mIsCheckedPassword:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLayoutChangeListener(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Landroid/view/View$OnLayoutChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaximumVolume(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNextButton(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mNextButton:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOrientation(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mOrientation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPasswordEntry(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPasswordMaxLength(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mPasswordMaxLength:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Lcom/android/settings/widget/SettingsMainSwitchBar;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUsePassword(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Landroidx/preference/SwitchPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mUsePassword:Landroidx/preference/SwitchPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAnchorView(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mAnchorView:Landroid/view/View;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDialog(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHeaderText(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mHeaderText:Landroid/widget/TextView;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsCheckedMainSwitch(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mIsCheckedMainSwitch:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsCheckedPassword(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mIsCheckedPassword:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNextButton(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mNextButton:Landroid/widget/Button;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOrientation(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mOrientation:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPasswordEntry(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    return-void
.end method

.method static bridge synthetic -$$Nest$mencrypt(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetAnchorView(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->setAnchorView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetNextEnabled(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->setNextEnabled(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetVolumeLimiter(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->setVolumeLimiter(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateUi(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->updateUi()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 563
    new-instance v0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$5;

    invoke-direct {v0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$5;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    const/16 v0, 0x10

    .line 271
    iput v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mPasswordMaxLength:I

    .line 272
    sget-object v0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;->Introduction:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;

    iput-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;

    .line 619
    new-instance v0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$6;-><init>(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method

.method private encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    const-string p0, "SHA-256"

    .line 595
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    .line 596
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    const-string p1, "%064x"

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 597
    new-instance v3, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-direct {v3, v0, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 599
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$showSetPasswordDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showSetPasswordDialog$1(Landroid/view/View;)V
    .locals 0

    .line 303
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->handleNext()V

    return-void
.end method

.method private setAnchorView()V
    .locals 3

    .line 605
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 606
    iget-object v1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mAnchorView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 607
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->semSetAnchor(Landroid/view/View;)V

    goto :goto_0

    .line 609
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 610
    iget-object v1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mUsePassword:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->seslGetPreferenceBounds(Landroid/graphics/Rect;)V

    .line 611
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 612
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    const/4 v2, 0x0

    .line 613
    iput-object v2, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mAnchorView:Landroid/view/View;

    .line 614
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v1, v0}, Landroid/app/AlertDialog;->semSetAnchor(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setNextEnabled(Z)V
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 408
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mNextButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setAlpha(F)V

    return-void
.end method

.method private setNextText(I)V
    .locals 0

    .line 412
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mNextButton:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method private setVolumeLimiter(Z)V
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "volume_limiter_value"

    const/16 v2, 0x9

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 235
    iget-object v1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "volumelimit_on"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 236
    iget-object v1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->enableVolumeLimiter(Z)V

    .line 237
    iget-object v1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setVolumeLimiterValue(I)V

    .line 238
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private showError(Ljava/lang/String;Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;)V
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->updateStage(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;)V

    return-void
.end method

.method private updateUi()V
    .locals 6

    .line 425
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 426
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 428
    iget-object v2, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;

    sget-object v3, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;->Introduction:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_2

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 430
    sget v0, Lcom/android/settings/R$string;->sec_volume_limiter_pin_too_short:I

    new-array v1, v4, [Ljava/lang/Object;

    .line 431
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    .line 430
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 432
    iget-object v1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->setNextEnabled(Z)V

    goto :goto_1

    .line 435
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 437
    iget-object v2, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mPasswordMaxLength:I

    if-ge v0, v1, :cond_4

    .line 439
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->setNextEnabled(Z)V

    goto :goto_1

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mHeaderText:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->sec_volume_limiter_press_continue:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 443
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->setNextEnabled(Z)V

    goto :goto_1

    .line 447
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mHeaderText:Landroid/widget/TextView;

    iget v2, v2, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;->numericHint:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    if-lez v1, :cond_3

    goto :goto_0

    :cond_3
    move v4, v5

    .line 448
    :goto_0
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->setNextEnabled(Z)V

    .line 450
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;

    iget v0, v0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;->buttonText:I

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->setNextText(I)V

    return-void
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 360
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    .line 361
    sget p1, Lcom/android/settings/R$string;->sec_volume_limiter_pin_too_short:I

    new-array v0, v2, [Ljava/lang/Object;

    .line 362
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 361
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 364
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mPasswordMaxLength:I

    if-lt p1, v0, :cond_1

    .line 365
    sget p1, Lcom/android/settings/R$string;->sec_volume_limiter_pin_too_long:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 366
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    .line 365
    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 171
    const-class p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1014

    return p0
.end method

.method public getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "top_level_sounds"

    return-object p0
.end method

.method public handleNext()V
    .locals 4

    .line 372
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 373
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 377
    iget-object v2, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;

    sget-object v3, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;->Introduction:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;

    if-ne v2, v3, :cond_2

    .line 378
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 379
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mPasswordMaxLength:I

    if-ne v2, v3, :cond_6

    .line 380
    :cond_1
    iput-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mFirstPin:Ljava/lang/String;

    .line 381
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    sget-object v0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;->NeedToConfirm:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->updateStage(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;)V

    goto :goto_0

    .line 384
    :cond_2
    sget-object v3, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;->NeedToConfirm:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;

    if-ne v2, v3, :cond_6

    .line 385
    iget-object v2, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mFirstPin:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 386
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 388
    iget-object v2, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "volumelimit_secure_password"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 390
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    const-string v3, "volumelimit_set_password"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 392
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 394
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 396
    move-object v2, v0

    check-cast v2, Landroid/text/Spannable;

    const/4 v3, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {v2, v3, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 398
    :cond_5
    sget-object v0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;->ConfirmWrong:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->updateStage(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;)V

    :cond_6
    :goto_0
    if-eqz v1, :cond_7

    .line 402
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->showError(Ljava/lang/String;Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;)V

    :cond_7
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .line 140
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 142
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 143
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 144
    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->show()V

    .line 145
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "volumelimit_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 147
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->setVolumeLimiter(Z)V

    .line 149
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    if-eqz p1, :cond_3

    const-string v0, "notificationDialogShown"

    .line 151
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 154
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "volumelimit_set_password"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_2

    .line 156
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->DisplayCheckUI(Landroid/view/View;)V

    goto :goto_2

    .line 158
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->showSetPasswordDialog()V

    :cond_3
    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 103
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mContext:Landroid/content/Context;

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 107
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 108
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mOrientation:I

    .line 109
    sget p1, Lcom/android/settings/R$xml;->as_volume_limiter_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "maximum_volume"

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;

    .line 112
    new-instance p1, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;-><init>(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback-IA;)V

    .line 113
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->setCallback(Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference$Callback;)V

    const-string p1, "use_password"

    .line 114
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mUsePassword:Landroidx/preference/SwitchPreference;

    .line 115
    new-instance v0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$1;-><init>(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 132
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "volumelimit_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 134
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mUsePassword:Landroidx/preference/SwitchPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "volumelimit_set_password"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 203
    :cond_0
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 208
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 210
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 211
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->hide()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 189
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 176
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 179
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "volumelimit_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 182
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mUsePassword:Landroidx/preference/SwitchPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "volumelimit_set_password"

    invoke-static {p0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_2

    move v3, v2

    :cond_2
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_3
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 556
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 557
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    const-string v0, "notificationDialogShown"

    .line 558
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 194
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    .line 195
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->onActivityStop()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->getSwitch()Landroid/widget/Switch;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->getMetricsCategory()I

    move-result p1

    const/16 v0, 0x1015

    invoke-static {p1, v0, p2}, Lcom/samsung/android/settings/as/logging/LoggingWrapper;->insertEventLogging(IIZ)V

    if-nez p2, :cond_1

    .line 222
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v0, 0x0

    const-string v1, "volumelimit_set_password"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 224
    iput-boolean p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mIsCheckedMainSwitch:Z

    .line 225
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->DisplayCheckUI(Landroid/view/View;)V

    return-void

    .line 229
    :cond_1
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->setVolumeLimiter(Z)V

    return-void
.end method

.method public showSetPasswordDialog()V
    .locals 6

    .line 279
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$layout;->sec_choose_lock_password_limiter:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 282
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/android/settings/R$string;->sec_volume_limiter_choose_your_pin_header:I

    .line 283
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 284
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v3, Lcom/android/settings/R$string;->cancel:I

    new-instance v4, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)V

    .line 285
    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v3, Lcom/android/settings/R$string;->sec_common_ok:I

    .line 286
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$2;-><init>(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)V

    .line 287
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 297
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    .line 298
    iput-object v2, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mAnchorView:Landroid/view/View;

    .line 299
    iget-object v1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 300
    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->setAnchorView()V

    .line 301
    iget-object v1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 302
    iget-object v1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mNextButton:Landroid/widget/Button;

    .line 303
    new-instance v2, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    sget v1, Lcom/android/settings/R$id;->password_entry:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    .line 306
    new-instance v2, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$3;-><init>(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 318
    iget-object v1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v2, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$4;-><init>(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 334
    iget-object v1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    iget v5, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mPasswordMaxLength:I

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 338
    sget v1, Lcom/android/settings/R$id;->headerText:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mHeaderText:Landroid/widget/TextView;

    .line 339
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 340
    sget-object v0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;->Introduction:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->updateStage(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;)V

    .line 342
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method protected updateStage(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;

    .line 349
    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->updateUi()V

    return-void
.end method
