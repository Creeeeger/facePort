.class public Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;
.super Landroid/os/AsyncTask;
.source "ChooserListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadDirectShareIconTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mTargetInfo:Lcom/android/internal/app/chooser/SelectableTargetInfo;

.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserListAdapter;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/app/ChooserListAdapter;Lcom/android/internal/app/chooser/SelectableTargetInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;->this$0:Lcom/android/internal/app/ChooserListAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;->mTargetInfo:Lcom/android/internal/app/chooser/SelectableTargetInfo;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/app/ChooserListAdapter;Lcom/android/internal/app/chooser/SelectableTargetInfo;Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;-><init>(Lcom/android/internal/app/ChooserListAdapter;Lcom/android/internal/app/chooser/SelectableTargetInfo;)V

    return-void
.end method


# virtual methods
.method protected varargs blacklist doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;->mTargetInfo:Lcom/android/internal/app/chooser/SelectableTargetInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->loadIcon()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public blacklist loadIcon()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected blacklist onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;->this$0:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic whitelist onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
