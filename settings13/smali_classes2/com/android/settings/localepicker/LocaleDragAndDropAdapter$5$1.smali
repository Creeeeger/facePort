.class Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$5$1;
.super Lcom/samsung/android/localeoverlaymanager/IOverlayChangeObserver$Stub;
.source "LocaleDragAndDropAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$5;->onAnimationsFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$5;


# direct methods
.method constructor <init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$5;)V
    .locals 0

    .line 513
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$5$1;->this$1:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$5;

    invoke-direct {p0}, Lcom/samsung/android/localeoverlaymanager/IOverlayChangeObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeCompleted(Z)V
    .locals 2

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onChangeCompleted mLocaleOverlayManager success= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocaleDragAndDropAdapter"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$5$1;->this$1:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$5;

    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$5;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {p0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->-$$Nest$mupdateLocales(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)V

    return-void
.end method
