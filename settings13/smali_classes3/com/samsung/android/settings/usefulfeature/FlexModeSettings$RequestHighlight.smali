.class Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$RequestHighlight;
.super Landroid/os/AsyncTask;
.source "FlexModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestHighlight"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;


# direct methods
.method public static synthetic $r8$lambda$JTTImVvS6F35LXbHA2vaoxCccpM(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$RequestHighlight;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$RequestHighlight;->lambda$onPostExecute$0(Ljava/lang/Integer;)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$RequestHighlight;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$RequestHighlight-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$RequestHighlight;-><init>(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)V

    return-void
.end method

.method private synthetic lambda$onPostExecute$0(Ljava/lang/Integer;)V
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$RequestHighlight;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->-$$Nest$fputmHighlightRequest(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;Z)V

    .line 487
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$RequestHighlight;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/apppickerview/widget/AppPickerView;->refreshUI(I)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2

    const/4 p1, 0x0

    .line 467
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$RequestHighlight;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 468
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$RequestHighlight;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/apppickerview/widget/AppPickerView;->getAppLabelInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$RequestHighlight;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->-$$Nest$fgetmHighlightKey(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$RequestHighlight;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v1

    .line 469
    invoke-virtual {v1, p1}, Landroidx/apppickerview/widget/AppPickerView;->getAppLabelInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    .line 473
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 458
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$RequestHighlight;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2

    .line 478
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 479
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$RequestHighlight;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->-$$Nest$fputmHighlightPosition(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;I)V

    .line 483
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$RequestHighlight;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 484
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$RequestHighlight;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 485
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$RequestHighlight;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$RequestHighlight$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$RequestHighlight$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$RequestHighlight;Ljava/lang/Integer;)V

    const-wide/16 p0, 0x2bc

    invoke-virtual {v0, v1, p0, p1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 458
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$RequestHighlight;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 461
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
