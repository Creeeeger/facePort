.class public final Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;
.super Landroidx/core/app/NotificationCompat$Style;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Landroidx/core/app/NotificationCompatBuilder;)V
    .locals 0

    iget-object p0, p1, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle$Api24Impl;->createDecoratedCustomViewStyle()Landroid/app/Notification$Style;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    return-void
.end method

.method public final getClassName()Ljava/lang/String;
    .locals 0

    const-string p0, "androidx.core.app.NotificationCompat$DecoratedCustomViewStyle"

    return-object p0
.end method
