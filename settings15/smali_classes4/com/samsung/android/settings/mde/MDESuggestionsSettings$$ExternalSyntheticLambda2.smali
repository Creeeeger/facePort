.class public final synthetic Lcom/samsung/android/settings/mde/MDESuggestionsSettings$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/mde/MDESuggestionsSettings;

.field public final synthetic f$1:Lcom/samsung/android/settings/mde/SuggestionInfo;

.field public final synthetic f$2:Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/mde/MDESuggestionsSettings;Lcom/samsung/android/settings/mde/SuggestionInfo;Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/mde/MDESuggestionsSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings$$ExternalSyntheticLambda2;->f$1:Lcom/samsung/android/settings/mde/SuggestionInfo;

    iput-object p3, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings$$ExternalSyntheticLambda2;->f$2:Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object p1, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/mde/MDESuggestionsSettings;

    iget-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings$$ExternalSyntheticLambda2;->f$1:Lcom/samsung/android/settings/mde/SuggestionInfo;

    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings$$ExternalSyntheticLambda2;->f$2:Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;

    sget v1, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/samsung/android/settings/mde/SuggestionInfo;->mExtras:Landroid/os/PersistableBundle;

    const-string v2, "buttonType"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/settings/mde/SuggestionInfo;->mIntent:Landroid/content/Intent;

    const-string v3, "MDESuggestionsSettings"

    if-nez v2, :cond_0

    const-string p0, "button intent is null"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v4, "onClick: Activity Not Found Exception. e = "

    const-string v5, "TURNON"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string p0, "GOTO"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_4

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Click GOTO Settings : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/samsung/android/settings/mde/SuggestionInfo;->mId:Ljava/lang/String;

    invoke-static {p0, v1, v3}, Lcom/android/settings/Utils$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p0, v0, Lcom/samsung/android/settings/mde/SuggestionInfo;->mId:Ljava/lang/String;

    const v1, 0x111d4

    const v2, 0x111d6

    invoke-static {v1, v2, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/settings/mde/MDESuggestionManager;->getInstance()Lcom/samsung/android/settings/mde/MDESuggestionManager;

    move-result-object p0

    iget-object v1, v0, Lcom/samsung/android/settings/mde/SuggestionInfo;->mId:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDESuggestionManager;->mDismissedSuggestions:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p1, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->mMDEServiceBindingManager:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    if-eqz p0, :cond_6

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "id"

    iget-object v0, v0, Lcom/samsung/android/settings/mde/SuggestionInfo;->mId:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->mMDEServiceBindingManager:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->sendMessage(ILandroid/os/Bundle;)V

    iget-object p0, p1, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->mMDEServiceBindingManager:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->sendMessage(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Click TURN ON Settings : "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/samsung/android/settings/mde/SuggestionInfo;->mId:Ljava/lang/String;

    invoke-static {v1, v5, v3}, Lcom/android/settings/Utils$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object v0, v0, Lcom/samsung/android/settings/mde/SuggestionInfo;->mId:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->getShortcutIdNumber(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_5
    :goto_2
    iget-object p1, p1, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->mActivityResultListeners:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_4
    return-void
.end method
