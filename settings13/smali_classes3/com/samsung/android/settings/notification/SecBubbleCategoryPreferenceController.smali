.class public Lcom/samsung/android/settings/notification/SecBubbleCategoryPreferenceController;
.super Lcom/android/settings/notification/app/NotificationPreferenceController;
.source "SecBubbleCategoryPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/app/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bubble_category"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 37
    invoke-super {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isFloatingIconBubble()Z

    move-result p0

    return p0
.end method
