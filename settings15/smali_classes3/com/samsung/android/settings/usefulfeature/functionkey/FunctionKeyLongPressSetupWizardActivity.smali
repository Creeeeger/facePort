.class public Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity;
.super Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mContext:Landroid/content/Context;

.field public mCurrentIsGoogle:Z

.field public final scrollChangeListener:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity$1;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity;->mCurrentIsGoogle:Z

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity$1;-><init>(Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity;->scrollChangeListener:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity$1;

    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget-boolean p1, Lcom/samsung/android/settings/Rune;->FEATURE_SIDE_BUTTON_SUPPORT_AI_AGENT_APP:Z

    const-string v0, "FunctionKeyLongPressSetupWizardActivity"

    if-nez p1, :cond_0

    const-string p1, "not support AI agent"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x3f2

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity;->mContext:Landroid/content/Context;

    const p1, 0x7f0d09af

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setContentView(IZ)V

    const p1, 0x7f0a0412

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v2, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    const-string p1, "Default not changed according to model for China"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move p1, v1

    goto/16 :goto_3

    :cond_1
    new-instance p1, Lcom/android/internal/app/AssistUtils;

    invoke-direct {p1, p0}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object p1

    const-string v4, "com.google.android.googlequicksearchbox"

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Digital assistant app Component name="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_1
    move p1, v3

    goto :goto_3

    :cond_2
    const-string v5, "com.sec.android.app.sbrowser"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "com.sec.android.app.sbrowser.beta"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "Digital assistant app already set by 3rd party app."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1, v4, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "NameNotFoundException : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v2

    :goto_2
    if-nez p1, :cond_4

    const-string p1, "Google package does not exist"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-static {p0, v4}, Lcom/samsung/android/settings/applications/assist/DigitalAssistantAppUtils;->setAssistantApp(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :goto_3
    iput-boolean p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity;->mCurrentIsGoogle:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "mCurrentIsGoogle="

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity;->mCurrentIsGoogle:Z

    invoke-static {p1, v4, v0}, Landroidx/appcompat/view/SeslContentViewInsetsCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity;->mCurrentIsGoogle:Z

    const/16 v0, 0x2328

    if-eqz p1, :cond_5

    const-string p1, "LP001"

    invoke-static {p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;I)V

    goto :goto_4

    :cond_5
    const-string p1, "LP002"

    invoke-static {p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;I)V

    :goto_4
    iget-boolean p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity;->mCurrentIsGoogle:Z

    if-eqz p1, :cond_6

    const v0, 0x7f080407

    goto :goto_5

    :cond_6
    const v0, 0x7f080640

    :goto_5
    if-eqz p1, :cond_7

    const p1, 0x7f14275e

    goto :goto_6

    :cond_7
    const p1, 0x7f142760

    :goto_6
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setHeaderTitle(I)V

    const-string/jumbo p1, "sec"

    invoke-static {p1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    const/16 v0, 0x2bc

    invoke-static {p1, v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance p1, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity;)V

    const v0, 0x7f14197b

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setPrimaryActionButton(ILandroid/view/View$OnClickListener;)V

    iget-boolean p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity;->mCurrentIsGoogle:Z

    if-eqz p1, :cond_8

    const p1, 0x7f0a0e4d

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity$2;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity$2;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    :cond_8
    const p1, 0x7f0a0e4e

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_7
    iget-boolean p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity;->mCurrentIsGoogle:Z

    if-eqz p1, :cond_9

    const p1, 0x7f14275d

    goto :goto_8

    :cond_9
    const p1, 0x7f14275f

    :goto_8
    const v0, 0x7f0a0e4c

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f0a06dc

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f14275c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%1$s"

    const-string v2, "11"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%2$s"

    const-string v3, "99"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {v0, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v1, v5, :cond_c

    if-eq v4, v5, :cond_c

    add-int/lit8 v4, v4, 0x2

    if-le v1, v4, :cond_a

    goto :goto_9

    :cond_a
    move v7, v4

    move v4, v1

    move v1, v7

    :goto_9
    const-string v5, ""

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_b

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    :cond_b
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity$4;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity$4;-><init>(Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity;Landroid/content/Context;)V

    const/16 v2, 0x21

    invoke-virtual {v3, v0, v4, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    :goto_a
    iget-object p1, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p1}, Lcom/google/android/setupdesign/GlifLayout;->getScrollView()Landroid/widget/ScrollView;

    move-result-object p1

    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity;->scrollChangeListener:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity$1;

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    :cond_d
    invoke-virtual {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->isScrollBottomReached()Z

    move-result p1

    if-eqz p1, :cond_e

    const p1, 0x7f1424ac

    goto :goto_b

    :cond_e
    const p1, 0x7f1424ab

    :goto_b
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity$2;-><init>(Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity;)V

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setPrimaryActionButton(ILandroid/view/View$OnClickListener;)V

    return-void
.end method
