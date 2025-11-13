.class final Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;
.super Ljava/lang/Object;
.source "SecVolumeLimiterSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckPasswordCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;


# direct methods
.method public static synthetic $r8$lambda$JLVkDpjMXZtjy9xT6H7ppXVHL3I(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->lambda$showCheckPasswordDialog$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m2jwIdA1Nqb6eXRWMeNEv20BQhg(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->lambda$showCheckPasswordDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleNext(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->handleNext()V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;-><init>(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)V

    return-void
.end method

.method private handleNext()V
    .locals 4

    .line 531
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fgetmContentResolver(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "volumelimit_secure_password"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 532
    iget-object v2, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fgetmPasswordEntry(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$mencrypt(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 534
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 535
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fgetmIsCheckedPassword(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fgetmContentResolver(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "volumelimit_set_password"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 537
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fgetmContentResolver(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 539
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fputmIsCheckedPassword(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;Z)V

    goto :goto_0

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fgetmIsCheckedMainSwitch(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 541
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$msetVolumeLimiter(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;Z)V

    .line 542
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fputmIsCheckedMainSwitch(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;Z)V

    goto :goto_0

    .line 544
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fgetmMaximumVolume(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->setCheckedPW(Z)V

    .line 546
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fgetmDialog(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_1

    .line 548
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fgetmPasswordEntry(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fgetmHeaderText(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Landroid/widget/TextView;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->sec_volume_limiter_incorrect_pin:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$showCheckPasswordDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 464
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fgetmDialog(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showCheckPasswordDialog$1(Landroid/view/View;)V
    .locals 0

    .line 486
    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->handleNext()V

    return-void
.end method


# virtual methods
.method public showCheckPasswordDialog(Landroid/view/View;)V
    .locals 6

    .line 458
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fgetmDialog(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->sec_choose_lock_password_limiter:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 462
    iget-object v1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 463
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->cancel:I

    new-instance v5, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;)V

    .line 464
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->sec_common_ok:I

    .line 465
    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback$1;-><init>(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;)V

    .line 466
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 479
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fputmDialog(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;Landroid/app/AlertDialog;)V

    .line 481
    iget-object v1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {v1, p1}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fputmAnchorView(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;Landroid/view/View;)V

    .line 482
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fgetmLayoutChangeListener(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Landroid/view/View$OnLayoutChangeListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 483
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$msetAnchorView(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)V

    .line 484
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fgetmDialog(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 485
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fgetmDialog(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fputmNextButton(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;Landroid/widget/Button;)V

    .line 486
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fgetmNextButton(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Landroid/widget/Button;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$msetNextEnabled(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;Z)V

    .line 489
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    sget v2, Lcom/android/settings/R$id;->password_entry:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {p1, v2}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fputmPasswordEntry(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;Landroid/widget/TextView;)V

    .line 490
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fgetmPasswordEntry(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v2, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback$2;-><init>(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 503
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fgetmPasswordEntry(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v2, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback$3;-><init>(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 518
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    sget v2, Lcom/android/settings/R$id;->headerText:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fputmHeaderText(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;Landroid/widget/TextView;)V

    .line 520
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fgetmHeaderText(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->sec_volume_limiter_confirm_your_pin_header:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 521
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fgetmPasswordEntry(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    iget-object v3, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fgetmPasswordMaxLength(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 523
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fgetmPasswordEntry(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 525
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fgetmDialog(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x15

    invoke-virtual {p0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method
