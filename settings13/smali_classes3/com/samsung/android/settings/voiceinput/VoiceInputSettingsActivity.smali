.class public Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "VoiceInputSettingsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private setActionBar()V
    .locals 3

    .line 34
    sget v0, Lcom/android/settings/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 35
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->voice_input_settings_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 37
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "@VoiceIn:VoiceInputSettingsActivity"

    const-string v1, "titleBar not null"

    .line 38
    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(I)V

    .line 41
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method private setCollapsibleToolbar()V
    .locals 3

    .line 46
    sget v0, Lcom/android/settings/R$id;->app_bar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    .line 47
    sget v1, Lcom/android/settings/R$id;->collapsing_toolbar:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    const/4 v2, 0x0

    .line 48
    invoke-virtual {v0, v2}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    .line 49
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/settings/R$string;->voice_input_settings_title:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 74
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    sget p1, Lcom/android/settings/R$layout;->voice_input_settings_activity:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 26
    invoke-direct {p0}, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsActivity;->setActionBar()V

    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsActivity;->setNavigationBarIconColor()V

    .line 28
    invoke-static {}, Lcom/samsung/android/settings/voiceinput/VoiceInputUtils;->isPieDevice()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsActivity;->setCollapsibleToolbar()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 62
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsActivity;->onBackPressed()V

    .line 69
    :goto_0
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public setNavigationBarIconColor()V
    .locals 1

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 55
    invoke-static {p0}, Lcom/samsung/android/settings/voiceinput/VoiceInputUtils;->isNightMode(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 56
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method
