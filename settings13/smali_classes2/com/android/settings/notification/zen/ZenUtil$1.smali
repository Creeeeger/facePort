.class Lcom/android/settings/notification/zen/ZenUtil$1;
.super Ljava/lang/Object;
.source "ZenUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/zen/ZenUtil;->getSelectedContact(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/notification/app/AppNotificationTypeInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/notification/app/AppNotificationTypeInfo;Lcom/android/settings/notification/app/AppNotificationTypeInfo;)I
    .locals 0

    .line 82
    invoke-virtual {p1}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 79
    check-cast p1, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    check-cast p2, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/notification/zen/ZenUtil$1;->compare(Lcom/android/settings/notification/app/AppNotificationTypeInfo;Lcom/android/settings/notification/app/AppNotificationTypeInfo;)I

    move-result p0

    return p0
.end method
