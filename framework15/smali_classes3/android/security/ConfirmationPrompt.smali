.class public Landroid/security/ConfirmationPrompt;
.super Ljava/lang/Object;
.source "ConfirmationPrompt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/ConfirmationPrompt$Builder;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "ConfirmationPrompt"


# instance fields
.field private greylist-max-o mCallback:Landroid/security/ConfirmationCallback;

.field private final blacklist mConfirmationCallback:Landroid/security/apc/IConfirmationCallback;

.field private greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mExecutor:Ljava/util/concurrent/Executor;

.field private greylist-max-o mExtraData:[B

.field private greylist-max-o mPromptText:Ljava/lang/CharSequence;

.field private blacklist mProtectedConfirmation:Landroid/security/AndroidProtectedConfirmation;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/security/ConfirmationPrompt;)Landroid/security/ConfirmationCallback;
    .locals 0

    iget-object p0, p0, Landroid/security/ConfirmationPrompt;->mCallback:Landroid/security/ConfirmationCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/security/ConfirmationPrompt;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroid/security/ConfirmationPrompt;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCallback(Landroid/security/ConfirmationPrompt;Landroid/security/ConfirmationCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/security/ConfirmationPrompt;->mCallback:Landroid/security/ConfirmationCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmExecutor(Landroid/security/ConfirmationPrompt;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Landroid/security/ConfirmationPrompt;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoCallback(Landroid/security/ConfirmationPrompt;I[BLandroid/security/ConfirmationCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/security/ConfirmationPrompt;->doCallback(I[BLandroid/security/ConfirmationCallback;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/Context;Ljava/lang/CharSequence;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/security/ConfirmationPrompt$1;

    invoke-direct {v0, p0}, Landroid/security/ConfirmationPrompt$1;-><init>(Landroid/security/ConfirmationPrompt;)V

    iput-object v0, p0, Landroid/security/ConfirmationPrompt;->mConfirmationCallback:Landroid/security/apc/IConfirmationCallback;

    iput-object p1, p0, Landroid/security/ConfirmationPrompt;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/security/ConfirmationPrompt;->mPromptText:Ljava/lang/CharSequence;

    iput-object p3, p0, Landroid/security/ConfirmationPrompt;->mExtraData:[B

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/Context;Ljava/lang/CharSequence;[BLandroid/security/ConfirmationPrompt-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/security/ConfirmationPrompt;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;[B)V

    return-void
.end method

.method private greylist-max-o doCallback(I[BLandroid/security/ConfirmationCallback;)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected responseCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from onConfirmtionPromptCompleted() callback."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/security/ConfirmationCallback;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "System error returned by ConfirmationUI."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/security/ConfirmationCallback;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p3}, Landroid/security/ConfirmationCallback;->onCanceled()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p3}, Landroid/security/ConfirmationCallback;->onDismissed()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p3, p2}, Landroid/security/ConfirmationCallback;->onConfirmed([B)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist getService()Landroid/security/AndroidProtectedConfirmation;
    .locals 1

    iget-object v0, p0, Landroid/security/ConfirmationPrompt;->mProtectedConfirmation:Landroid/security/AndroidProtectedConfirmation;

    if-nez v0, :cond_0

    new-instance v0, Landroid/security/AndroidProtectedConfirmation;

    invoke-direct {v0}, Landroid/security/AndroidProtectedConfirmation;-><init>()V

    iput-object v0, p0, Landroid/security/ConfirmationPrompt;->mProtectedConfirmation:Landroid/security/AndroidProtectedConfirmation;

    :cond_0
    iget-object v0, p0, Landroid/security/ConfirmationPrompt;->mProtectedConfirmation:Landroid/security/AndroidProtectedConfirmation;

    return-object v0
.end method

.method private greylist-max-o getUiOptionsAsFlags()I
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/security/ConfirmationPrompt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_inversion_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    const-string v3, "font_scale"

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    float-to-double v4, v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    return v0
.end method

.method private static greylist-max-o isAccessibilityServiceRunning(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_enabled"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ConfirmationPrompt"

    const-string v3, "Unexpected SettingNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public static whitelist isSupported(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Landroid/security/ConfirmationPrompt;->isAccessibilityServiceRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Landroid/security/AndroidProtectedConfirmation;

    invoke-direct {v0}, Landroid/security/AndroidProtectedConfirmation;-><init>()V

    invoke-virtual {v0}, Landroid/security/AndroidProtectedConfirmation;->isConfirmationPromptSupported()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public whitelist cancelPrompt()V
    .locals 3

    nop

    invoke-direct {p0}, Landroid/security/ConfirmationPrompt;->getService()Landroid/security/AndroidProtectedConfirmation;

    move-result-object v0

    iget-object v1, p0, Landroid/security/ConfirmationPrompt;->mConfirmationCallback:Landroid/security/apc/IConfirmationCallback;

    invoke-virtual {v0, v1}, Landroid/security/AndroidProtectedConfirmation;->cancelConfirmationPrompt(Landroid/security/apc/IConfirmationCallback;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected responseCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from cancelConfirmationPrompt() call."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConfirmationPrompt"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public whitelist presentPrompt(Ljava/util/concurrent/Executor;Landroid/security/ConfirmationCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/ConfirmationAlreadyPresentingException;,
            Landroid/security/ConfirmationNotAvailableException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/ConfirmationPrompt;->mCallback:Landroid/security/ConfirmationCallback;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/security/ConfirmationPrompt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/security/ConfirmationPrompt;->isAccessibilityServiceRunning(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p2, p0, Landroid/security/ConfirmationPrompt;->mCallback:Landroid/security/ConfirmationCallback;

    iput-object p1, p0, Landroid/security/ConfirmationPrompt;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Landroid/security/ConfirmationPrompt;->getUiOptionsAsFlags()I

    move-result v7

    invoke-direct {p0}, Landroid/security/ConfirmationPrompt;->getService()Landroid/security/AndroidProtectedConfirmation;

    move-result-object v1

    iget-object v2, p0, Landroid/security/ConfirmationPrompt;->mConfirmationCallback:Landroid/security/apc/IConfirmationCallback;

    iget-object v3, p0, Landroid/security/ConfirmationPrompt;->mPromptText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/security/ConfirmationPrompt;->mExtraData:[B

    move-object v5, v0

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/security/AndroidProtectedConfirmation;->presentConfirmationPrompt(Landroid/security/apc/IConfirmationCallback;Ljava/lang/String;[BLjava/lang/String;I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected responseCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from presentConfirmationPrompt() call."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ConfirmationPrompt"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :sswitch_0
    new-instance v2, Landroid/security/ConfirmationNotAvailableException;

    invoke-direct {v2}, Landroid/security/ConfirmationNotAvailableException;-><init>()V

    throw v2

    :sswitch_1
    new-instance v2, Landroid/security/ConfirmationAlreadyPresentingException;

    invoke-direct {v2}, Landroid/security/ConfirmationAlreadyPresentingException;-><init>()V

    throw v2

    :sswitch_2
    return-void

    :cond_0
    new-instance v0, Landroid/security/ConfirmationNotAvailableException;

    invoke-direct {v0}, Landroid/security/ConfirmationNotAvailableException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Landroid/security/ConfirmationAlreadyPresentingException;

    invoke-direct {v0}, Landroid/security/ConfirmationAlreadyPresentingException;-><init>()V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x3 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method
