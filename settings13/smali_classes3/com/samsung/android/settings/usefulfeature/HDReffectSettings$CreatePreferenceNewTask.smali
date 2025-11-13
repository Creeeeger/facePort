.class Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$CreatePreferenceNewTask;
.super Landroid/os/AsyncTask;
.source "HDReffectSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreatePreferenceNewTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Ljava/util/List<",
        "Landroidx/preference/SecSwitchPreference;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$CreatePreferenceNewTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$CreatePreferenceNewTask;-><init>(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 304
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$CreatePreferenceNewTask;->doInBackground([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Landroidx/preference/SecSwitchPreference;",
            ">;"
        }
    .end annotation

    .line 306
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-$$Nest$fgetmAppList(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 307
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    .line 308
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-$$Nest$fgetmAppList(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 310
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-$$Nest$mrefreshDisplayedItems(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-$$Nest$fputmAppList(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;Ljava/util/List;)V

    .line 311
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-$$Nest$fgetmAppList(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 304
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$CreatePreferenceNewTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/preference/SecSwitchPreference;",
            ">;)V"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-$$Nest$misFragmentVisible(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-$$Nest$msetAppListUp(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;Ljava/util/List;)V

    .line 317
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-$$Nest$fgetmProgressBar(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 318
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-$$Nest$fgetmProgressBar(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Landroid/widget/ProgressBar;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method
