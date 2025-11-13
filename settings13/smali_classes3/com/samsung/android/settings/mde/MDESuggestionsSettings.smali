.class public Lcom/samsung/android/settings/mde/MDESuggestionsSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MDESuggestionsSettings.java"

# interfaces
.implements Lcom/android/settings/core/OnActivityResultListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mActivityResultListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mMDEServiceBindingManager:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

.field private final mMDEServiceBindingManagerCallback:Lcom/samsung/android/settings/mde/MDEServiceBindingManager$Callback;


# direct methods
.method public static synthetic $r8$lambda$2RKjA1hGUcS5pHJogDF-ue8oqFs(Lcom/samsung/android/settings/mde/MDESuggestionsSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->lambda$onActivityResult$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$P7-PPwai9VWdhpzUZzNs_uUL2uw(Lcom/samsung/android/settings/mde/MDESuggestionsSettings;Landroid/content/pm/ShortcutInfo;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->lambda$updateUI$0(Landroid/content/pm/ShortcutInfo;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fc6VEkv27_YbJdKz6hzB3-vLBiw(Lcom/samsung/android/settings/mde/MDESuggestionsSettings;Landroid/content/pm/ShortcutInfo;Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->lambda$updateUI$1(Landroid/content/pm/ShortcutInfo;Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmMDEServiceBindingManager(Lcom/samsung/android/settings/mde/MDESuggestionsSettings;)Lcom/samsung/android/settings/mde/MDEServiceBindingManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->mMDEServiceBindingManager:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateUI(Lcom/samsung/android/settings/mde/MDESuggestionsSettings;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->updateUI(Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->mActivityResultListeners:Ljava/util/List;

    .line 70
    new-instance v0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/mde/MDESuggestionsSettings$1;-><init>(Lcom/samsung/android/settings/mde/MDESuggestionsSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->mMDEServiceBindingManagerCallback:Lcom/samsung/android/settings/mde/MDEServiceBindingManager$Callback;

    return-void
.end method

.method private getShortcutIdNumber(Ljava/lang/String;)I
    .locals 2

    const/4 p0, 0x3

    .line 257
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 261
    sget-object p1, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NullPointerException. e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 259
    sget-object p1, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NumberFormatException. e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private synthetic lambda$onActivityResult$2()V
    .locals 2

    .line 315
    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->mMDEServiceBindingManager:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 316
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->sendMessage(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateUI$0(Landroid/content/pm/ShortcutInfo;Landroid/view/View;)V
    .locals 2

    .line 175
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p1

    .line 176
    sget-object p2, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Click exit button : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {p0}, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->getMetricsCategory()I

    move-result p2

    const v0, 0x111d5

    invoke-static {p2, v0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;)V

    .line 179
    invoke-static {}, Lcom/samsung/android/settings/mde/MDESuggestionManager;->getInstance()Lcom/samsung/android/settings/mde/MDESuggestionManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/mde/MDESuggestionManager;->addDismissedSuggestion(Ljava/lang/String;)V

    .line 180
    iget-object p2, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->mMDEServiceBindingManager:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    if-eqz p2, :cond_0

    .line 181
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "id"

    .line 182
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object p1, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->mMDEServiceBindingManager:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->sendMessage(ILandroid/os/Bundle;)V

    .line 185
    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->mMDEServiceBindingManager:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->sendMessage(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateUI$1(Landroid/content/pm/ShortcutInfo;Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;Landroid/view/View;)V
    .locals 6

    .line 190
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p3

    const-string v0, "buttonType"

    invoke-virtual {p3, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 191
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 193
    sget-object p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->TAG:Ljava/lang/String;

    const-string p1, "button intent is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 196
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    const-string v1, "TURNON"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const-string v4, "onClick: Activity Not Found Exception. e = "

    if-nez v1, :cond_3

    const-string p2, "GOTO"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_0

    .line 198
    :cond_1
    sget-object p2, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Click GOTO Settings : "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {p0}, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->getMetricsCategory()I

    move-result p2

    const p3, 0x111d6

    .line 200
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-static {p2, p3, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;)V

    .line 202
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 203
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 205
    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/mde/MDESuggestionManager;->getInstance()Lcom/samsung/android/settings/mde/MDESuggestionManager;

    move-result-object p2

    .line 206
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/settings/mde/MDESuggestionManager;->addDismissedSuggestion(Ljava/lang/String;)V

    .line 207
    iget-object p2, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->mMDEServiceBindingManager:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    if-eqz p2, :cond_6

    .line 208
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "id"

    .line 209
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object p1, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->mMDEServiceBindingManager:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    invoke-virtual {p1, v3, p2}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->sendMessage(ILandroid/os/Bundle;)V

    .line 213
    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->mMDEServiceBindingManager:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->sendMessage(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 217
    sget-object p1, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 223
    :cond_3
    sget-object p3, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Click TURN ON Settings : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :try_start_1
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->getShortcutIdNumber(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 228
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 229
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 230
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->registerActivityResultListener(Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;)V

    .line 233
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "turn on button clicked : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->mMDEServiceBindingManager:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    if-eqz p0, :cond_6

    .line 235
    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->sendMessage(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 239
    sget-object p1, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_0
    return-void
.end method

.method private updateUI(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 158
    invoke-virtual {p0}, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->clearActivityResultListeners()V

    .line 160
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    const-string v2, "MDESuggestionPreference"

    .line 162
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->createPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/mde/MDESuggestionPreference;

    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const-string v3, "SecInsetCategoryPreference"

    .line 165
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->createPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key_inset_category_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v2}, Lcom/samsung/android/settings/mde/MDESuggestionPreference;->getHelper()Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;

    move-result-object v4

    .line 169
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->setShortcutId(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->setTitle(Ljava/lang/CharSequence;)V

    .line 171
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->setSummary(Ljava/lang/CharSequence;)V

    .line 172
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 173
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v5

    const-string v6, "buttonLabel"

    invoke-virtual {v5, v6}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->setActionButtonText(Ljava/lang/String;)V

    .line 174
    new-instance v5, Lcom/samsung/android/settings/mde/MDESuggestionsSettings$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v1}, Lcom/samsung/android/settings/mde/MDESuggestionsSettings$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/mde/MDESuggestionsSettings;Landroid/content/pm/ShortcutInfo;)V

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->setExitButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    new-instance v5, Lcom/samsung/android/settings/mde/MDESuggestionsSettings$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, v1, v4}, Lcom/samsung/android/settings/mde/MDESuggestionsSettings$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/mde/MDESuggestionsSettings;Landroid/content/pm/ShortcutInfo;Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;)V

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->setActionButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 249
    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public clearActivityResultListeners()V
    .locals 0

    .line 282
    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected createPreference(Ljava/lang/String;)Landroidx/preference/Preference;
    .locals 1

    .line 268
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "SecInsetCategoryPreference"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 277
    new-instance p1, Lcom/samsung/android/settings/mde/MDESuggestionPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/mde/MDESuggestionPreference;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 270
    :cond_0
    new-instance p1, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;-><init>(Landroid/content/Context;)V

    .line 272
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$dimen;->sec_mde_suggestions_inset_category_height:I

    .line 273
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 272
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->setHeight(I)V

    return-object p1
.end method

.method public getMetricsCategory()I
    .locals 0

    const p0, 0x111d4

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 93
    sget p0, Lcom/android/settings/R$xml;->sec_mde_suggestions_settings:I

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 295
    sget-object v0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult : requestCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p3, "AS-"

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "0"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 300
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, -0x1

    const v0, 0x111d7

    if-ne p2, p3, :cond_3

    .line 303
    invoke-virtual {p0}, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->getMetricsCategory()I

    move-result p2

    const-wide/16 v1, 0x1

    invoke-static {p2, v0, p1, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;J)V

    .line 306
    iget-object p2, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;

    .line 307
    invoke-virtual {p3}, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    invoke-virtual {p3}, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->startTurnOnAnimation()V

    .line 313
    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/mde/MDESuggestionManager;->getInstance()Lcom/samsung/android/settings/mde/MDESuggestionManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/mde/MDESuggestionManager;->addDismissedSuggestion(Ljava/lang/String;)V

    .line 314
    new-instance p1, Lcom/samsung/android/settings/mde/MDESuggestionsSettings$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/mde/MDESuggestionsSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/mde/MDESuggestionsSettings;)V

    const-wide/16 p2, 0x226

    invoke-static {p1, p2, p3}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThreadDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 321
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->getMetricsCategory()I

    move-result p0

    const-wide/16 p2, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;J)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoAddFooterPreference(Z)V

    .line 99
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoRemoveInsetCategory(Z)V

    .line 100
    sget-object v0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    new-instance v0, Landroidx/preference/PreferenceManager$SimplePreferenceComparisonCallback;

    invoke-direct {v0}, Landroidx/preference/PreferenceManager$SimplePreferenceComparisonCallback;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceManager;->setPreferenceComparisonCallback(Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;)V

    .line 107
    new-instance p1, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->mMDEServiceBindingManager:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 113
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    .line 115
    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const p2, 0x1020004

    .line 116
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/android/settings/R$string;->sec_mde_suggestions_empty_card_text:I

    .line 119
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 118
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {p0, p2}, Lcom/android/settings/SettingsPreferenceFragment;->setEmptyView(Landroid/view/View;)V

    .line 123
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    sget p3, Lcom/android/settings/R$id;->content_layout:I

    invoke-virtual {p2, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/widget/SecFlexibleSpacingLayout;

    .line 124
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p3, Lcom/android/settings/R$id;->round_corner_layout:I

    invoke-virtual {p0, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/widget/SecFlexibleSpacingLayout;

    const/4 p3, 0x2

    .line 125
    invoke-virtual {p2, p3}, Lcom/samsung/android/settings/widget/SecFlexibleSpacingLayout;->setType(I)V

    .line 126
    invoke-virtual {p0, p3}, Lcom/samsung/android/settings/widget/SecFlexibleSpacingLayout;->setType(I)V

    return-object p1
.end method

.method public onStart()V
    .locals 2

    .line 133
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    .line 135
    iget-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->mMDEServiceBindingManager:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    if-eqz v0, :cond_0

    .line 136
    iget-object v1, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->mMDEServiceBindingManagerCallback:Lcom/samsung/android/settings/mde/MDEServiceBindingManager$Callback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->registerCallback(Lcom/samsung/android/settings/mde/MDEServiceBindingManager$Callback;)V

    .line 137
    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->mMDEServiceBindingManager:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->startServiceBind()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 143
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    .line 145
    iget-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->mMDEServiceBindingManager:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->stopServiceBind()V

    .line 147
    iget-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->mMDEServiceBindingManager:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->mMDEServiceBindingManagerCallback:Lcom/samsung/android/settings/mde/MDEServiceBindingManager$Callback;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->unregisterCallback(Lcom/samsung/android/settings/mde/MDEServiceBindingManager$Callback;)V

    :cond_0
    return-void
.end method

.method public registerActivityResultListener(Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;)V
    .locals 0

    .line 286
    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
