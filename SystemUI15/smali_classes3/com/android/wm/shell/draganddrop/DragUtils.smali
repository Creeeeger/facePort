.class public final Lcom/android/wm/shell/draganddrop/DragUtils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLaunchIntent(Landroid/content/ClipData;I)Landroid/app/PendingIntent;
    .locals 3

    and-int/lit16 p1, p1, 0x2000

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-ge p1, v1, :cond_2

    invoke-virtual {p0, p1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v2, Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/IntentSender;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V

    invoke-virtual {v2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
