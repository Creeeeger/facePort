.class public final Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mClient:Lcom/samsung/android/multiwindow/IDragAndDropClient;

.field public final mDisplayId:I


# direct methods
.method private constructor <init>(Lcom/samsung/android/multiwindow/IDragAndDropClient;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;->mClient:Lcom/samsung/android/multiwindow/IDragAndDropClient;

    iput p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;->mDisplayId:I

    return-void
.end method

.method public static from(Landroid/content/ClipData;I)Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_2

    :cond_1
    :goto_0
    move-object p0, v0

    goto :goto_2

    :cond_2
    :try_start_0
    const-string v1, "com.samsung.android.intent.extra.DRAG_AND_DROP_CLIENT"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "DragAndDropClient"

    const-string v1, "Failed to getIBinderExtra. It\'s not drag from Edge"

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v0

    :goto_1
    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/samsung/android/multiwindow/IDragAndDropClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IDragAndDropClient;

    move-result-object p0

    :goto_2
    if-nez p0, :cond_4

    return-object v0

    :cond_4
    new-instance v0, Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;-><init>(Lcom/samsung/android/multiwindow/IDragAndDropClient;I)V

    return-object v0
.end method
