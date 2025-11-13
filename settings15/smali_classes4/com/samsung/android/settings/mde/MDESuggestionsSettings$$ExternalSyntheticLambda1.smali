.class public final synthetic Lcom/samsung/android/settings/mde/MDESuggestionsSettings$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/mde/MDESuggestionsSettings;

.field public final synthetic f$1:Lcom/samsung/android/settings/mde/SuggestionInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/mde/MDESuggestionsSettings;Lcom/samsung/android/settings/mde/SuggestionInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/mde/MDESuggestionsSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/settings/mde/SuggestionInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/mde/MDESuggestionsSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/settings/mde/SuggestionInfo;

    sget v0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/samsung/android/settings/mde/SuggestionInfo;->mId:Ljava/lang/String;

    const-string v0, "Click exit button : "

    const-string v1, "MDESuggestionsSettings"

    invoke-static {v0, p0, v1}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x111d4

    const v1, 0x111d5

    invoke-static {v0, v1, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/settings/mde/MDESuggestionManager;->getInstance()Lcom/samsung/android/settings/mde/MDESuggestionManager;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/settings/mde/MDESuggestionManager;->mDismissedSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->mMDEServiceBindingManager:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    if-eqz v0, :cond_0

    const-string v0, "id"

    invoke-static {v0, p0}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    iget-object v0, p1, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->mMDEServiceBindingManager:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->sendMessage(ILandroid/os/Bundle;)V

    iget-object p0, p1, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->mMDEServiceBindingManager:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->sendMessage(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method
