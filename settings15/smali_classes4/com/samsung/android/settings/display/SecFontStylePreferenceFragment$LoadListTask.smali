.class public final Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, [Ljava/lang/Void;

    sget-object p1, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sput-object v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    iget-object v1, p1, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getInstanceFontListAdapter(Landroid/content/Context;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v1

    iput-object v1, p1, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    const/4 p1, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setInitDownloadFontAndThemeFont()V

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iput-boolean p1, v1, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsFontPreviewActivity:Z

    invoke-virtual {v1}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->loadTypefaces()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "this is regarding debugging. it is not problem: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SecFontStylePreferenceFragment"

    invoke-static {v2, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :goto_0
    return-object v0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    invoke-virtual {p1}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->setFontStyleList()V

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mIsRunLoadListTask:Z

    return-void
.end method

.method public final onPreExecute()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mIsRunLoadListTask:Z

    return-void
.end method
