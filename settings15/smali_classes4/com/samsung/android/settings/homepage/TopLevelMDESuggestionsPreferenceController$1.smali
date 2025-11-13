.class public final Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/mde/MDEServiceBindingManager$Callback;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController$1;->this$0:Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;

    return-void
.end method


# virtual methods
.method public final onRequestUpdated()V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController$1;->this$0:Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->-$$Nest$fgetmMDEServiceBindingManager(Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;)Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->-$$Nest$fgetmMDEServiceBindingManager(Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;)Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->sendMessage(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final onSuggestionsUpdated(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController$1;->this$0:Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->-$$Nest$mseparateSuggestionInfoList(Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;Ljava/util/List;)V

    invoke-static {p0}, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->-$$Nest$mrefreshMenu(Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;)V

    return-void
.end method
