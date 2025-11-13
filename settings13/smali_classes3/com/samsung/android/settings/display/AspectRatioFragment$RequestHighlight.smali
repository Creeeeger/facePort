.class Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;
.super Landroid/os/AsyncTask;
.source "AspectRatioFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/AspectRatioFragment;
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
.field final synthetic this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;


# direct methods
.method public static synthetic $r8$lambda$QLeumQiTHOUEdTfESMw0pN42ARs(Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->lambda$onPostExecute$0(Ljava/lang/Integer;)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/settings/display/AspectRatioFragment;)V
    .locals 0

    .line 965
    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/display/AspectRatioFragment;Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;-><init>(Lcom/samsung/android/settings/display/AspectRatioFragment;)V

    return-void
.end method

.method private synthetic lambda$onPostExecute$0(Ljava/lang/Integer;)V
    .locals 2

    .line 994
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fputmHighlightRequest(Lcom/samsung/android/settings/display/AspectRatioFragment;Z)V

    .line 995
    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroidx/apppickerview/widget/AppPickerView;

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

    .line 973
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 974
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/apppickerview/widget/AppPickerView;->getAppLabelInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmHighlightKey(Lcom/samsung/android/settings/display/AspectRatioFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v1

    .line 975
    invoke-virtual {v1, p1}, Landroidx/apppickerview/widget/AppPickerView;->getAppLabelInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 976
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    .line 979
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 965
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2

    .line 984
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 985
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 988
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fputmHighlightPosition(Lcom/samsung/android/settings/display/AspectRatioFragment;I)V

    .line 989
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHighlightPosition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmHighlightPosition(Lcom/samsung/android/settings/display/AspectRatioFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AspectRatioFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 992
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 993
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;Ljava/lang/Integer;)V

    const-wide/16 p0, 0x258

    invoke-virtual {v0, v1, p0, p1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 965
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 968
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
