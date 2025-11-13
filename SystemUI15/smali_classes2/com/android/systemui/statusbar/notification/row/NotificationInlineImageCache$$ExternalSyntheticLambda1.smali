.class public final synthetic Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageCache$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/BiConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/net/Uri;

    check-cast p2, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageCache$PreloadImageTask;

    invoke-virtual {p2}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object p0

    sget-object p1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method
