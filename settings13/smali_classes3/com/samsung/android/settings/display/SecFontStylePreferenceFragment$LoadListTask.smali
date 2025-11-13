.class Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;
.super Landroid/os/AsyncTask;
.source "SecFontStylePreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)V
    .locals 0

    .line 586
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;-><init>(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 586
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 595
    invoke-static {}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->destroyInstance()V

    .line 597
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getInstanceFontListAdapter(Landroid/content/Context;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->-$$Nest$fputmFontListAdapter(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;Lcom/samsung/android/settings/flipfont/FontListAdapter;)V

    const/4 p1, 0x1

    .line 600
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->-$$Nest$fgetmFontListAdapter(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setInitDownloadFontAndThemeFont()V

    .line 602
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->-$$Nest$fgetmFontListAdapter(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setmIsFontPreviewActivity(Z)V

    .line 603
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->-$$Nest$fgetmFontListAdapter(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 606
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getFontNameFromSystem(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 607
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->-$$Nest$fgetmFontListAdapter(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 608
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "flip_font_style"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this is regarding debugging. it is not problem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecFontStylePreferenceFragment"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 586
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 619
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->-$$Nest$msetFontStyleList(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)V

    .line 620
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->-$$Nest$fputmIsRunLoadListTask(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;Z)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 590
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->-$$Nest$fputmIsRunLoadListTask(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;Z)V

    return-void
.end method
