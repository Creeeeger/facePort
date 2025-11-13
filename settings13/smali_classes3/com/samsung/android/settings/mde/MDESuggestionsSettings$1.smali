.class Lcom/samsung/android/settings/mde/MDESuggestionsSettings$1;
.super Ljava/lang/Object;
.source "MDESuggestionsSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/mde/MDEServiceBindingManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/mde/MDESuggestionsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/mde/MDESuggestionsSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/mde/MDESuggestionsSettings;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings$1;->this$0:Lcom/samsung/android/settings/mde/MDESuggestionsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestUpdated()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings$1;->this$0:Lcom/samsung/android/settings/mde/MDESuggestionsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->-$$Nest$fgetmMDEServiceBindingManager(Lcom/samsung/android/settings/mde/MDESuggestionsSettings;)Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings$1;->this$0:Lcom/samsung/android/settings/mde/MDESuggestionsSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->-$$Nest$fgetmMDEServiceBindingManager(Lcom/samsung/android/settings/mde/MDESuggestionsSettings;)Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->sendMessage(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onSuggestionsUpdated(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 82
    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings$1;->this$0:Lcom/samsung/android/settings/mde/MDESuggestionsSettings;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->-$$Nest$mupdateUI(Lcom/samsung/android/settings/mde/MDESuggestionsSettings;Ljava/util/List;)V

    return-void
.end method
