.class Lcom/android/settings/notification/zen/lifestyle/LifeStyleZenModeAppPickerPreferenceController$1;
.super Ljava/lang/Object;
.source "LifeStyleZenModeAppPickerPreferenceController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/zen/lifestyle/LifeStyleZenModeAppPickerPreferenceController;->updateEntry()Ljava/util/ArrayList;
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


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/zen/lifestyle/LifeStyleZenModeAppPickerPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/zen/lifestyle/LifeStyleZenModeAppPickerPreferenceController;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleZenModeAppPickerPreferenceController$1;->this$0:Lcom/android/settings/notification/zen/lifestyle/LifeStyleZenModeAppPickerPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/notification/app/AppNotificationTypeInfo;Lcom/android/settings/notification/app/AppNotificationTypeInfo;)I
    .locals 2

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, p0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move p0, v0

    :goto_1
    or-int/2addr p0, v1

    if-eqz p0, :cond_2

    return v0

    .line 72
    :cond_2
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

    .line 68
    check-cast p1, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    check-cast p2, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/notification/zen/lifestyle/LifeStyleZenModeAppPickerPreferenceController$1;->compare(Lcom/android/settings/notification/app/AppNotificationTypeInfo;Lcom/android/settings/notification/app/AppNotificationTypeInfo;)I

    move-result p0

    return p0
.end method
