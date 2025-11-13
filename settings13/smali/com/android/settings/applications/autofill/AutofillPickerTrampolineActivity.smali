.class public Lcom/android/settings/applications/autofill/AutofillPickerTrampolineActivity;
.super Landroid/app/Activity;
.source "AutofillPickerTrampolineActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const-class p1, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/autofill/AutofillManager;

    if-eqz p1, :cond_3

    .line 41
    invoke-virtual {p1}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/autofill/AutofillManager;->isAutofillSupported()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 56
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-virtual {p1}, Landroid/view/autofill/AutofillManager;->getAutofillServiceComponentName()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 58
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    .line 60
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 66
    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/applications/autofill/AutofillPickerActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x2000000

    .line 67
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 68
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    .line 69
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 43
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
