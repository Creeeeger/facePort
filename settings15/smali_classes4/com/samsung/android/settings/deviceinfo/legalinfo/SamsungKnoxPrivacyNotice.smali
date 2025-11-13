.class public Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public activityTitle:Ljava/lang/String;

.field public asynctask:Landroid/os/AsyncTask;

.field public context:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

.field public isReAgreement:Z

.field public mAgreeButton:Landroid/widget/Button;

.field public mFields:Ljava/lang/String;

.field public mPPClientAvailable:Z

.field public mPPRegion:Ljava/lang/String;

.field public mProgress:Landroid/widget/ProgressBar;

.field public mSendMinorBroadcast:Z

.field public newPPType:Z

.field public newPPVersion:I

.field public textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->context:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->textView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mProgress:Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->asynctask:Landroid/os/AsyncTask;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->newPPVersion:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->newPPType:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->isReAgreement:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mPPClientAvailable:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mSendMinorBroadcast:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->activityTitle:Ljava/lang/String;

    return-void
.end method

.method public static getTagContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "<"

    const-string v1, ">"

    invoke-static {v0, p1, v1}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "</"

    invoke-static {v2, p1, v1}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-eq p1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static isChinaModel$1()Z
    .locals 3

    const-string/jumbo v0, "ro.csc.countryiso_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "china"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final displayContent()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->isReAgreement:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$PPRetrieverTask;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$PPRetrieverTask;-><init>(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->asynctask:Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "KnoxNotice"

    const-string v1, "Exception in PPRetrieverTask"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final getAgreeButtonText()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mPPRegion:Ljava/lang/String;

    const-string v1, "GDPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mPPRegion:Ljava/lang/String;

    const-string v1, "LGPD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->context:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f141c91

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->context:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f141c92

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPPFromClient()Ljava/lang/String;
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "content://com.samsung.android.ppclient.PPClientProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getPPInfo"

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v2, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v1, "pp_text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_0
    const-string/jumbo v1, "pp_region"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mPPRegion:Ljava/lang/String;

    :cond_1
    const-string/jumbo v1, "pp_version"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->newPPVersion:I

    :cond_2
    const-string/jumbo v1, "pp_fields"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mFields:Ljava/lang/String;

    :cond_3
    return-object v4
.end method

.method public final isPossibleNetwork()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->context:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a084a

    if-ne p1, v0, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.android.mdm"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.ppclient.PP_REAGREEMENT_ACCEPTED"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "pp_accepted"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "pp_version"

    iget v1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->newPPVersion:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->context:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    const-string v1, "com.samsung.android.knox.ppclient.permission.KNOX_PRIVACY_POLICY"

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    :cond_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->isPossibleNetwork()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->isChinaModel$1()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->displayContent()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->context:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.android.ppclient.PP_REPORT_ACCEPTANCE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.samsung.android.mdm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mPPClientAvailable:Z

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->isPossibleNetwork()Z

    move-result p1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const-string/jumbo v3, "not_settings"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->isChinaModel$1()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez p1, :cond_3

    if-nez v3, :cond_3

    new-instance p1, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->context:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    const v5, 0x103012b

    invoke-direct {p1, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const v4, 0x7f140b6b

    invoke-static {p1, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    const p1, 0x7f0d0989

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x7f0a0b7c

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const p1, 0x7f0a084b

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->textView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f14147a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->activityTitle:Ljava/lang/String;

    const p1, 0x7f0a084a

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mAgreeButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mAgreeButton:Landroid/widget/Button;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mAgreeButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_5
    iget-boolean p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mPPClientAvailable:Z

    if-eqz p1, :cond_9

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->isChinaModel$1()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->hide()V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_2
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->setupReAgreementData(Landroid/content/Intent;)V

    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryIso()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    if-nez v3, :cond_8

    iget-boolean p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->isReAgreement:Z

    if-eqz p1, :cond_9

    :cond_8
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f141479

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->activityTitle:Ljava/lang/String;

    :cond_9
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->textView:Landroid/widget/TextView;

    sget-object p1, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$KnoxLinkMovementMethod;->sInstance:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$KnoxLinkMovementMethod;

    if-nez p1, :cond_a

    new-instance p1, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$KnoxLinkMovementMethod;

    invoke-direct {p1}, Landroid/text/method/LinkMovementMethod;-><init>()V

    sput-object p1, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$KnoxLinkMovementMethod;->sInstance:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$KnoxLinkMovementMethod;

    :cond_a
    sget-object p1, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$KnoxLinkMovementMethod;->sInstance:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$KnoxLinkMovementMethod;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_3

    :cond_b
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->textView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :goto_3
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->asynctask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mPPClientAvailable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->setupReAgreementData(Landroid/content/Intent;)V

    :cond_0
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->isPossibleNetwork()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->isChinaModel$1()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->displayContent()V

    return-void
.end method

.method public final setupReAgreementData(Landroid/content/Intent;)V
    .locals 7

    const-string v0, "KnoxNotice"

    const-string v1, "<!DOCTYPE html><html><head><title></title></head><body>"

    const-string/jumbo v2, "result: "

    if-eqz p1, :cond_5

    const-string/jumbo v3, "show_button"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mProgress:Landroid/widget/ProgressBar;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->newPPType:Z

    const-string/jumbo v3, "pp_text"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "pp_version"

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->newPPVersion:I

    const-string/jumbo v6, "pp_region"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mPPRegion:Ljava/lang/String;

    if-eqz v3, :cond_2

    :try_start_0
    const-string/jumbo p1, "title"

    invoke-static {v3, p1}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->getTagContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v6, "body"

    invoke-static {v3, v6}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->getTagContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "</body></html>"

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->activityTitle:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    if-eqz v6, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->textView:Landroid/widget/TextView;

    invoke-static {p1, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->textView:Landroid/widget/TextView;

    invoke-static {v3, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->textView:Landroid/widget/TextView;

    invoke-static {v3, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "Exception in getting Title and Body"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    iget-boolean p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->newPPType:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mAgreeButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->getAgreeButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mAgreeButton:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    :cond_2
    new-instance p1, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$PPRetrieverTask;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$PPRetrieverTask;-><init>(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;)V

    new-array v0, v4, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->asynctask:Landroid/os/AsyncTask;

    :cond_3
    :goto_3
    iget-boolean p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->newPPType:Z

    const/4 v0, 0x1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mSendMinorBroadcast:Z

    if-nez p1, :cond_4

    iput-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mSendMinorBroadcast:Z

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.mdm"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.ppclient.PP_REAGREEMENT_ACCEPTED"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "pp_accepted"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "ppupdate_type"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget v1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->newPPVersion:I

    invoke-virtual {p1, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->context:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    const-string v2, "com.samsung.android.knox.ppclient.permission.KNOX_PRIVACY_POLICY"

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_4
    iput-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->isReAgreement:Z

    :cond_5
    return-void
.end method
