.class Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$5;
.super Ljava/lang/Object;
.source "LocaleDragAndDropAdapter.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->updateLocalesWhenAnimationStops(Landroid/os/LocaleList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)V
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$5;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationsFinished()V
    .locals 4

    .line 505
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$5;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->-$$Nest$fgetmLocalesToSetNext(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Landroid/os/LocaleList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$5;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->-$$Nest$fgetmLocalesToSetNext(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Landroid/os/LocaleList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$5;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {v1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->-$$Nest$fgetmLocalesSetLast(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$5;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->-$$Nest$fgetmLocaleOverlayManager(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;

    move-result-object v0

    const-string v1, "LocaleDragAndDropAdapter"

    if-eqz v0, :cond_1

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLocaleOverlayManager = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$5;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {v2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->-$$Nest$fgetmLocaleOverlayManager(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$5;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->-$$Nest$fgetmLocaleOverlayManager(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$5;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {v1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->-$$Nest$fgetmLocalesToSetNext(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$5$1;

    invoke-direct {v3, p0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$5$1;-><init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$5;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;->applyLocales(Landroid/os/LocaleList;ILcom/samsung/android/localeoverlaymanager/IOverlayChangeObserver;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 521
    :catch_0
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$5;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {p0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->-$$Nest$mupdateLocales(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)V

    goto :goto_0

    :cond_1
    const-string v0, "mLocaleOverlayManager was null"

    .line 524
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$5;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {p0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->-$$Nest$mupdateLocales(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)V

    :cond_2
    :goto_0
    return-void
.end method
