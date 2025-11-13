.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationFullscreenDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f14035e

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationFullscreenDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->requestWindowFeature(I)Z

    return-void
.end method


# virtual methods
.method public final getHeight()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final getWidth()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method
