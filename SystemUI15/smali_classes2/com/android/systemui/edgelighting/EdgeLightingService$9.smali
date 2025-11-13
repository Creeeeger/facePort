.class public final Lcom/android/systemui/edgelighting/EdgeLightingService$9;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/EdgeLightingService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$9;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p1, "colortheme_app_icon"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$9;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-virtual {v0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, p1, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v3, :cond_1

    move p1, v3

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    iput-boolean p1, v0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mIsColorThemeEnabled:Z

    :cond_2
    const-string/jumbo p1, "show_notification_app_icon"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$9;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, p1, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v3, :cond_3

    move v2, v3

    :cond_3
    iput-boolean v2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mIsUsingAppIcon:Z

    :cond_4
    return-void
.end method
