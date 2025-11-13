.class Landroid/widget/SearchView$6;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/SearchView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/SearchView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/SearchView;

    .line 1296
    iput-object p1, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 1301
    const-string v0, "com.sec.feature.folder_type"

    .line 1302
    .local v0, "SEM_FEATURE_FOLDER_TYPE":Ljava/lang/String;
    iget-object v1, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.folder_type"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 1303
    .local v1, "isFolderTypeFeature":Z
    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1304
    iget-object v3, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    .line 1305
    invoke-virtual {v3}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 1306
    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/16 v4, 0x17

    if-ne p2, v4, :cond_0

    .line 1307
    invoke-virtual {v3, p1}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 1308
    invoke-virtual {v3, p1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1313
    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    iget-object v3, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    invoke-static {v3}, Landroid/widget/SearchView;->-$$Nest$fgetmSearchable(Landroid/widget/SearchView;)Landroid/app/SearchableInfo;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 1314
    return v4

    .line 1324
    :cond_1
    iget-object v3, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    invoke-static {v3}, Landroid/widget/SearchView;->-$$Nest$fgetmSearchSrcTextView(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SearchView$SearchAutoComplete;->isPopupShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    invoke-static {v3}, Landroid/widget/SearchView;->-$$Nest$fgetmSearchSrcTextView(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v3

    .line 1325
    invoke-virtual {v3}, Landroid/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    .line 1326
    iget-object v2, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    invoke-static {v2, p1, p2, p3}, Landroid/widget/SearchView;->-$$Nest$monSuggestionsKey(Landroid/widget/SearchView;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    .line 1331
    :cond_2
    iget-object v3, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    invoke-static {v3}, Landroid/widget/SearchView;->-$$Nest$fgetmSearchSrcTextView(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v3

    invoke-static {v3}, Landroid/widget/SearchView$SearchAutoComplete;->-$$Nest$misEmpty(Landroid/widget/SearchView$SearchAutoComplete;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1332
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_4

    .line 1333
    const/16 v3, 0x42

    if-eq p2, v3, :cond_3

    const/16 v3, 0xa0

    if-ne p2, v3, :cond_4

    .line 1335
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    .line 1338
    iget-object v3, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    const/4 v5, 0x0

    invoke-static {v3}, Landroid/widget/SearchView;->-$$Nest$fgetmSearchSrcTextView(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v6

    .line 1339
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1338
    invoke-static {v3, v4, v5, v6}, Landroid/widget/SearchView;->-$$Nest$mlaunchQuerySearch(Landroid/widget/SearchView;ILjava/lang/String;Ljava/lang/String;)V

    .line 1340
    return v2

    .line 1343
    :cond_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_5

    .line 1344
    iget-object v3, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    invoke-static {v3}, Landroid/widget/SearchView;->-$$Nest$fgetmSearchable(Landroid/widget/SearchView;)Landroid/app/SearchableInfo;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/app/SearchableInfo;->findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;

    move-result-object v3

    .line 1345
    .local v3, "actionKey":Landroid/app/SearchableInfo$ActionKeyInfo;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 1346
    iget-object v4, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    invoke-static {v6}, Landroid/widget/SearchView;->-$$Nest$fgetmSearchSrcTextView(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v6

    .line 1347
    invoke-virtual {v6}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1346
    invoke-static {v4, p2, v5, v6}, Landroid/widget/SearchView;->-$$Nest$mlaunchQuerySearch(Landroid/widget/SearchView;ILjava/lang/String;Ljava/lang/String;)V

    .line 1348
    return v2

    .line 1352
    .end local v3    # "actionKey":Landroid/app/SearchableInfo$ActionKeyInfo;
    :cond_5
    return v4
.end method
